; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i32*)* }

@USB30_CON_B3_CONNECT = common dso_local global i32 0, align 4
@USB3_USB30_CON = common dso_local global i32 0, align 4
@USB_INT_1_B2_RSUM = common dso_local global i32 0, align 4
@USB_INT_1_B3_PLLWKUP = common dso_local global i32 0, align 4
@USB_INT_1_B3_LUPSUCS = common dso_local global i32 0, align 4
@USB_INT_1_B3_DISABLE = common dso_local global i32 0, align 4
@USB_INT_1_SPEED = common dso_local global i32 0, align 4
@USB_INT_1_B3_WRMRST = common dso_local global i32 0, align 4
@USB_INT_1_B3_HOTRST = common dso_local global i32 0, align 4
@USB_INT_1_B2_SPND = common dso_local global i32 0, align 4
@USB_INT_1_B2_L1SPND = common dso_local global i32 0, align 4
@USB_INT_1_B2_USBRST = common dso_local global i32 0, align 4
@USB_COM_CON_SPD_MODE = common dso_local global i32 0, align 4
@USB3_USB_COM_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @usb3_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_disconnect(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %3 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %4 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %6 = call i32 @usb3_usb2_pullup(%struct.renesas_usb3* %5, i32 0)
  %7 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %8 = load i32, i32* @USB30_CON_B3_CONNECT, align 4
  %9 = load i32, i32* @USB3_USB30_CON, align 4
  %10 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %7, i32 %8, i32 %9)
  %11 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %12 = call i32 @usb3_reset_epc(%struct.renesas_usb3* %11)
  %13 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %14 = load i32, i32* @USB_INT_1_B2_RSUM, align 4
  %15 = load i32, i32* @USB_INT_1_B3_PLLWKUP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @USB_INT_1_B3_LUPSUCS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @USB_INT_1_B3_DISABLE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @USB_INT_1_SPEED, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @USB_INT_1_B3_WRMRST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @USB_INT_1_B3_HOTRST, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @USB_INT_1_B2_SPND, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @USB_INT_1_B2_L1SPND, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @USB_INT_1_B2_USBRST, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @usb3_disable_irq_1(%struct.renesas_usb3* %13, i32 %32)
  %34 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %35 = load i32, i32* @USB_COM_CON_SPD_MODE, align 4
  %36 = load i32, i32* @USB3_USB_COM_CON, align 4
  %37 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %34, i32 %35, i32 %36)
  %38 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %39 = call i32 @usb3_init_epc_registers(%struct.renesas_usb3* %38)
  %40 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %41 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %1
  %45 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %46 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (i32*)*, i32 (i32*)** %48, align 8
  %50 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %51 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %50, i32 0, i32 0
  %52 = call i32 %49(i32* %51)
  br label %53

53:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @usb3_usb2_pullup(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_clear_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_reset_epc(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_disable_irq_1(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_init_epc_registers(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
