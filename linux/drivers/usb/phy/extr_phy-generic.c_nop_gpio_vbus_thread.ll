; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_nop_gpio_vbus_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_nop_gpio_vbus_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy_generic = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.usb_otg* }
%struct.usb_otg = type { i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@USB_EVENT_VBUS = common dso_local global i32 0, align 4
@OTG_STATE_B_PERIPHERAL = common dso_local global i32 0, align 4
@USB_EVENT_NONE = common dso_local global i32 0, align 4
@OTG_STATE_B_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nop_gpio_vbus_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nop_gpio_vbus_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usb_phy_generic*, align 8
  %7 = alloca %struct.usb_otg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.usb_phy_generic*
  store %struct.usb_phy_generic* %11, %struct.usb_phy_generic** %6, align 8
  %12 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %13 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.usb_otg*, %struct.usb_otg** %14, align 8
  store %struct.usb_otg* %15, %struct.usb_otg** %7, align 8
  %16 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %17 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @gpiod_get_value(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %22 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = xor i32 %20, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %74

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %31 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load i32, i32* @USB_EVENT_VBUS, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @OTG_STATE_B_PERIPHERAL, align 4
  %37 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %38 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %41 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %44 = call i32 @nop_set_vbus_draw(%struct.usb_phy_generic* %43, i32 100)
  %45 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %46 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %50 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @atomic_notifier_call_chain(i32* %47, i32 %48, i32 %51)
  br label %72

53:                                               ; preds = %28
  %54 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %55 = call i32 @nop_set_vbus_draw(%struct.usb_phy_generic* %54, i32 0)
  %56 = load i32, i32* @USB_EVENT_NONE, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @OTG_STATE_B_IDLE, align 4
  %58 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %59 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %62 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.usb_phy_generic*, %struct.usb_phy_generic** %6, align 8
  %65 = getelementptr inbounds %struct.usb_phy_generic, %struct.usb_phy_generic* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  %69 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @atomic_notifier_call_chain(i32* %66, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %53, %34
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %26
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @nop_set_vbus_draw(%struct.usb_phy_generic*, i32) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
