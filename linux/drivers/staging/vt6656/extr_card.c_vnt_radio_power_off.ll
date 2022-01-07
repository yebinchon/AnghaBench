; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_radio_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_radio_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@MAC_REG_SOFTPWRCTL = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE2 = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE3 = common dso_local global i32 0, align 4
@MAC_REG_HOSTCR = common dso_local global i32 0, align 4
@HOSTCR_RXON = common dso_local global i32 0, align 4
@MAC_REG_GPIOCTL1 = common dso_local global i32 0, align 4
@GPIO3_INTMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_radio_power_off(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %5 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %14 [
    i32 132, label %7
    i32 131, label %7
    i32 133, label %7
    i32 130, label %7
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1
  %8 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %9 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %10 = load i32, i32* @SOFTPWRCTL_SWPE2, align 4
  %11 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %8, i32 %9, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %1, %7
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %37

18:                                               ; preds = %14
  %19 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %20 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %21 = load i32, i32* @HOSTCR_RXON, align 4
  %22 = call i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %19, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %37

26:                                               ; preds = %18
  %27 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %28 = call i32 @vnt_set_deep_sleep(%struct.vnt_private* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %37

32:                                               ; preds = %26
  %33 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %34 = load i32, i32* @MAC_REG_GPIOCTL1, align 4
  %35 = load i32, i32* @GPIO3_INTMD, align 4
  %36 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %33, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %31, %25, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @vnt_mac_reg_bits_off(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_set_deep_sleep(%struct.vnt_private*) #1

declare dso_local i32 @vnt_mac_reg_bits_on(%struct.vnt_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
