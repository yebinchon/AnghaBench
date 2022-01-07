; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_register_dev_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_ops.c_vfio_ccw_register_dev_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_ccw_private = type { i32, %struct.vfio_ccw_region* }
%struct.vfio_ccw_region = type { i32, i64, i8*, i32, %struct.vfio_ccw_regops*, i32 }
%struct.vfio_ccw_regops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFIO_REGION_TYPE_CCW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_ccw_register_dev_region(%struct.vfio_ccw_private* %0, i32 %1, %struct.vfio_ccw_regops* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_ccw_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfio_ccw_regops*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.vfio_ccw_region*, align 8
  store %struct.vfio_ccw_private* %0, %struct.vfio_ccw_private** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.vfio_ccw_regops* %2, %struct.vfio_ccw_regops** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %16 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %15, i32 0, i32 1
  %17 = load %struct.vfio_ccw_region*, %struct.vfio_ccw_region** %16, align 8
  %18 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %19 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 48
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.vfio_ccw_region* @krealloc(%struct.vfio_ccw_region* %17, i32 %24, i32 %25)
  store %struct.vfio_ccw_region* %26, %struct.vfio_ccw_region** %14, align 8
  %27 = load %struct.vfio_ccw_region*, %struct.vfio_ccw_region** %14, align 8
  %28 = icmp ne %struct.vfio_ccw_region* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %100

32:                                               ; preds = %6
  %33 = load %struct.vfio_ccw_region*, %struct.vfio_ccw_region** %14, align 8
  %34 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %35 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %34, i32 0, i32 1
  store %struct.vfio_ccw_region* %33, %struct.vfio_ccw_region** %35, align 8
  %36 = load i32, i32* @VFIO_REGION_TYPE_CCW, align 4
  %37 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %38 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %37, i32 0, i32 1
  %39 = load %struct.vfio_ccw_region*, %struct.vfio_ccw_region** %38, align 8
  %40 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %41 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %39, i64 %43
  %45 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %44, i32 0, i32 5
  store i32 %36, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %48 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %47, i32 0, i32 1
  %49 = load %struct.vfio_ccw_region*, %struct.vfio_ccw_region** %48, align 8
  %50 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %51 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %49, i64 %53
  %55 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %54, i32 0, i32 0
  store i32 %46, i32* %55, align 8
  %56 = load %struct.vfio_ccw_regops*, %struct.vfio_ccw_regops** %10, align 8
  %57 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %58 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %57, i32 0, i32 1
  %59 = load %struct.vfio_ccw_region*, %struct.vfio_ccw_region** %58, align 8
  %60 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %61 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %59, i64 %63
  %65 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %64, i32 0, i32 4
  store %struct.vfio_ccw_regops* %56, %struct.vfio_ccw_regops** %65, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %68 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %67, i32 0, i32 1
  %69 = load %struct.vfio_ccw_region*, %struct.vfio_ccw_region** %68, align 8
  %70 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %71 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %69, i64 %73
  %75 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %74, i32 0, i32 1
  store i64 %66, i64* %75, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %78 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %77, i32 0, i32 1
  %79 = load %struct.vfio_ccw_region*, %struct.vfio_ccw_region** %78, align 8
  %80 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %81 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %79, i64 %83
  %85 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %84, i32 0, i32 3
  store i32 %76, i32* %85, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %88 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %87, i32 0, i32 1
  %89 = load %struct.vfio_ccw_region*, %struct.vfio_ccw_region** %88, align 8
  %90 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %91 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %89, i64 %93
  %95 = getelementptr inbounds %struct.vfio_ccw_region, %struct.vfio_ccw_region* %94, i32 0, i32 2
  store i8* %86, i8** %95, align 8
  %96 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %8, align 8
  %97 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %32, %29
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local %struct.vfio_ccw_region* @krealloc(%struct.vfio_ccw_region*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
