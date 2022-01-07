; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_usb.c_nfcmrvl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_usb.c_nfcmrvl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.nfcmrvl_usb_drv_data = type { %struct.nfcmrvl_private*, i32, i32, i32, i32, i32, %struct.usb_interface*, %struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor* }
%struct.nfcmrvl_private = type { i32 }
%struct.usb_device = type { i32 }
%struct.nfcmrvl_platform_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"intf %p id %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@nfcmrvl_waker = common dso_local global i32 0, align 4
@NFCMRVL_PHY_USB = common dso_local global i32 0, align 4
@usb_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @nfcmrvl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.nfcmrvl_usb_drv_data*, align 8
  %8 = alloca %struct.nfcmrvl_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.nfcmrvl_platform_data, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %10, align 8
  %14 = call i32 @memset(%struct.nfcmrvl_platform_data* %11, i32 0, i32 4)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %21 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %22 = call i32 @nfc_info(i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %20, %struct.usb_device_id* %21)
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.nfcmrvl_usb_drv_data* @devm_kzalloc(i32* %24, i32 64, i32 %25)
  store %struct.nfcmrvl_usb_drv_data* %26, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %27 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %28 = icmp ne %struct.nfcmrvl_usb_drv_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %139

32:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %78, %32
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %34, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %33
  %43 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %51, %struct.usb_endpoint_descriptor** %6, align 8
  %52 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %53 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %52, i32 0, i32 9
  %54 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %53, align 8
  %55 = icmp ne %struct.usb_endpoint_descriptor* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %42
  %57 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %58 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %62 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %63 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %62, i32 0, i32 9
  store %struct.usb_endpoint_descriptor* %61, %struct.usb_endpoint_descriptor** %63, align 8
  br label %78

64:                                               ; preds = %56, %42
  %65 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %66 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %65, i32 0, i32 8
  %67 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %66, align 8
  %68 = icmp ne %struct.usb_endpoint_descriptor* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %71 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %75 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %76 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %75, i32 0, i32 8
  store %struct.usb_endpoint_descriptor* %74, %struct.usb_endpoint_descriptor** %76, align 8
  br label %78

77:                                               ; preds = %69, %64
  br label %78

78:                                               ; preds = %77, %73, %60
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %33

81:                                               ; preds = %33
  %82 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %83 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %82, i32 0, i32 9
  %84 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %83, align 8
  %85 = icmp ne %struct.usb_endpoint_descriptor* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %88 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %87, i32 0, i32 8
  %89 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %88, align 8
  %90 = icmp ne %struct.usb_endpoint_descriptor* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %139

94:                                               ; preds = %86
  %95 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %96 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %97 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %96, i32 0, i32 7
  store %struct.usb_device* %95, %struct.usb_device** %97, align 8
  %98 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %99 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %100 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %99, i32 0, i32 6
  store %struct.usb_interface* %98, %struct.usb_interface** %100, align 8
  %101 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %102 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %101, i32 0, i32 5
  %103 = load i32, i32* @nfcmrvl_waker, align 4
  %104 = call i32 @INIT_WORK(i32* %102, i32 %103)
  %105 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %106 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %105, i32 0, i32 4
  %107 = call i32 @spin_lock_init(i32* %106)
  %108 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %109 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %108, i32 0, i32 3
  %110 = call i32 @init_usb_anchor(i32* %109)
  %111 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %112 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %111, i32 0, i32 2
  %113 = call i32 @init_usb_anchor(i32* %112)
  %114 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %115 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %114, i32 0, i32 1
  %116 = call i32 @init_usb_anchor(i32* %115)
  %117 = load i32, i32* @NFCMRVL_PHY_USB, align 4
  %118 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %119 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %120 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %119, i32 0, i32 0
  %121 = call %struct.nfcmrvl_private* @nfcmrvl_nci_register_dev(i32 %117, %struct.nfcmrvl_usb_drv_data* %118, i32* @usb_ops, i32* %120, %struct.nfcmrvl_platform_data* %11)
  store %struct.nfcmrvl_private* %121, %struct.nfcmrvl_private** %8, align 8
  %122 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %8, align 8
  %123 = call i64 @IS_ERR(%struct.nfcmrvl_private* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %94
  %126 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %8, align 8
  %127 = call i32 @PTR_ERR(%struct.nfcmrvl_private* %126)
  store i32 %127, i32* %3, align 4
  br label %139

128:                                              ; preds = %94
  %129 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %8, align 8
  %130 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %131 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %130, i32 0, i32 0
  store %struct.nfcmrvl_private* %129, %struct.nfcmrvl_private** %131, align 8
  %132 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %133 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %132, i32 0, i32 0
  %134 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %133, align 8
  %135 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %134, i32 0, i32 0
  store i32 0, i32* %135, align 4
  %136 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %137 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  %138 = call i32 @usb_set_intfdata(%struct.usb_interface* %136, %struct.nfcmrvl_usb_drv_data* %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %128, %125, %91, %29
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @memset(%struct.nfcmrvl_platform_data*, i32, i32) #1

declare dso_local i32 @nfc_info(i32*, i8*, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local %struct.nfcmrvl_usb_drv_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local %struct.nfcmrvl_private* @nfcmrvl_nci_register_dev(i32, %struct.nfcmrvl_usb_drv_data*, i32*, i32*, %struct.nfcmrvl_platform_data*) #1

declare dso_local i64 @IS_ERR(%struct.nfcmrvl_private*) #1

declare dso_local i32 @PTR_ERR(%struct.nfcmrvl_private*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.nfcmrvl_usb_drv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
