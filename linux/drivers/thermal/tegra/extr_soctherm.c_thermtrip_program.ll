; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_thermtrip_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_thermtrip_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_tsensor_group = type { i32, i32, i32 }
%struct.tegra_soctherm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THERMCTL_THERMTRIP_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tegra_tsensor_group*, i32)* @thermtrip_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermtrip_program(%struct.device* %0, %struct.tegra_tsensor_group* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tegra_tsensor_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_soctherm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.tegra_tsensor_group* %1, %struct.tegra_tsensor_group** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.tegra_soctherm* @dev_get_drvdata(%struct.device* %11)
  store %struct.tegra_soctherm* %12, %struct.tegra_soctherm** %8, align 8
  %13 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %14 = icmp ne %struct.tegra_tsensor_group* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %17 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @enforce_temp_range(%struct.device* %24, i32 %25)
  %27 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  %28 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %26, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  %34 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @THERMCTL_THERMTRIP_CTL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %41 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @REG_SET_MASK(i32 %39, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %47 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @REG_SET_MASK(i32 %45, i32 %48, i32 1)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %52 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @REG_SET_MASK(i32 %50, i32 %53, i32 0)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  %57 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @THERMCTL_THERMTRIP_CTL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %23, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.tegra_soctherm* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @enforce_temp_range(%struct.device*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @REG_SET_MASK(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
