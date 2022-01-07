; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_led_activity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_led_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.moschip_port = type { i32, i32 }

@MOS7840_FLAG_LED_BUSY = common dso_local global i32 0, align 4
@MODEM_CONTROL_REGISTER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@LED_ON_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @mos7840_led_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos7840_led_activity(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.moschip_port*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %5 = call %struct.moschip_port* @usb_get_serial_port_data(%struct.usb_serial_port* %4)
  store %struct.moschip_port* %5, %struct.moschip_port** %3, align 8
  %6 = load i32, i32* @MOS7840_FLAG_LED_BUSY, align 4
  %7 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %8 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %7, i32 0, i32 1
  %9 = call i64 @test_and_set_bit_lock(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %14 = load i32, i32* @MODEM_CONTROL_REGISTER, align 4
  %15 = call i32 @mos7840_set_led_async(%struct.moschip_port* %13, i32 769, i32 %14)
  %16 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %17 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %16, i32 0, i32 0
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i32, i32* @LED_ON_MS, align 4
  %20 = call i64 @msecs_to_jiffies(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @mod_timer(i32* %17, i64 %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.moschip_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i64 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @mos7840_set_led_async(%struct.moschip_port*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
