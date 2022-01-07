; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_pwm_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_pwm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i32, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { i32 }

@USBDUXSIGMA_PWM_ON_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbduxsigma_pwm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsigma_pwm_start(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.usbduxsigma_private*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %9, align 8
  store %struct.usbduxsigma_private* %10, %struct.usbduxsigma_private** %6, align 8
  %11 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %12 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %18 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %21 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = load i32, i32* @USBDUXSIGMA_PWM_ON_CMD, align 4
  %26 = call i32 @usbbuxsigma_send_cmd(%struct.comedi_device* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %52

31:                                               ; preds = %16
  %32 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %33 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %38 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memset(i32 %36, i32 0, i32 %39)
  %41 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %42 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = call i32 @usbduxsigma_submit_pwm_urb(%struct.comedi_device* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %6, align 8
  %49 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %47, %29, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @usbbuxsigma_send_cmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usbduxsigma_submit_pwm_urb(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
