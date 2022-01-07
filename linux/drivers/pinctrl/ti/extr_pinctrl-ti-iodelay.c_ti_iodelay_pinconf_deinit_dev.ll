; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_pinconf_deinit_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_pinconf_deinit_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_iodelay_device = type { i32, %struct.ti_iodelay_reg_data* }
%struct.ti_iodelay_reg_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_iodelay_device*)* @ti_iodelay_pinconf_deinit_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_iodelay_pinconf_deinit_dev(%struct.ti_iodelay_device* %0) #0 {
  %2 = alloca %struct.ti_iodelay_device*, align 8
  %3 = alloca %struct.ti_iodelay_reg_data*, align 8
  store %struct.ti_iodelay_device* %0, %struct.ti_iodelay_device** %2, align 8
  %4 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %2, align 8
  %5 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %4, i32 0, i32 1
  %6 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %5, align 8
  store %struct.ti_iodelay_reg_data* %6, %struct.ti_iodelay_reg_data** %3, align 8
  %7 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %2, align 8
  %8 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %3, align 8
  %11 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %3, align 8
  %14 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %3, align 8
  %17 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_update_bits(i32 %9, i32 %12, i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
