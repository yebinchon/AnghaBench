; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_usb.c_comedi_usb_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_usb.c_comedi_usb_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_driver = type { i32 }
%struct.usb_driver = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_usb_driver_register(%struct.comedi_driver* %0, %struct.usb_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_driver*, align 8
  %5 = alloca %struct.usb_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_driver* %0, %struct.comedi_driver** %4, align 8
  store %struct.usb_driver* %1, %struct.usb_driver** %5, align 8
  %7 = load %struct.comedi_driver*, %struct.comedi_driver** %4, align 8
  %8 = call i32 @comedi_driver_register(%struct.comedi_driver* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.usb_driver*, %struct.usb_driver** %5, align 8
  %15 = call i32 @usb_register(%struct.usb_driver* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.comedi_driver*, %struct.comedi_driver** %4, align 8
  %20 = call i32 @comedi_driver_unregister(%struct.comedi_driver* %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %18, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @comedi_driver_register(%struct.comedi_driver*) #1

declare dso_local i32 @usb_register(%struct.usb_driver*) #1

declare dso_local i32 @comedi_driver_unregister(%struct.comedi_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
