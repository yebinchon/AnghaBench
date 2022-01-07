; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/extr_usb-skeleton.c_skel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/extr_usb-skeleton.c_skel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_skel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WRITES_IN_FLIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Could not find both bulk-in and bulk-out endpoints\0A\00", align 1
@skel_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"USB Skeleton device now attached to USBSkel-%d\00", align 1
@skel_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @skel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skel_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_skel*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.usb_skel* @kzalloc(i32 52, i32 %10)
  store %struct.usb_skel* %11, %struct.usb_skel** %6, align 8
  %12 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %13 = icmp ne %struct.usb_skel* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %124

17:                                               ; preds = %2
  %18 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %19 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %18, i32 0, i32 0
  %20 = call i32 @kref_init(i32* %19)
  %21 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %22 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %21, i32 0, i32 12
  %23 = load i32, i32* @WRITES_IN_FLIGHT, align 4
  %24 = call i32 @sema_init(i32* %22, i32 %23)
  %25 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %26 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %25, i32 0, i32 11
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %29 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %28, i32 0, i32 10
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %32 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %31, i32 0, i32 9
  %33 = call i32 @init_usb_anchor(i32* %32)
  %34 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %35 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %34, i32 0, i32 8
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = call i32 @interface_to_usbdev(%struct.usb_interface* %37)
  %39 = call i32 @usb_get_dev(i32 %38)
  %40 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %41 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = call i32 @usb_get_intf(%struct.usb_interface* %42)
  %44 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %45 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %47 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_find_common_endpoints(i32 %48, %struct.usb_endpoint_descriptor** %7, %struct.usb_endpoint_descriptor** %8, i32* null, i32* null)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %17
  %53 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %54 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %53, i32 0, i32 1
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %118

56:                                               ; preds = %17
  %57 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %58 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %57)
  %59 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %60 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %65 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %67 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32 @kmalloc(i32 %68, i32 %69)
  %71 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %72 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %74 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %56
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %118

80:                                               ; preds = %56
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32 @usb_alloc_urb(i32 0, i32 %81)
  %83 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %84 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %86 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %9, align 4
  br label %118

92:                                               ; preds = %80
  %93 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %94 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %97 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %99 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %100 = call i32 @usb_set_intfdata(%struct.usb_interface* %98, %struct.usb_skel* %99)
  %101 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %102 = call i32 @usb_register_dev(%struct.usb_interface* %101, i32* @skel_class)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %92
  %106 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %107 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %106, i32 0, i32 1
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %110 = call i32 @usb_set_intfdata(%struct.usb_interface* %109, %struct.usb_skel* null)
  br label %118

111:                                              ; preds = %92
  %112 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %113 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %112, i32 0, i32 1
  %114 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %115 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_info(i32* %113, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  store i32 0, i32* %3, align 4
  br label %124

118:                                              ; preds = %105, %89, %77, %52
  %119 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %120 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %119, i32 0, i32 0
  %121 = load i32, i32* @skel_delete, align 4
  %122 = call i32 @kref_put(i32* %120, i32 %121)
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %118, %111, %14
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.usb_skel* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_find_common_endpoints(i32, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_skel*) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
