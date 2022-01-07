; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_request_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_request_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_request = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.raw3270_request* @raw3270_request_alloc(i64 %0) #0 {
  %2 = alloca %struct.raw3270_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.raw3270_request*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load i32, i32* @GFP_DMA, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.raw3270_request* @kzalloc(i32 24, i32 %7)
  store %struct.raw3270_request* %8, %struct.raw3270_request** %4, align 8
  %9 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %10 = icmp ne %struct.raw3270_request* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.raw3270_request* @ERR_PTR(i32 %13)
  store %struct.raw3270_request* %14, %struct.raw3270_request** %2, align 8
  br label %56

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* @GFP_DMA, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @kmalloc(i64 %19, i32 %22)
  %24 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %25 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %27 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %18
  %31 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %32 = call i32 @kfree(%struct.raw3270_request* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.raw3270_request* @ERR_PTR(i32 %34)
  store %struct.raw3270_request* %35, %struct.raw3270_request** %2, align 8
  br label %56

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %40 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %42 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %41, i32 0, i32 3
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %45 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @__pa(i32 %46)
  %48 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %49 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @CCW_FLAG_SLI, align 4
  %52 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %53 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  store %struct.raw3270_request* %55, %struct.raw3270_request** %2, align 8
  br label %56

56:                                               ; preds = %37, %30, %11
  %57 = load %struct.raw3270_request*, %struct.raw3270_request** %2, align 8
  ret %struct.raw3270_request* %57
}

declare dso_local %struct.raw3270_request* @kzalloc(i32, i32) #1

declare dso_local %struct.raw3270_request* @ERR_PTR(i32) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.raw3270_request*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__pa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
