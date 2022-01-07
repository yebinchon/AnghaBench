; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm-fuse.c_tegra_calc_shared_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm-fuse.c_tegra_calc_shared_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_soctherm_fuse = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.tsensor_shared_calib = type { i32, i32, i32, i32 }

@FUSE_TSENSOR_COMMON = common dso_local global i64 0, align 8
@NOMINAL_CALIB_CP = common dso_local global i32 0, align 4
@NOMINAL_CALIB_FT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_calc_shared_calib(%struct.tegra_soctherm_fuse* %0, %struct.tsensor_shared_calib* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_soctherm_fuse*, align 8
  %5 = alloca %struct.tsensor_shared_calib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_soctherm_fuse* %0, %struct.tegra_soctherm_fuse** %4, align 8
  store %struct.tsensor_shared_calib* %1, %struct.tsensor_shared_calib** %5, align 8
  %10 = load i64, i64* @FUSE_TSENSOR_COMMON, align 8
  %11 = call i32 @tegra_fuse_readl(i64 %10, i32* %6)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %79

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.tegra_soctherm_fuse*, %struct.tegra_soctherm_fuse** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_soctherm_fuse, %struct.tegra_soctherm_fuse* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  %22 = load %struct.tegra_soctherm_fuse*, %struct.tegra_soctherm_fuse** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_soctherm_fuse, %struct.tegra_soctherm_fuse* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %21, %24
  %26 = load %struct.tsensor_shared_calib*, %struct.tsensor_shared_calib** %5, align 8
  %27 = getelementptr inbounds %struct.tsensor_shared_calib, %struct.tsensor_shared_calib* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.tegra_soctherm_fuse*, %struct.tegra_soctherm_fuse** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_soctherm_fuse, %struct.tegra_soctherm_fuse* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  %33 = load %struct.tegra_soctherm_fuse*, %struct.tegra_soctherm_fuse** %4, align 8
  %34 = getelementptr inbounds %struct.tegra_soctherm_fuse, %struct.tegra_soctherm_fuse* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %32, %35
  %37 = load %struct.tsensor_shared_calib*, %struct.tsensor_shared_calib** %5, align 8
  %38 = getelementptr inbounds %struct.tsensor_shared_calib, %struct.tsensor_shared_calib* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.tegra_soctherm_fuse*, %struct.tegra_soctherm_fuse** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_soctherm_fuse, %struct.tegra_soctherm_fuse* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %39, %42
  %44 = load %struct.tegra_soctherm_fuse*, %struct.tegra_soctherm_fuse** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_soctherm_fuse, %struct.tegra_soctherm_fuse* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %43, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @sign_extend32(i32 %48, i32 4)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.tegra_soctherm_fuse*, %struct.tegra_soctherm_fuse** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_soctherm_fuse, %struct.tegra_soctherm_fuse* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %16
  %55 = load %struct.tegra_soctherm_fuse*, %struct.tegra_soctherm_fuse** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_soctherm_fuse, %struct.tegra_soctherm_fuse* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @tegra_fuse_readl(i64 %57, i32* %6)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %79

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %16
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @sign_extend32(i32 %65, i32 5)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @NOMINAL_CALIB_CP, align 4
  %68 = mul nsw i32 2, %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %68, %69
  %71 = load %struct.tsensor_shared_calib*, %struct.tsensor_shared_calib** %5, align 8
  %72 = getelementptr inbounds %struct.tsensor_shared_calib, %struct.tsensor_shared_calib* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @NOMINAL_CALIB_FT, align 4
  %74 = mul nsw i32 2, %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  %77 = load %struct.tsensor_shared_calib*, %struct.tsensor_shared_calib** %5, align 8
  %78 = getelementptr inbounds %struct.tsensor_shared_calib, %struct.tsensor_shared_calib* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %64, %61, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @tegra_fuse_readl(i64, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
