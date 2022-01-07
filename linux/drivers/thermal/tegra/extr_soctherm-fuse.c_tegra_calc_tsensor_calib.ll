; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm-fuse.c_tegra_calc_tsensor_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm-fuse.c_tegra_calc_tsensor_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_tsensor = type { i64, i64, %struct.TYPE_2__*, i32, %struct.tegra_tsensor_group* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.tegra_tsensor_group = type { i64, i64 }
%struct.tsensor_shared_calib = type { i32, i32, i64, i64 }

@FUSE_TSENSOR_CALIB_FT_TS_BASE_MASK = common dso_local global i32 0, align 4
@FUSE_TSENSOR_CALIB_FT_TS_BASE_SHIFT = common dso_local global i32 0, align 4
@CALIB_COEFFICIENT = common dso_local global i64 0, align 8
@SENSOR_CONFIG2_THERMA_SHIFT = common dso_local global i32 0, align 4
@SENSOR_CONFIG2_THERMB_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_calc_tsensor_calib(%struct.tegra_tsensor* %0, %struct.tsensor_shared_calib* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_tsensor*, align 8
  %6 = alloca %struct.tsensor_shared_calib*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tegra_tsensor_group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.tegra_tsensor* %0, %struct.tegra_tsensor** %5, align 8
  store %struct.tsensor_shared_calib* %1, %struct.tsensor_shared_calib** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load %struct.tegra_tsensor*, %struct.tegra_tsensor** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_tsensor, %struct.tegra_tsensor* %21, i32 0, i32 4
  %23 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %22, align 8
  store %struct.tegra_tsensor_group* %23, %struct.tegra_tsensor_group** %8, align 8
  %24 = load %struct.tegra_tsensor*, %struct.tegra_tsensor** %5, align 8
  %25 = getelementptr inbounds %struct.tegra_tsensor, %struct.tegra_tsensor* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @tegra_fuse_readl(i32 %26, i32* %9)
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %20, align 4
  store i32 %31, i32* %4, align 4
  br label %136

32:                                               ; preds = %3
  %33 = load %struct.tsensor_shared_calib*, %struct.tsensor_shared_calib** %6, align 8
  %34 = getelementptr inbounds %struct.tsensor_shared_calib, %struct.tsensor_shared_calib* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 64
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @sign_extend32(i32 %38, i32 12)
  %40 = add nsw i64 %37, %39
  store i64 %40, i64* %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @FUSE_TSENSOR_CALIB_FT_TS_BASE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @FUSE_TSENSOR_CALIB_FT_TS_BASE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.tsensor_shared_calib*, %struct.tsensor_shared_calib** %6, align 8
  %47 = getelementptr inbounds %struct.tsensor_shared_calib, %struct.tsensor_shared_calib* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 32
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @sign_extend32(i32 %51, i32 12)
  %53 = add nsw i64 %50, %52
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %13, align 8
  %57 = load %struct.tsensor_shared_calib*, %struct.tsensor_shared_calib** %6, align 8
  %58 = getelementptr inbounds %struct.tsensor_shared_calib, %struct.tsensor_shared_calib* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.tsensor_shared_calib*, %struct.tsensor_shared_calib** %6, align 8
  %61 = getelementptr inbounds %struct.tsensor_shared_calib, %struct.tsensor_shared_calib* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  store i64 %63, i64* %14, align 8
  %64 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %8, align 8
  %65 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.tegra_tsensor*, %struct.tegra_tsensor** %5, align 8
  %68 = getelementptr inbounds %struct.tegra_tsensor, %struct.tegra_tsensor* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = mul nsw i64 %66, %71
  store i64 %72, i64* %15, align 8
  %73 = load %struct.tegra_tsensor*, %struct.tegra_tsensor** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_tsensor, %struct.tegra_tsensor* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %8, align 8
  %79 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = mul nsw i64 %77, %80
  store i64 %81, i64* %16, align 8
  %82 = load i64, i64* %14, align 8
  %83 = mul nsw i64 %82, 8192
  %84 = load i64, i64* %15, align 8
  %85 = mul nsw i64 %83, %84
  store i64 %85, i64* %19, align 8
  %86 = load i64, i64* %19, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %16, align 8
  %89 = mul nsw i64 %87, %88
  %90 = call i64 @div64_s64_precise(i64 %86, i64 %89)
  store i64 %90, i64* %17, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.tsensor_shared_calib*, %struct.tsensor_shared_calib** %6, align 8
  %93 = getelementptr inbounds %struct.tsensor_shared_calib, %struct.tsensor_shared_calib* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = mul nsw i64 %91, %94
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.tsensor_shared_calib*, %struct.tsensor_shared_calib** %6, align 8
  %98 = getelementptr inbounds %struct.tsensor_shared_calib, %struct.tsensor_shared_calib* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = mul nsw i64 %96, %99
  %101 = sub nsw i64 %95, %100
  store i64 %101, i64* %19, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i64 @div64_s64_precise(i64 %102, i64 %103)
  store i64 %104, i64* %18, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load %struct.tegra_tsensor*, %struct.tegra_tsensor** %5, align 8
  %107 = getelementptr inbounds %struct.tegra_tsensor, %struct.tegra_tsensor* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = mul nsw i64 %105, %108
  store i64 %109, i64* %19, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* @CALIB_COEFFICIENT, align 8
  %112 = call i64 @div64_s64_precise(i64 %110, i64 %111)
  store i64 %112, i64* %17, align 8
  %113 = load i64, i64* %18, align 8
  %114 = load %struct.tegra_tsensor*, %struct.tegra_tsensor** %5, align 8
  %115 = getelementptr inbounds %struct.tegra_tsensor, %struct.tegra_tsensor* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = mul nsw i64 %113, %116
  %118 = load %struct.tegra_tsensor*, %struct.tegra_tsensor** %5, align 8
  %119 = getelementptr inbounds %struct.tegra_tsensor, %struct.tegra_tsensor* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  store i64 %121, i64* %19, align 8
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* @CALIB_COEFFICIENT, align 8
  %124 = call i64 @div64_s64_precise(i64 %122, i64 %123)
  store i64 %124, i64* %18, align 8
  %125 = load i64, i64* %17, align 8
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* @SENSOR_CONFIG2_THERMA_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i64, i64* %18, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* @SENSOR_CONFIG2_THERMB_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = or i32 %128, %132
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32*, i32** %7, align 8
  store i32 %134, i32* %135, align 4
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %32, %30
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @tegra_fuse_readl(i32, i32*) #1

declare dso_local i64 @sign_extend32(i32, i32) #1

declare dso_local i64 @div64_s64_precise(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
