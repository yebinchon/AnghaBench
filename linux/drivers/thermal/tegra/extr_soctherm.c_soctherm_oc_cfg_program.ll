; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_oc_cfg_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_oc_cfg_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_soctherm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.soctherm_oc_cfg }
%struct.soctherm_oc_cfg = type { i32, i32, i32, i64, i64, i64 }

@OC_THROTTLE_MODE_DISABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OC1_CFG_HW_RESTORE_MASK = common dso_local global i32 0, align 4
@OC1_CFG_THROTTLE_MODE_MASK = common dso_local global i32 0, align 4
@OC1_CFG_ALARM_POLARITY_MASK = common dso_local global i32 0, align 4
@OC1_CFG_EN_THROTTLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_soctherm*, i32)* @soctherm_oc_cfg_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_oc_cfg_program(%struct.tegra_soctherm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_soctherm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.soctherm_oc_cfg*, align 8
  store %struct.tegra_soctherm* %0, %struct.tegra_soctherm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.soctherm_oc_cfg* %14, %struct.soctherm_oc_cfg** %7, align 8
  %15 = load %struct.soctherm_oc_cfg*, %struct.soctherm_oc_cfg** %7, align 8
  %16 = getelementptr inbounds %struct.soctherm_oc_cfg, %struct.soctherm_oc_cfg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @OC_THROTTLE_MODE_DISABLED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %85

23:                                               ; preds = %2
  %24 = load i32, i32* @OC1_CFG_HW_RESTORE_MASK, align 4
  %25 = call i64 @REG_SET_MASK(i64 0, i32 %24, i32 1)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @OC1_CFG_THROTTLE_MODE_MASK, align 4
  %28 = load %struct.soctherm_oc_cfg*, %struct.soctherm_oc_cfg** %7, align 8
  %29 = getelementptr inbounds %struct.soctherm_oc_cfg, %struct.soctherm_oc_cfg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @REG_SET_MASK(i64 %26, i32 %27, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @OC1_CFG_ALARM_POLARITY_MASK, align 4
  %34 = load %struct.soctherm_oc_cfg*, %struct.soctherm_oc_cfg** %7, align 8
  %35 = getelementptr inbounds %struct.soctherm_oc_cfg, %struct.soctherm_oc_cfg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @REG_SET_MASK(i64 %32, i32 %33, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @OC1_CFG_EN_THROTTLE_MASK, align 4
  %40 = call i64 @REG_SET_MASK(i64 %38, i32 %39, i32 1)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @ALARM_CFG(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = call i32 @writel(i64 %41, i64 %47)
  %49 = load %struct.soctherm_oc_cfg*, %struct.soctherm_oc_cfg** %7, align 8
  %50 = getelementptr inbounds %struct.soctherm_oc_cfg, %struct.soctherm_oc_cfg* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @ALARM_THROTTLE_PERIOD(i32 %55)
  %57 = add nsw i64 %54, %56
  %58 = call i32 @writel(i64 %51, i64 %57)
  %59 = load %struct.soctherm_oc_cfg*, %struct.soctherm_oc_cfg** %7, align 8
  %60 = getelementptr inbounds %struct.soctherm_oc_cfg, %struct.soctherm_oc_cfg* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %63 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @ALARM_CNT_THRESHOLD(i32 %65)
  %67 = add nsw i64 %64, %66
  %68 = call i32 @writel(i64 %61, i64 %67)
  %69 = load %struct.soctherm_oc_cfg*, %struct.soctherm_oc_cfg** %7, align 8
  %70 = getelementptr inbounds %struct.soctherm_oc_cfg, %struct.soctherm_oc_cfg* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %73 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @ALARM_FILTER(i32 %75)
  %77 = add nsw i64 %74, %76
  %78 = call i32 @writel(i64 %71, i64 %77)
  %79 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.soctherm_oc_cfg*, %struct.soctherm_oc_cfg** %7, align 8
  %82 = getelementptr inbounds %struct.soctherm_oc_cfg, %struct.soctherm_oc_cfg* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @soctherm_oc_intr_enable(%struct.tegra_soctherm* %79, i32 %80, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %23, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @REG_SET_MASK(i64, i32, i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @ALARM_CFG(i32) #1

declare dso_local i64 @ALARM_THROTTLE_PERIOD(i32) #1

declare dso_local i64 @ALARM_CNT_THRESHOLD(i32) #1

declare dso_local i64 @ALARM_FILTER(i32) #1

declare dso_local i32 @soctherm_oc_intr_enable(%struct.tegra_soctherm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
