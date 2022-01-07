; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_composite_dev_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_composite_dev_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_driver = type { i32 }
%struct.usb_composite_dev = type { %struct.TYPE_6__*, %struct.usb_composite_driver*, %struct.usb_gadget* }
%struct.TYPE_6__ = type { i32, %struct.usb_composite_dev*, i32 }
%struct.usb_gadget = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.usb_composite_dev* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_COMP_EP0_BUFSIZ = common dso_local global i32 0, align 4
@dev_attr_suspended = common dso_local global i32 0, align 4
@composite_setup_complete = common dso_local global i32 0, align 4
@CONFIG_USB_GADGET_VBUS_DRAW = common dso_local global i64 0, align 8
@USB_SELF_POWER_VBUS_MAX_DRAW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @composite_dev_prepare(%struct.usb_composite_driver* %0, %struct.usb_composite_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_composite_driver*, align 8
  %5 = alloca %struct.usb_composite_dev*, align 8
  %6 = alloca %struct.usb_gadget*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_composite_driver* %0, %struct.usb_composite_driver** %4, align 8
  store %struct.usb_composite_dev* %1, %struct.usb_composite_dev** %5, align 8
  %8 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %9 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %8, i32 0, i32 2
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %9, align 8
  store %struct.usb_gadget* %10, %struct.usb_gadget** %6, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %14 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_6__* @usb_ep_alloc_request(%struct.TYPE_5__* %15, i32 %16)
  %18 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %19 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %18, i32 0, i32 0
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %19, align 8
  %20 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %21 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %95

27:                                               ; preds = %2
  %28 = load i32, i32* @USB_COMP_EP0_BUFSIZ, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @kmalloc(i32 %28, i32 %29)
  %31 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %32 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %36 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  br label %84

42:                                               ; preds = %27
  %43 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %44 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %43, i32 0, i32 1
  %45 = call i32 @device_create_file(i32* %44, i32* @dev_attr_suspended)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %77

49:                                               ; preds = %42
  %50 = load i32, i32* @composite_setup_complete, align 4
  %51 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %52 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 8
  %55 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %56 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %57 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store %struct.usb_composite_dev* %55, %struct.usb_composite_dev** %59, align 8
  %60 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %61 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %62 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store %struct.usb_composite_dev* %60, %struct.usb_composite_dev** %64, align 8
  %65 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %4, align 8
  %66 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %67 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %66, i32 0, i32 1
  store %struct.usb_composite_driver* %65, %struct.usb_composite_driver** %67, align 8
  %68 = load i64, i64* @CONFIG_USB_GADGET_VBUS_DRAW, align 8
  %69 = load i64, i64* @USB_SELF_POWER_VBUS_MAX_DRAW, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %49
  %72 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %73 = call i32 @usb_gadget_set_selfpowered(%struct.usb_gadget* %72)
  br label %74

74:                                               ; preds = %71, %49
  %75 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %76 = call i32 @usb_ep_autoconfig_reset(%struct.usb_gadget* %75)
  store i32 0, i32* %3, align 4
  br label %95

77:                                               ; preds = %48
  %78 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %79 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @kfree(i32 %82)
  br label %84

84:                                               ; preds = %77, %41
  %85 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %86 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %89 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 @usb_ep_free_request(%struct.TYPE_5__* %87, %struct.TYPE_6__* %90)
  %92 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %93 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %92, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %93, align 8
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %84, %74, %24
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_6__* @usb_ep_alloc_request(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @usb_gadget_set_selfpowered(%struct.usb_gadget*) #1

declare dso_local i32 @usb_ep_autoconfig_reset(%struct.usb_gadget*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_ep_free_request(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
