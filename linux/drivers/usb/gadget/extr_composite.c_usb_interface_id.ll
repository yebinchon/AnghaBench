; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_interface_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_interface_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32, %struct.usb_function** }
%struct.usb_function = type { i32 }

@MAX_CONFIG_INTERFACES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_interface_id(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %4, align 8
  store %struct.usb_function* %1, %struct.usb_function** %5, align 8
  %7 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %8 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MAX_CONFIG_INTERFACES, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %15 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %16 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %15, i32 0, i32 1
  %17 = load %struct.usb_function**, %struct.usb_function*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.usb_function*, %struct.usb_function** %17, i64 %19
  store %struct.usb_function* %14, %struct.usb_function** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, 1
  %23 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %24 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
