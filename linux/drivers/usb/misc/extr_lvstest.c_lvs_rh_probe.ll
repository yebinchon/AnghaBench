; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_lvstest.c_lvs_rh_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_lvstest.c_lvs_rh_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.lvs_rh = type { i32, i32*, i32, i32, %struct.usb_interface* }

@USB_HUB_PR_SS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Bind LVS driver with SS root Hub only\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQ_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RT_HUB = common dso_local global i32 0, align 4
@USB_DT_SS_HUB = common dso_local global i32 0, align 4
@USB_DT_SS_HUB_SIZE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@USB_DT_HUB_NONVAR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wrong root hub descriptor read %d\0A\00", align 1
@lvs_rh_work = common dso_local global i32 0, align 4
@lvs_rh_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"couldn't submit lvs urb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @lvs_rh_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lvs_rh_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.lvs_rh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 1
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %16, align 8
  store %struct.usb_host_interface* %17, %struct.usb_host_interface** %7, align 8
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %19 = call i32 @usb_find_int_in_endpoint(%struct.usb_host_interface* %18, %struct.usb_endpoint_descriptor** %8)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %3, align 4
  br label %146

24:                                               ; preds = %2
  %25 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_HUB_PR_SS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31, %24
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %146

42:                                               ; preds = %31
  %43 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 0
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.lvs_rh* @devm_kzalloc(i32* %44, i32 32, i32 %45)
  store %struct.lvs_rh* %46, %struct.lvs_rh** %9, align 8
  %47 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %48 = icmp ne %struct.lvs_rh* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %146

52:                                               ; preds = %42
  %53 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %54 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %55 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %54, i32 0, i32 4
  store %struct.usb_interface* %53, %struct.usb_interface** %55, align 8
  %56 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %57 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %58 = call i32 @usb_set_intfdata(%struct.usb_interface* %56, %struct.lvs_rh* %57)
  %59 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %60 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %61 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %60, i32 0)
  %62 = load i32, i32* @USB_REQ_GET_DESCRIPTOR, align 4
  %63 = load i32, i32* @USB_DIR_IN, align 4
  %64 = load i32, i32* @USB_RT_HUB, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @USB_DT_SS_HUB, align 4
  %67 = shl i32 %66, 8
  %68 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %69 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %68, i32 0, i32 3
  %70 = load i32, i32* @USB_DT_SS_HUB_SIZE, align 4
  %71 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %72 = call i32 @usb_control_msg(%struct.usb_device* %59, i32 %61, i32 %62, i32 %65, i32 %67, i32 0, i32* %69, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @USB_DT_HUB_NONVAR_SIZE, align 4
  %75 = add nsw i32 %74, 2
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %52
  %78 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %79 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %78, i32 0, i32 0
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %3, align 4
  br label %146

83:                                               ; preds = %52
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32 @usb_alloc_urb(i32 0, i32 %84)
  %86 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %87 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %89 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %83
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %146

95:                                               ; preds = %83
  %96 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %97 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %96, i32 0, i32 2
  %98 = load i32, i32* @lvs_rh_work, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  %100 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %101 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %102 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @usb_rcvintpipe(%struct.usb_device* %100, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @usb_pipeout(i32 %107)
  %109 = call i32 @usb_maxpacket(%struct.usb_device* %105, i32 %106, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %111 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %116 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @lvs_rh_irq, align 4
  %121 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %122 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %123 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @usb_fill_int_urb(i32 %112, %struct.usb_device* %113, i32 %114, i32* %118, i32 %119, i32 %120, %struct.lvs_rh* %121, i32 %124)
  %126 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %127 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i32 @usb_submit_urb(i32 %128, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %95
  %134 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %135 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %134, i32 0, i32 0
  %136 = load i32, i32* %11, align 4
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  br label %140

138:                                              ; preds = %95
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %3, align 4
  br label %146

140:                                              ; preds = %133
  %141 = load %struct.lvs_rh*, %struct.lvs_rh** %9, align 8
  %142 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @usb_free_urb(i32 %143)
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %140, %138, %92, %77, %49, %36, %22
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_find_int_in_endpoint(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.lvs_rh* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.lvs_rh*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.usb_device*, i32, i32*, i32, i32, %struct.lvs_rh*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
