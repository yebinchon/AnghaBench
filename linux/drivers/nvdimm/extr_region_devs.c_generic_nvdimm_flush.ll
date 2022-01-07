; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_generic_nvdimm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_generic_nvdimm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.nd_region = type { i32, i32 }
%struct.nd_region_data = type { i32 }

@flush_idx = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_nvdimm_flush(%struct.nd_region* %0) #0 {
  %2 = alloca %struct.nd_region*, align 8
  %3 = alloca %struct.nd_region_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nd_region* %0, %struct.nd_region** %2, align 8
  %6 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %7 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %6, i32 0, i32 1
  %8 = call %struct.nd_region_data* @dev_get_drvdata(i32* %7)
  store %struct.nd_region_data* %8, %struct.nd_region_data** %3, align 8
  %9 = load i32, i32* @flush_idx, align 4
  %10 = call i32 @this_cpu_read(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @flush_idx, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @hash_32(i64 %17, i32 8)
  %19 = call i32 @this_cpu_add_return(i32 %11, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = call i32 (...) @wmb()
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %39, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.nd_region*, %struct.nd_region** %2, align 8
  %24 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.nd_region_data*, %struct.nd_region_data** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @ndrd_get_flush_wpq(%struct.nd_region_data* %28, i32 %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.nd_region_data*, %struct.nd_region_data** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @ndrd_get_flush_wpq(%struct.nd_region_data* %33, i32 %34, i32 %35)
  %37 = call i32 @writeq(i32 1, i64 %36)
  br label %38

38:                                               ; preds = %32, %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %21

42:                                               ; preds = %21
  %43 = call i32 (...) @wmb()
  ret i32 0
}

declare dso_local %struct.nd_region_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @this_cpu_add_return(i32, i32) #1

declare dso_local i32 @hash_32(i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @ndrd_get_flush_wpq(%struct.nd_region_data*, i32, i32) #1

declare dso_local i32 @writeq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
