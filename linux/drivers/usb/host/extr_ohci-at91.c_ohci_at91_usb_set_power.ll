; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-at91.c_ohci_at91_usb_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-at91.c_ohci_at91_usb_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_usbh_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_usbh_data*, i32, i32)* @ohci_at91_usb_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_at91_usb_set_power(%struct.at91_usbh_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.at91_usbh_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.at91_usbh_data* %0, %struct.at91_usbh_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @valid_port(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %21

11:                                               ; preds = %3
  %12 = load %struct.at91_usbh_data*, %struct.at91_usbh_data** %4, align 8
  %13 = getelementptr inbounds %struct.at91_usbh_data, %struct.at91_usbh_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @gpiod_set_value(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @valid_port(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
