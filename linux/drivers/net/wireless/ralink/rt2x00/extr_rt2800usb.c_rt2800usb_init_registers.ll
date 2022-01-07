; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800usb.c_rt2800usb_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800usb.c_rt2800usb_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@PBF_SYS_CTRL = common dso_local global i32 0, align 4
@MAC_SYS_CTRL_RESET_CSR = common dso_local global i32 0, align 4
@MAC_SYS_CTRL_RESET_BBP = common dso_local global i32 0, align 4
@MAC_SYS_CTRL = common dso_local global i32 0, align 4
@USB_DEVICE_MODE = common dso_local global i32 0, align 4
@USB_MODE_RESET = common dso_local global i32 0, align 4
@REGISTER_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800usb_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800usb_init_registers(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %6 = call i64 @rt2800_wait_csr_ready(%struct.rt2x00_dev* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = load i32, i32* @PBF_SYS_CTRL, align 4
  %14 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = load i32, i32* @PBF_SYS_CTRL, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, -8193
  %19 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %15, i32 %16, i32 %18)
  store i32 0, i32* %4, align 4
  %20 = load i32, i32* @MAC_SYS_CTRL_RESET_CSR, align 4
  %21 = call i32 @rt2x00_set_field32(i32* %4, i32 %20, i32 1)
  %22 = load i32, i32* @MAC_SYS_CTRL_RESET_BBP, align 4
  %23 = call i32 @rt2x00_set_field32(i32* %4, i32 %22, i32 1)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = load i32, i32* @MAC_SYS_CTRL, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %24, i32 %25, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* @USB_DEVICE_MODE, align 4
  %30 = load i32, i32* @USB_MODE_RESET, align 4
  %31 = load i32, i32* @REGISTER_TIMEOUT, align 4
  %32 = call i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev* %28, i32 %29, i32 0, i32 %30, i32 %31)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %34 = load i32, i32* @MAC_SYS_CTRL, align 4
  %35 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %33, i32 %34, i32 0)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %11, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @rt2800_wait_csr_ready(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00usb_vendor_request_sw(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
