; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_idmouse.c_idmouse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_idmouse.c_idmouse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_idmouse = type { i32, i32, i32, i32, i32, %struct.usb_interface*, %struct.usb_device*, i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to find bulk-in endpoint.\0A\00", align 1
@IMGSIZE = common dso_local global i64 0, align 8
@idmouse_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to allocate minor number.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s now attached\0A\00", align 1
@DRIVER_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @idmouse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmouse_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_idmouse*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 1
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %16 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %15, i64 0
  store %struct.usb_host_interface* %16, %struct.usb_host_interface** %8, align 8
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %118

25:                                               ; preds = %2
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %118

34:                                               ; preds = %25
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.usb_idmouse* @kzalloc(i32 48, i32 %35)
  store %struct.usb_idmouse* %36, %struct.usb_idmouse** %7, align 8
  %37 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %38 = icmp eq %struct.usb_idmouse* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %118

42:                                               ; preds = %34
  %43 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %44 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %43, i32 0, i32 7
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %47 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %48 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %47, i32 0, i32 6
  store %struct.usb_device* %46, %struct.usb_device** %48, align 8
  %49 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %50 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %51 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %50, i32 0, i32 5
  store %struct.usb_interface* %49, %struct.usb_interface** %51, align 8
  %52 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %53 = call i32 @usb_find_bulk_in_endpoint(%struct.usb_host_interface* %52, %struct.usb_endpoint_descriptor** %9)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %42
  %57 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %58 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %61 = call i32 @idmouse_delete(%struct.usb_idmouse* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %118

63:                                               ; preds = %42
  %64 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %65 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %64)
  %66 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %67 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %69 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %68, i32 0, i32 0
  store i32 512, i32* %69, align 8
  %70 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %71 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %74 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* @IMGSIZE, align 8
  %76 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %77 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %75, %79
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32 @kmalloc(i64 %80, i32 %81)
  %83 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %84 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %86 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %63
  %90 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %91 = call i32 @idmouse_delete(%struct.usb_idmouse* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %118

94:                                               ; preds = %63
  %95 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %96 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %98 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %99 = call i32 @usb_set_intfdata(%struct.usb_interface* %97, %struct.usb_idmouse* %98)
  %100 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %101 = call i32 @usb_register_dev(%struct.usb_interface* %100, i32* @idmouse_class)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %94
  %105 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %106 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %109 = call i32 @usb_set_intfdata(%struct.usb_interface* %108, %struct.usb_idmouse* null)
  %110 = load %struct.usb_idmouse*, %struct.usb_idmouse** %7, align 8
  %111 = call i32 @idmouse_delete(%struct.usb_idmouse* %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %118

113:                                              ; preds = %94
  %114 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %115 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %114, i32 0, i32 0
  %116 = load i32, i32* @DRIVER_DESC, align 4
  %117 = call i32 @dev_info(i32* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %113, %104, %89, %56, %39, %31, %22
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_idmouse* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_find_bulk_in_endpoint(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @idmouse_delete(%struct.usb_idmouse*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_idmouse*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
