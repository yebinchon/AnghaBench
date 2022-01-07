; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_init_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_init_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_lpspi_data = type { %struct.device* }
%struct.device = type { i32 }

@FSL_LPSPI_RPM_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_lpspi_data*)* @fsl_lpspi_init_rpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_init_rpm(%struct.fsl_lpspi_data* %0) #0 {
  %2 = alloca %struct.fsl_lpspi_data*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.fsl_lpspi_data* %0, %struct.fsl_lpspi_data** %2, align 8
  %4 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %4, i32 0, i32 0
  %6 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @pm_runtime_enable(%struct.device* %7)
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load i32, i32* @FSL_LPSPI_RPM_TIMEOUT, align 4
  %11 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %9, i32 %10)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @pm_runtime_use_autosuspend(%struct.device* %12)
  ret i32 0
}

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
