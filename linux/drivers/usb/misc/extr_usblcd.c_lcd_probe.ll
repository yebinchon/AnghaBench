; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usblcd.c_lcd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usblcd.c_lcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_lcd = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.usb_interface*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_LCD_CONCURRENT_WRITES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"USBLCD model not supported.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Could not find both bulk-in and bulk-out endpoints\0A\00", align 1
@lcd_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"USBLCD Version %1d%1d.%1d%1d found at address %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"USB LCD device now attached to USBLCD-%d\0A\00", align 1
@lcd_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @lcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_lcd*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.usb_lcd* null, %struct.usb_lcd** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.usb_lcd* @kzalloc(i32 56, i32 %11)
  store %struct.usb_lcd* %12, %struct.usb_lcd** %6, align 8
  %13 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %14 = icmp ne %struct.usb_lcd* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %145

18:                                               ; preds = %2
  %19 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %20 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %19, i32 0, i32 0
  %21 = call i32 @kref_init(i32* %20)
  %22 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %23 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %22, i32 0, i32 9
  %24 = load i32, i32* @USB_LCD_CONCURRENT_WRITES, align 4
  %25 = call i32 @sema_init(i32* %23, i32 %24)
  %26 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %27 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %26, i32 0, i32 8
  %28 = call i32 @init_rwsem(i32* %27)
  %29 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %30 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %29, i32 0, i32 7
  %31 = call i32 @init_usb_anchor(i32* %30)
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = call i32 @interface_to_usbdev(%struct.usb_interface* %32)
  %34 = call %struct.TYPE_4__* @usb_get_dev(i32 %33)
  %35 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %36 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %35, i32 0, i32 1
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %39 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %38, i32 0, i32 6
  store %struct.usb_interface* %37, %struct.usb_interface** %39, align 8
  %40 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %41 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %18
  %49 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %50 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %49, i32 0, i32 1
  %51 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %139

54:                                               ; preds = %18
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usb_find_common_endpoints(i32 %57, %struct.usb_endpoint_descriptor** %7, %struct.usb_endpoint_descriptor** %8, i32* null, i32* null)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %63 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %62, i32 0, i32 1
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %139

65:                                               ; preds = %54
  %66 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %67 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %66)
  %68 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %69 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %71 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %74 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %76 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @kmalloc(i32 %77, i32 %78)
  %80 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %81 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %83 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %65
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  br label %139

89:                                               ; preds = %65
  %90 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %91 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %94 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %96 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %97 = call i32 @usb_set_intfdata(%struct.usb_interface* %95, %struct.usb_lcd* %96)
  %98 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %99 = call i32 @usb_register_dev(%struct.usb_interface* %98, i32* @lcd_class)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %89
  %103 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %104 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %103, i32 0, i32 1
  %105 = call i32 @dev_err(i32* %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %139

106:                                              ; preds = %89
  %107 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %108 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le16_to_cpu(i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %115 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %114, i32 0, i32 1
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 61440
  %118 = ashr i32 %117, 12
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 3840
  %121 = ashr i32 %120, 8
  %122 = load i32, i32* %9, align 4
  %123 = and i32 %122, 240
  %124 = ashr i32 %123, 4
  %125 = load i32, i32* %9, align 4
  %126 = and i32 %125, 15
  %127 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %128 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %121, i32 %124, i32 %126, i32 %131)
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 1
  %135 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %136 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %134, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  store i32 0, i32* %3, align 4
  br label %145

139:                                              ; preds = %102, %86, %61, %48
  %140 = load %struct.usb_lcd*, %struct.usb_lcd** %6, align 8
  %141 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %140, i32 0, i32 0
  %142 = load i32, i32* @lcd_delete, align 4
  %143 = call i32 @kref_put(i32* %141, i32 %142)
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %139, %106, %15
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.usb_lcd* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local %struct.TYPE_4__* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @usb_find_common_endpoints(i32, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_lcd*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
