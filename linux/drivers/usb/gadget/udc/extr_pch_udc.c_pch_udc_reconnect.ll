; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_udc_dev = type { i32 }

@UDC_DEVIRQMSK_ADDR = common dso_local global i32 0, align 4
@UDC_DEVINT_UR = common dso_local global i32 0, align 4
@UDC_DEVINT_ENUM = common dso_local global i32 0, align 4
@UDC_DEVCTL_ADDR = common dso_local global i32 0, align 4
@UDC_DEVCTL_RES = common dso_local global i32 0, align 4
@UDC_DEVCTL_SD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_udc_dev*)* @pch_udc_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_udc_reconnect(%struct.pch_udc_dev* %0) #0 {
  %2 = alloca %struct.pch_udc_dev*, align 8
  store %struct.pch_udc_dev* %0, %struct.pch_udc_dev** %2, align 8
  %3 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %2, align 8
  %4 = call i32 @pch_udc_init(%struct.pch_udc_dev* %3)
  %5 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %2, align 8
  %6 = load i32, i32* @UDC_DEVIRQMSK_ADDR, align 4
  %7 = load i32, i32* @UDC_DEVINT_UR, align 4
  %8 = load i32, i32* @UDC_DEVINT_ENUM, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @pch_udc_bit_clr(%struct.pch_udc_dev* %5, i32 %6, i32 %9)
  %11 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %2, align 8
  %12 = load i32, i32* @UDC_DEVCTL_ADDR, align 4
  %13 = load i32, i32* @UDC_DEVCTL_RES, align 4
  %14 = call i32 @pch_udc_bit_set(%struct.pch_udc_dev* %11, i32 %12, i32 %13)
  %15 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %2, align 8
  %16 = load i32, i32* @UDC_DEVCTL_ADDR, align 4
  %17 = load i32, i32* @UDC_DEVCTL_SD, align 4
  %18 = call i32 @pch_udc_bit_clr(%struct.pch_udc_dev* %15, i32 %16, i32 %17)
  %19 = call i32 @mdelay(i32 1)
  %20 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %2, align 8
  %21 = load i32, i32* @UDC_DEVCTL_ADDR, align 4
  %22 = load i32, i32* @UDC_DEVCTL_RES, align 4
  %23 = call i32 @pch_udc_bit_clr(%struct.pch_udc_dev* %20, i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @pch_udc_init(%struct.pch_udc_dev*) #1

declare dso_local i32 @pch_udc_bit_clr(%struct.pch_udc_dev*, i32, i32) #1

declare dso_local i32 @pch_udc_bit_set(%struct.pch_udc_dev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
