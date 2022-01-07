; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_cmp_dpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_cmp_dpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_blk = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.nd_namespace_pmem = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_dpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_dpa(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.nd_namespace_blk*, align 8
  %9 = alloca %struct.nd_namespace_blk*, align 8
  %10 = alloca %struct.nd_namespace_pmem*, align 8
  %11 = alloca %struct.nd_namespace_pmem*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.device**
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.device**
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i64 @is_namespace_io(%struct.device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i64 @is_namespace_blk(%struct.device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %27)
  store %struct.nd_namespace_blk* %28, %struct.nd_namespace_blk** %8, align 8
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %29)
  store %struct.nd_namespace_blk* %30, %struct.nd_namespace_blk** %9, align 8
  %31 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %8, align 8
  %32 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %9, align 8
  %38 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @memcmp(i32* %36, i32* %42, i32 4)
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %22
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %45)
  store %struct.nd_namespace_pmem* %46, %struct.nd_namespace_pmem** %10, align 8
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %47)
  store %struct.nd_namespace_pmem* %48, %struct.nd_namespace_pmem** %11, align 8
  %49 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %10, align 8
  %50 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %11, align 8
  %54 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @memcmp(i32* %52, i32* %56, i32 4)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %44, %26, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @is_namespace_io(%struct.device*) #1

declare dso_local i64 @is_namespace_blk(%struct.device*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
