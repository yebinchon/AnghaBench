; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-omap.c_omap_ohci_transceiver_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-omap.c_omap_ohci_transceiver_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INNOVATOR_FPGA_CAM_USB_CONTROL = common dso_local global i32 0, align 4
@GPIO1 = common dso_local global i32 0, align 4
@LOW = common dso_local global i32 0, align 4
@HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @omap_ohci_transceiver_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_ohci_transceiver_power(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = call i64 (...) @machine_is_omap_innovator()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = call i64 (...) @cpu_is_omap1510()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* @INNOVATOR_FPGA_CAM_USB_CONTROL, align 4
  %13 = call i32 @__raw_readb(i32 %12)
  %14 = or i32 %13, 40
  %15 = load i32, i32* @INNOVATOR_FPGA_CAM_USB_CONTROL, align 4
  %16 = call i32 @__raw_writeb(i32 %14, i32 %15)
  br label %25

17:                                               ; preds = %8, %5
  %18 = call i64 (...) @machine_is_omap_osk()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @GPIO1, align 4
  %22 = load i32, i32* @LOW, align 4
  %23 = call i32 @tps65010_set_gpio_out_value(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  br label %25

25:                                               ; preds = %24, %11
  br label %47

26:                                               ; preds = %1
  %27 = call i64 (...) @machine_is_omap_innovator()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = call i64 (...) @cpu_is_omap1510()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @INNOVATOR_FPGA_CAM_USB_CONTROL, align 4
  %34 = call i32 @__raw_readb(i32 %33)
  %35 = and i32 %34, -41
  %36 = load i32, i32* @INNOVATOR_FPGA_CAM_USB_CONTROL, align 4
  %37 = call i32 @__raw_writeb(i32 %35, i32 %36)
  br label %46

38:                                               ; preds = %29, %26
  %39 = call i64 (...) @machine_is_omap_osk()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @GPIO1, align 4
  %43 = load i32, i32* @HIGH, align 4
  %44 = call i32 @tps65010_set_gpio_out_value(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %32
  br label %47

47:                                               ; preds = %46, %25
  ret i32 0
}

declare dso_local i64 @machine_is_omap_innovator(...) #1

declare dso_local i64 @cpu_is_omap1510(...) #1

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i32 @__raw_readb(i32) #1

declare dso_local i64 @machine_is_omap_osk(...) #1

declare dso_local i32 @tps65010_set_gpio_out_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
