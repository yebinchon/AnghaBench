; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_printer.c_printer_do_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_printer.c_printer_do_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_configuration = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_gadget* }
%struct.usb_gadget = type { i32 }

@otg_desc = common dso_local global i32 0, align 4
@printer_cfg_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@fi_printer = common dso_local global i32 0, align 4
@f_printer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*)* @printer_do_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printer_do_config(%struct.usb_configuration* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  %6 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %7 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %9, align 8
  store %struct.usb_gadget* %10, %struct.usb_gadget** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %12 = call i32 @usb_ep_autoconfig_reset(%struct.usb_gadget* %11)
  %13 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %14 = call i32 @usb_gadget_set_selfpowered(%struct.usb_gadget* %13)
  %15 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %16 = call i64 @gadget_is_otg(%struct.usb_gadget* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @otg_desc, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @printer_cfg_driver, i32 0, i32 1), align 4
  %20 = load i32, i32* @USB_CONFIG_ATT_WAKEUP, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @printer_cfg_driver, i32 0, i32 0), align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @printer_cfg_driver, i32 0, i32 0), align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @fi_printer, align 4
  %25 = call i32 @usb_get_function(i32 %24)
  store i32 %25, i32* @f_printer, align 4
  %26 = load i32, i32* @f_printer, align 4
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @f_printer, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %43

32:                                               ; preds = %23
  %33 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %34 = load i32, i32* @f_printer, align 4
  %35 = call i32 @usb_add_function(%struct.usb_configuration* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @f_printer, align 4
  %40 = call i32 @usb_put_function(i32 %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %29
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @usb_ep_autoconfig_reset(%struct.usb_gadget*) #1

declare dso_local i32 @usb_gadget_set_selfpowered(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_otg(%struct.usb_gadget*) #1

declare dso_local i32 @usb_get_function(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @usb_add_function(%struct.usb_configuration*, i32) #1

declare dso_local i32 @usb_put_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
