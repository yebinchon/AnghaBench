; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhsh_hpriv = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usbhs_mod = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@usbhsh_dma_map_ctrl = common dso_local global i32 0, align 4
@usbhsh_irq_attch = common dso_local global i32 0, align 4
@usbhsh_irq_dtch = common dso_local global i32 0, align 4
@usbhsh_irq_setup_ack = common dso_local global i32 0, align 4
@usbhsh_irq_setup_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"start host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_priv*)* @usbhsh_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsh_start(%struct.usbhs_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.usbhsh_hpriv*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.usbhs_mod*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  %9 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %10 = call %struct.usbhsh_hpriv* @usbhsh_priv_to_hpriv(%struct.usbhs_priv* %9)
  store %struct.usbhsh_hpriv* %10, %struct.usbhsh_hpriv** %4, align 8
  %11 = load %struct.usbhsh_hpriv*, %struct.usbhsh_hpriv** %4, align 8
  %12 = call %struct.usb_hcd* @usbhsh_hpriv_to_hcd(%struct.usbhsh_hpriv* %11)
  store %struct.usb_hcd* %12, %struct.usb_hcd** %5, align 8
  %13 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %14 = call %struct.usbhs_mod* @usbhs_mod_get_current(%struct.usbhs_priv* %13)
  store %struct.usbhs_mod* %14, %struct.usbhs_mod** %6, align 8
  %15 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %16 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %15)
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %18 = call i32 @usb_add_hcd(%struct.usb_hcd* %17, i32 0, i32 0)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_wakeup_enable(i32 %26)
  %28 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %29 = call i32 @usbhs_fifo_init(%struct.usbhs_priv* %28)
  %30 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %31 = load i32, i32* @usbhsh_dma_map_ctrl, align 4
  %32 = call i32 @usbhs_pipe_init(%struct.usbhs_priv* %30, i32 %31)
  %33 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %34 = call i32 @usbhsh_pipe_init_for_host(%struct.usbhs_priv* %33)
  %35 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %36 = call i32 @usbhs_sys_host_ctrl(%struct.usbhs_priv* %35, i32 1)
  %37 = load i32, i32* @usbhsh_irq_attch, align 4
  %38 = load %struct.usbhs_mod*, %struct.usbhs_mod** %6, align 8
  %39 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @usbhsh_irq_dtch, align 4
  %41 = load %struct.usbhs_mod*, %struct.usbhs_mod** %6, align 8
  %42 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @usbhsh_irq_setup_ack, align 4
  %44 = load %struct.usbhs_mod*, %struct.usbhs_mod** %6, align 8
  %45 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @usbhsh_irq_setup_err, align 4
  %47 = load %struct.usbhs_mod*, %struct.usbhs_mod** %6, align 8
  %48 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %50 = load %struct.usbhs_mod*, %struct.usbhs_mod** %6, align 8
  %51 = call i32 @usbhs_irq_callback_update(%struct.usbhs_priv* %49, %struct.usbhs_mod* %50)
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %22, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.usbhsh_hpriv* @usbhsh_priv_to_hpriv(%struct.usbhs_priv*) #1

declare dso_local %struct.usb_hcd* @usbhsh_hpriv_to_hcd(%struct.usbhsh_hpriv*) #1

declare dso_local %struct.usbhs_mod* @usbhs_mod_get_current(%struct.usbhs_priv*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @usbhs_fifo_init(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_pipe_init(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @usbhsh_pipe_init_for_host(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_sys_host_ctrl(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @usbhs_irq_callback_update(%struct.usbhs_priv*, %struct.usbhs_mod*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
