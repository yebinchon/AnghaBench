; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_dove_thermal.c_dove_init_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_dove_thermal.c_dove_init_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dove_thermal_priv = type { i32, i32 }

@PMU_TDC0_AVG_NUM_MASK = common dso_local global i32 0, align 4
@PMU_TDC0_AVG_NUM_OFFS = common dso_local global i32 0, align 4
@PMU_TDC0_REF_CAL_CNT_MASK = common dso_local global i32 0, align 4
@PMU_TDC0_REF_CAL_CNT_OFFS = common dso_local global i32 0, align 4
@PMU_TDC0_SEL_VCAL_MASK = common dso_local global i32 0, align 4
@PMU_TDC0_SEL_VCAL_OFFS = common dso_local global i32 0, align 4
@PMU_TDC0_SW_RST_MASK = common dso_local global i32 0, align 4
@PMU_TM_DISABLE_MASK = common dso_local global i32 0, align 4
@DOVE_THERMAL_TEMP_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dove_thermal_priv*)* @dove_init_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dove_init_sensor(%struct.dove_thermal_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dove_thermal_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dove_thermal_priv* %0, %struct.dove_thermal_priv** %3, align 8
  %6 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %3, align 8
  %7 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @readl_relaxed(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @PMU_TDC0_AVG_NUM_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @PMU_TDC0_AVG_NUM_OFFS, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @PMU_TDC0_REF_CAL_CNT_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @PMU_TDC0_REF_CAL_CNT_OFFS, align 4
  %23 = shl i32 241, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @PMU_TDC0_SEL_VCAL_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @PMU_TDC0_SEL_VCAL_OFFS, align 4
  %31 = shl i32 2, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %3, align 8
  %36 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @writel(i32 %34, i32 %37)
  %39 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %3, align 8
  %40 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @readl_relaxed(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PMU_TDC0_SW_RST_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %3, align 8
  %47 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @writel(i32 %45, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %3, align 8
  %52 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @writel(i32 %50, i32 %53)
  %55 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %3, align 8
  %56 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @readl_relaxed(i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @PMU_TM_DISABLE_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %3, align 8
  %65 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @writel(i32 %63, i32 %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %82, %1
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 1000000
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %3, align 8
  %73 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @readl_relaxed(i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @DOVE_THERMAL_TEMP_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %85

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %68

85:                                               ; preds = %80, %68
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 1000000
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %88
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
