; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_serial.c_gs_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_serial.c_gs_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.usb_descriptor_header** }
%struct.usb_descriptor_header = type { i32 }
%struct.usb_composite_dev = type { i32 }

@strings_dev = common dso_local global %struct.TYPE_6__* null, align 8
@USB_GADGET_MANUFACTURER_IDX = common dso_local global i64 0, align 8
@device_desc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@USB_GADGET_PRODUCT_IDX = common dso_local global i64 0, align 8
@STRING_DESCRIPTION_IDX = common dso_local global i64 0, align 8
@serial_config_driver = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@otg_desc = common dso_local global %struct.usb_descriptor_header** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@use_acm = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"acm\00", align 1
@use_obex = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"obex\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gser\00", align 1
@coverwrite = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GS_VERSION_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*)* @gs_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_bind(%struct.usb_composite_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_composite_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_descriptor_header*, align 8
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %3, align 8
  %6 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @strings_dev, align 8
  %8 = call i32 @usb_string_ids_tab(%struct.usb_composite_dev* %6, %struct.TYPE_6__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %102

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @strings_dev, align 8
  %14 = load i64, i64* @USB_GADGET_MANUFACTURER_IDX, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @device_desc, i32 0, i32 0), align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @strings_dev, align 8
  %19 = load i64, i64* @USB_GADGET_PRODUCT_IDX, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @device_desc, i32 0, i32 1), align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @strings_dev, align 8
  %24 = load i64, i64* @STRING_DESCRIPTION_IDX, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @serial_config_driver, i32 0, i32 0), align 8
  %29 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %30 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @gadget_is_otg(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %12
  %35 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @otg_desc, align 8
  %36 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %35, i64 0
  %37 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %36, align 8
  %38 = icmp ne %struct.usb_descriptor_header* %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %34
  %40 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %41 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.usb_descriptor_header* @usb_otg_descriptor_alloc(i32 %42)
  store %struct.usb_descriptor_header* %43, %struct.usb_descriptor_header** %5, align 8
  %44 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %5, align 8
  %45 = icmp ne %struct.usb_descriptor_header* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %102

49:                                               ; preds = %39
  %50 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %51 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %5, align 8
  %54 = call i32 @usb_otg_descriptor_init(i32 %52, %struct.usb_descriptor_header* %53)
  %55 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %5, align 8
  %56 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @otg_desc, align 8
  %57 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %56, i64 0
  store %struct.usb_descriptor_header* %55, %struct.usb_descriptor_header** %57, align 8
  %58 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @otg_desc, align 8
  %59 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %58, i64 1
  store %struct.usb_descriptor_header* null, %struct.usb_descriptor_header** %59, align 8
  br label %60

60:                                               ; preds = %49, %34
  %61 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @otg_desc, align 8
  store %struct.usb_descriptor_header** %61, %struct.usb_descriptor_header*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @serial_config_driver, i32 0, i32 2), align 8
  %62 = load i32, i32* @USB_CONFIG_ATT_WAKEUP, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @serial_config_driver, i32 0, i32 1), align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @serial_config_driver, i32 0, i32 1), align 4
  br label %65

65:                                               ; preds = %60, %12
  %66 = load i64, i64* @use_acm, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %70 = call i32 @serial_register_ports(%struct.usb_composite_dev* %69, %struct.TYPE_7__* @serial_config_driver, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %70, i32* %4, align 4
  %71 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %72 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_ep_autoconfig_reset(i32 %73)
  br label %85

75:                                               ; preds = %65
  %76 = load i64, i64* @use_obex, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %80 = call i32 @serial_register_ports(%struct.usb_composite_dev* %79, %struct.TYPE_7__* @serial_config_driver, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %80, i32* %4, align 4
  br label %84

81:                                               ; preds = %75
  %82 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %83 = call i32 @serial_register_ports(%struct.usb_composite_dev* %82, %struct.TYPE_7__* @serial_config_driver, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %95

89:                                               ; preds = %85
  %90 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %91 = call i32 @usb_composite_overwrite_options(%struct.usb_composite_dev* %90, i32* @coverwrite)
  %92 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %93 = load i32, i32* @GS_VERSION_NAME, align 4
  %94 = call i32 @INFO(%struct.usb_composite_dev* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  store i32 0, i32* %2, align 4
  br label %104

95:                                               ; preds = %88
  %96 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @otg_desc, align 8
  %97 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %96, i64 0
  %98 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %97, align 8
  %99 = call i32 @kfree(%struct.usb_descriptor_header* %98)
  %100 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** @otg_desc, align 8
  %101 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %100, i64 0
  store %struct.usb_descriptor_header* null, %struct.usb_descriptor_header** %101, align 8
  br label %102

102:                                              ; preds = %95, %46, %11
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %89
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @usb_string_ids_tab(%struct.usb_composite_dev*, %struct.TYPE_6__*) #1

declare dso_local i64 @gadget_is_otg(i32) #1

declare dso_local %struct.usb_descriptor_header* @usb_otg_descriptor_alloc(i32) #1

declare dso_local i32 @usb_otg_descriptor_init(i32, %struct.usb_descriptor_header*) #1

declare dso_local i32 @serial_register_ports(%struct.usb_composite_dev*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @usb_ep_autoconfig_reset(i32) #1

declare dso_local i32 @usb_composite_overwrite_options(%struct.usb_composite_dev*, i32*) #1

declare dso_local i32 @INFO(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.usb_descriptor_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
