; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_pwm_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_pwm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { i32 }

@USBDUX_CMD_PWM_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbdux_pwm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_pwm_start(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
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
  store i32 0, i32* %6, align 4
  %10 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %11 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %14 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %20 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %23 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = load i32, i32* @USBDUX_CMD_PWM_ON, align 4
  %28 = call i32 @send_dux_commands(%struct.comedi_device* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %52

32:                                               ; preds = %18
  %33 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %34 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %39 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memset(i32 %37, i32 0, i32 %40)
  %42 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %43 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = call i32 @usbduxsub_submit_pwm_urbs(%struct.comedi_device* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %50 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %32
  br label %52

52:                                               ; preds = %51, %31, %17
  %53 = load %struct.usbdux_private*, %struct.usbdux_private** %5, align 8
  %54 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_dux_commands(%struct.comedi_device*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usbduxsub_submit_pwm_urbs(%struct.comedi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
