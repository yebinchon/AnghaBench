; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_thermal_isr_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_thermal_isr_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_soctherm = type { i64, %struct.thermal_zone_device** }
%struct.thermal_zone_device = type { i32 }

@THERMCTL_INTR_STATUS = common dso_local global i64 0, align 8
@TH_INTR_CD0_MASK = common dso_local global i32 0, align 4
@TH_INTR_CU0_MASK = common dso_local global i32 0, align 4
@TH_INTR_GD0_MASK = common dso_local global i32 0, align 4
@TH_INTR_GU0_MASK = common dso_local global i32 0, align 4
@TH_INTR_PD0_MASK = common dso_local global i32 0, align 4
@TH_INTR_PU0_MASK = common dso_local global i32 0, align 4
@TH_INTR_MD0_MASK = common dso_local global i32 0, align 4
@TH_INTR_MU0_MASK = common dso_local global i32 0, align 4
@TEGRA124_SOCTHERM_SENSOR_CPU = common dso_local global i64 0, align 8
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@TEGRA124_SOCTHERM_SENSOR_GPU = common dso_local global i64 0, align 8
@TEGRA124_SOCTHERM_SENSOR_PLLX = common dso_local global i64 0, align 8
@TEGRA124_SOCTHERM_SENSOR_MEM = common dso_local global i64 0, align 8
@TH_INTR_IGNORE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"soctherm: Ignored unexpected INTRs 0x%08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @soctherm_thermal_isr_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_thermal_isr_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_soctherm*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.tegra_soctherm*
  store %struct.tegra_soctherm* %14, %struct.tegra_soctherm** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @THERMCTL_INTR_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TH_INTR_CD0_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TH_INTR_CU0_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @TH_INTR_GD0_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TH_INTR_GU0_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @TH_INTR_PD0_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @TH_INTR_PU0_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @TH_INTR_MD0_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @TH_INTR_MU0_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %12, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %136

72:                                               ; preds = %2
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %75 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @THERMCTL_INTR_STATUS, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load i32, i32* %8, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %72
  %87 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %88 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %87, i32 0, i32 1
  %89 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %88, align 8
  %90 = load i64, i64* @TEGRA124_SOCTHERM_SENSOR_CPU, align 8
  %91 = getelementptr inbounds %struct.thermal_zone_device*, %struct.thermal_zone_device** %89, i64 %90
  %92 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %91, align 8
  store %struct.thermal_zone_device* %92, %struct.thermal_zone_device** %6, align 8
  %93 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %94 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %95 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %72
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %101 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %100, i32 0, i32 1
  %102 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %101, align 8
  %103 = load i64, i64* @TEGRA124_SOCTHERM_SENSOR_GPU, align 8
  %104 = getelementptr inbounds %struct.thermal_zone_device*, %struct.thermal_zone_device** %102, i64 %103
  %105 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %104, align 8
  store %struct.thermal_zone_device* %105, %struct.thermal_zone_device** %6, align 8
  %106 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %107 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %108 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %106, i32 %107)
  br label %109

109:                                              ; preds = %99, %96
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %114 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %113, i32 0, i32 1
  %115 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %114, align 8
  %116 = load i64, i64* @TEGRA124_SOCTHERM_SENSOR_PLLX, align 8
  %117 = getelementptr inbounds %struct.thermal_zone_device*, %struct.thermal_zone_device** %115, i64 %116
  %118 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %117, align 8
  store %struct.thermal_zone_device* %118, %struct.thermal_zone_device** %6, align 8
  %119 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %120 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %121 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %119, i32 %120)
  br label %122

122:                                              ; preds = %112, %109
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %127 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %126, i32 0, i32 1
  %128 = load %struct.thermal_zone_device**, %struct.thermal_zone_device*** %127, align 8
  %129 = load i64, i64* @TEGRA124_SOCTHERM_SENSOR_MEM, align 8
  %130 = getelementptr inbounds %struct.thermal_zone_device*, %struct.thermal_zone_device** %128, i64 %129
  %131 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %130, align 8
  store %struct.thermal_zone_device* %131, %struct.thermal_zone_device** %6, align 8
  %132 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %133 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %134 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %132, i32 %133)
  br label %135

135:                                              ; preds = %125, %122
  br label %136

136:                                              ; preds = %135, %2
  %137 = load i32, i32* @TH_INTR_IGNORE_MASK, align 4
  %138 = load i32, i32* %8, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %136
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %151 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @THERMCTL_INTR_STATUS, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  br label %156

156:                                              ; preds = %146, %136
  %157 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %157
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
