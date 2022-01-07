; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_radio_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_radio_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@MAC_REG_HOSTCR = common dso_local global i32 0, align 4
@HOSTCR_RXON = common dso_local global i32 0, align 4
@MAC_REG_SOFTPWRCTL = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE2 = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE3 = common dso_local global i32 0, align 4
@MAC_REG_GPIOCTL1 = common dso_local global i32 0, align 4
@GPIO3_INTMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_radio_power_on(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %5 = call i32 @vnt_exit_deep_sleep(%struct.vnt_private* %4)
  %6 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %7 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %8 = load i32, i32* @HOSTCR_RXON, align 4
  %9 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %6, i32 %7, i32 %8)
  %10 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %11 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %20 [
    i32 132, label %13
    i32 131, label %13
    i32 133, label %13
    i32 130, label %13
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %1, %1, %1, %1, %1, %1
  %14 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %15 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %16 = load i32, i32* @SOFTPWRCTL_SWPE2, align 4
  %17 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %14, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %1, %13
  %21 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %22 = load i32, i32* @MAC_REG_GPIOCTL1, align 4
  %23 = load i32, i32* @GPIO3_INTMD, align 4
  %24 = call i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @vnt_exit_deep_sleep(%struct.vnt_private*) #1

declare dso_local i32 @vnt_mac_reg_bits_on(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_mac_reg_bits_off(%struct.vnt_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
