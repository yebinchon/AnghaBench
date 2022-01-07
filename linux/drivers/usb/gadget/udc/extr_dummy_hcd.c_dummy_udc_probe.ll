; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_udc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_udc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.platform_device = type { i32 }
%struct.dummy = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32* }

@gadget_name = common dso_local global i32 0, align 4
@dummy_ops = common dso_local global i32 0, align 4
@mod_data = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@dev_attr_function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dummy_udc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_udc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dummy*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i64 @dev_get_platdata(i32* %7)
  %9 = inttoptr i64 %8 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.dummy*
  store %struct.dummy* %11, %struct.dummy** %4, align 8
  %12 = load %struct.dummy*, %struct.dummy** %4, align 8
  %13 = getelementptr inbounds %struct.dummy, %struct.dummy* %12, i32 0, i32 0
  %14 = call i32 @memzero_explicit(%struct.TYPE_6__* %13, i32 4)
  %15 = load i32, i32* @gadget_name, align 4
  %16 = load %struct.dummy*, %struct.dummy** %4, align 8
  %17 = getelementptr inbounds %struct.dummy, %struct.dummy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 8
  %19 = load %struct.dummy*, %struct.dummy** %4, align 8
  %20 = getelementptr inbounds %struct.dummy, %struct.dummy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32* @dummy_ops, i32** %21, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mod_data, i32 0, i32 1), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @USB_SPEED_SUPER, align 4
  %26 = load %struct.dummy*, %struct.dummy** %4, align 8
  %27 = getelementptr inbounds %struct.dummy, %struct.dummy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  br label %43

29:                                               ; preds = %1
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mod_data, i32 0, i32 0), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @USB_SPEED_HIGH, align 4
  %34 = load %struct.dummy*, %struct.dummy** %4, align 8
  %35 = getelementptr inbounds %struct.dummy, %struct.dummy* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @USB_SPEED_FULL, align 4
  %39 = load %struct.dummy*, %struct.dummy** %4, align 8
  %40 = getelementptr inbounds %struct.dummy, %struct.dummy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.dummy*, %struct.dummy** %4, align 8
  %47 = getelementptr inbounds %struct.dummy, %struct.dummy* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32* %45, i32** %49, align 8
  %50 = load %struct.dummy*, %struct.dummy** %4, align 8
  %51 = call i32 @init_dummy_udc_hw(%struct.dummy* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.dummy*, %struct.dummy** %4, align 8
  %55 = getelementptr inbounds %struct.dummy, %struct.dummy* %54, i32 0, i32 0
  %56 = call i32 @usb_add_gadget_udc(i32* %53, %struct.TYPE_6__* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %77

60:                                               ; preds = %43
  %61 = load %struct.dummy*, %struct.dummy** %4, align 8
  %62 = getelementptr inbounds %struct.dummy, %struct.dummy* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @device_create_file(%struct.TYPE_8__* %63, i32* @dev_attr_function)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %73

68:                                               ; preds = %60
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.dummy*, %struct.dummy** %4, align 8
  %71 = call i32 @platform_set_drvdata(%struct.platform_device* %69, %struct.dummy* %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %79

73:                                               ; preds = %67
  %74 = load %struct.dummy*, %struct.dummy** %4, align 8
  %75 = getelementptr inbounds %struct.dummy, %struct.dummy* %74, i32 0, i32 0
  %76 = call i32 @usb_del_gadget_udc(%struct.TYPE_6__* %75)
  br label %77

77:                                               ; preds = %73, %59
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %68
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @dev_get_platdata(i32*) #1

declare dso_local i32 @memzero_explicit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @init_dummy_udc_hw(%struct.dummy*) #1

declare dso_local i32 @usb_add_gadget_udc(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dummy*) #1

declare dso_local i32 @usb_del_gadget_udc(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
