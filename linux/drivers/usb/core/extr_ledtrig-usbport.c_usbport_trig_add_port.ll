; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.usbport_trig_data = type { i32, %struct.led_classdev* }
%struct.led_classdev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.usbport_trig_port = type { i32, %struct.usbport_trig_port*, i32, %struct.TYPE_7__, i32, %struct.usb_device*, %struct.usbport_trig_data* }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.usbport_trig_port* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-port%d\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@usbport_trig_port_show = common dso_local global i32 0, align 4
@usbport_trig_port_store = common dso_local global i32 0, align 4
@ports_group = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbport_trig_data*, %struct.usb_device*, i8*, i32)* @usbport_trig_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbport_trig_add_port(%struct.usbport_trig_data* %0, %struct.usb_device* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbport_trig_data*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.led_classdev*, align 8
  %11 = alloca %struct.usbport_trig_port*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.usbport_trig_data* %0, %struct.usbport_trig_data** %6, align 8
  store %struct.usb_device* %1, %struct.usb_device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %6, align 8
  %15 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %14, i32 0, i32 1
  %16 = load %struct.led_classdev*, %struct.led_classdev** %15, align 8
  store %struct.led_classdev* %16, %struct.led_classdev** %10, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i64 72, i32 %17)
  %19 = bitcast i8* %18 to %struct.usbport_trig_port*
  store %struct.usbport_trig_port* %19, %struct.usbport_trig_port** %11, align 8
  %20 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %21 = icmp ne %struct.usbport_trig_port* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  br label %118

25:                                               ; preds = %4
  %26 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %6, align 8
  %27 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %28 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %27, i32 0, i32 6
  store %struct.usbport_trig_data* %26, %struct.usbport_trig_data** %28, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %30 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %31 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %30, i32 0, i32 5
  store %struct.usb_device* %29, %struct.usb_device** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %34 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %6, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @usbport_trig_port_observed(%struct.usbport_trig_data* %35, %struct.usb_device* %36, i32 %37)
  %39 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %40 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %42, 8
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kzalloc(i64 %45, i32 %46)
  %48 = bitcast i8* %47 to %struct.usbport_trig_port*
  %49 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %50 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %49, i32 0, i32 1
  store %struct.usbport_trig_port* %48, %struct.usbport_trig_port** %50, align 8
  %51 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %52 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %51, i32 0, i32 1
  %53 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %52, align 8
  %54 = icmp ne %struct.usbport_trig_port* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %25
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %115

58:                                               ; preds = %25
  %59 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %60 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %59, i32 0, i32 1
  %61 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @snprintf(%struct.usbport_trig_port* %61, i64 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %67 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %68)
  %70 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %71 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %70, i32 0, i32 1
  %72 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %71, align 8
  %73 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %74 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store %struct.usbport_trig_port* %72, %struct.usbport_trig_port** %76, align 8
  %77 = load i32, i32* @S_IRUSR, align 4
  %78 = load i32, i32* @S_IWUSR, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %81 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* @usbport_trig_port_show, align 4
  %85 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %86 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @usbport_trig_port_store, align 4
  %89 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %90 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 8
  %92 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %93 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %97 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ports_group, i32 0, i32 0), align 4
  %100 = call i32 @sysfs_add_file_to_group(i32* %95, %struct.TYPE_8__* %98, i32 %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %58
  br label %110

104:                                              ; preds = %58
  %105 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %106 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %105, i32 0, i32 2
  %107 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %6, align 8
  %108 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %107, i32 0, i32 0
  %109 = call i32 @list_add_tail(i32* %106, i32* %108)
  store i32 0, i32* %5, align 4
  br label %120

110:                                              ; preds = %103
  %111 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %112 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %111, i32 0, i32 1
  %113 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %112, align 8
  %114 = call i32 @kfree(%struct.usbport_trig_port* %113)
  br label %115

115:                                              ; preds = %110, %55
  %116 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %11, align 8
  %117 = call i32 @kfree(%struct.usbport_trig_port* %116)
  br label %118

118:                                              ; preds = %115, %22
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %104
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @usbport_trig_port_observed(%struct.usbport_trig_data*, %struct.usb_device*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(%struct.usbport_trig_port*, i64, i8*, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_8__*) #1

declare dso_local i32 @sysfs_add_file_to_group(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.usbport_trig_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
