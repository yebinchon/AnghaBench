; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i32, i32, i32 }
%struct.usb_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @vmk80xx_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmk80xx_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.vmk80xx_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %5)
  store %struct.usb_interface* %6, %struct.usb_interface** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %8, align 8
  store %struct.vmk80xx_private* %9, %struct.vmk80xx_private** %4, align 8
  %10 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %11 = icmp ne %struct.vmk80xx_private* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %15 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %14, i32 0, i32 0
  %16 = call i32 @down(i32* %15)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %18 = call i32 @usb_set_intfdata(%struct.usb_interface* %17, i32* null)
  %19 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %20 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kfree(i32 %21)
  %23 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %24 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kfree(i32 %25)
  %27 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %4, align 8
  %28 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %27, i32 0, i32 0
  %29 = call i32 @up(i32* %28)
  br label %30

30:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
