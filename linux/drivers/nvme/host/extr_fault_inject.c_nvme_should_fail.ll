; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fault_inject.c_nvme_should_fail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fault_inject.c_nvme_should_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.gendisk* }
%struct.gendisk = type { %struct.nvme_ns* }
%struct.nvme_ns = type { %struct.nvme_fault_inject }
%struct.nvme_fault_inject = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvme_fault_inject }

@.str = private unnamed_addr constant [32 x i8] c"No namespace found for request\0A\00", align 1
@NVME_SC_DNR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_should_fail(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.nvme_fault_inject*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_ns*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 0
  %9 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  store %struct.gendisk* %9, %struct.gendisk** %3, align 8
  store %struct.nvme_fault_inject* null, %struct.nvme_fault_inject** %4, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %11 = icmp ne %struct.gendisk* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %14 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %13, i32 0, i32 0
  %15 = load %struct.nvme_ns*, %struct.nvme_ns** %14, align 8
  store %struct.nvme_ns* %15, %struct.nvme_ns** %6, align 8
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %17 = icmp ne %struct.nvme_ns* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %20 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %19, i32 0, i32 0
  store %struct.nvme_fault_inject* %20, %struct.nvme_fault_inject** %4, align 8
  br label %23

21:                                               ; preds = %12
  %22 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.request*, %struct.request** %2, align 8
  %26 = call %struct.TYPE_4__* @nvme_req(%struct.request* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.nvme_fault_inject* %29, %struct.nvme_fault_inject** %4, align 8
  br label %30

30:                                               ; preds = %24, %23
  %31 = load %struct.nvme_fault_inject*, %struct.nvme_fault_inject** %4, align 8
  %32 = icmp ne %struct.nvme_fault_inject* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.nvme_fault_inject*, %struct.nvme_fault_inject** %4, align 8
  %35 = getelementptr inbounds %struct.nvme_fault_inject, %struct.nvme_fault_inject* %34, i32 0, i32 2
  %36 = call i64 @should_fail(i32* %35, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.nvme_fault_inject*, %struct.nvme_fault_inject** %4, align 8
  %40 = getelementptr inbounds %struct.nvme_fault_inject, %struct.nvme_fault_inject* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %5, align 4
  %42 = load %struct.nvme_fault_inject*, %struct.nvme_fault_inject** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_fault_inject, %struct.nvme_fault_inject* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @NVME_SC_DNR, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.request*, %struct.request** %2, align 8
  %53 = call %struct.TYPE_4__* @nvme_req(%struct.request* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  br label %55

55:                                               ; preds = %50, %33, %30
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @nvme_req(%struct.request*) #1

declare dso_local i64 @should_fail(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
