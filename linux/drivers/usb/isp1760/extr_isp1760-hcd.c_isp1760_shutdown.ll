; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }

@HC_HW_MODE_CTRL = common dso_local global i32 0, align 4
@HW_GLOBAL_INTR_EN = common dso_local global i32 0, align 4
@HC_USBCMD = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @isp1760_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_shutdown(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %6 = call i32 @isp1760_stop(%struct.usb_hcd* %5)
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %11 = call i32 @reg_read32(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %16 = load i32, i32* @HW_GLOBAL_INTR_EN, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = call i32 @reg_write32(i32 %14, i32 %15, i32 %19)
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HC_USBCMD, align 4
  %25 = call i32 @reg_read32(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @CMD_RUN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %31 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HC_USBCMD, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @reg_write32(i32 %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @isp1760_stop(%struct.usb_hcd*) #1

declare dso_local i32 @reg_read32(i32, i32) #1

declare dso_local i32 @reg_write32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
