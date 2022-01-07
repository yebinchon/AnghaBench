; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_pwm_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_pwm_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@USBDUX_CMD_PWM_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbdux_pwm_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_pwm_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.usbdux_private*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.usbdux_private*, %struct.usbdux_private** %8, align 8
  store %struct.usbdux_private* %9, %struct.usbdux_private** %5, align 8
  %10 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %11 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %15 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usbdux_pwm_stop(%struct.comedi_device* %13, i32 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = load i32, i32* @USBDUX_CMD_PWM_OFF, align 4
  %20 = call i32 @send_dux_commands(%struct.comedi_device* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %22 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usbdux_pwm_stop(%struct.comedi_device*, i32) #1

declare dso_local i32 @send_dux_commands(%struct.comedi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
