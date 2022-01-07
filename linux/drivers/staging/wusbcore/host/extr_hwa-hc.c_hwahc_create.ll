; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/extr_hwa-hc.c_hwahc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/extr_hwa-hc.c_hwahc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwahc = type { %struct.wusbhc, %struct.wahc }
%struct.wusbhc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.device* }
%struct.device = type { i32 }
%struct.wahc = type { %struct.wusbhc*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.usb_interface = type { %struct.device }
%struct.usb_device = type { i32 }

@USB_MAXCHILDREN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"FIXME: USB_MAXCHILDREN too low for WUSB adapter (%u ports)\0A\00", align 1
@__hwahc_op_wusbhc_start = common dso_local global i32 0, align 4
@__hwahc_op_wusbhc_stop = common dso_local global i32 0, align 4
@__hwahc_op_mmcie_add = common dso_local global i32 0, align 4
@__hwahc_op_mmcie_rm = common dso_local global i32 0, align 4
@__hwahc_op_dev_info_set = common dso_local global i32 0, align 4
@__hwahc_op_bwa_set = common dso_local global i32 0, align 4
@__hwahc_op_set_num_dnts = common dso_local global i32 0, align 4
@__hwahc_op_set_ptk = common dso_local global i32 0, align 4
@__hwahc_op_set_gtk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't initialize security: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Can't create WUSB HC structures: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwahc*, %struct.usb_interface*, i32)* @hwahc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwahc_create(%struct.hwahc* %0, %struct.usb_interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwahc*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.wusbhc*, align 8
  %11 = alloca %struct.wahc*, align 8
  %12 = alloca %struct.usb_device*, align 8
  store %struct.hwahc* %0, %struct.hwahc** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.hwahc*, %struct.hwahc** %5, align 8
  %16 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %15, i32 0, i32 0
  store %struct.wusbhc* %16, %struct.wusbhc** %10, align 8
  %17 = load %struct.hwahc*, %struct.hwahc** %5, align 8
  %18 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %17, i32 0, i32 1
  store %struct.wahc* %18, %struct.wahc** %11, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %20 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %19)
  store %struct.usb_device* %20, %struct.usb_device** %12, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %22 = call i32 @usb_get_dev(%struct.usb_device* %21)
  %23 = load %struct.wahc*, %struct.wahc** %11, align 8
  %24 = getelementptr inbounds %struct.wahc, %struct.wahc* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %26 = call i32 @usb_get_intf(%struct.usb_interface* %25)
  %27 = load %struct.wahc*, %struct.wahc** %11, align 8
  %28 = getelementptr inbounds %struct.wahc, %struct.wahc* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %31 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %30, i32 0, i32 12
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %33 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %32, i32 0, i32 11
  store i32* null, i32** %33, align 8
  %34 = load %struct.wahc*, %struct.wahc** %11, align 8
  %35 = call i32 @wa_fill_descr(%struct.wahc* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %141

39:                                               ; preds = %3
  %40 = load %struct.wahc*, %struct.wahc** %11, align 8
  %41 = getelementptr inbounds %struct.wahc, %struct.wahc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @USB_MAXCHILDREN, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %39
  %48 = load %struct.device*, %struct.device** %9, align 8
  %49 = load %struct.wahc*, %struct.wahc** %11, align 8
  %50 = getelementptr inbounds %struct.wahc, %struct.wahc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i64, i64* @USB_MAXCHILDREN, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %59 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %69

60:                                               ; preds = %39
  %61 = load %struct.wahc*, %struct.wahc** %11, align 8
  %62 = getelementptr inbounds %struct.wahc, %struct.wahc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %68 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %60, %47
  %70 = load %struct.wahc*, %struct.wahc** %11, align 8
  %71 = getelementptr inbounds %struct.wahc, %struct.wahc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %76 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @__hwahc_op_wusbhc_start, align 4
  %78 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %79 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @__hwahc_op_wusbhc_stop, align 4
  %81 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %82 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @__hwahc_op_mmcie_add, align 4
  %84 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %85 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @__hwahc_op_mmcie_rm, align 4
  %87 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %88 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @__hwahc_op_dev_info_set, align 4
  %90 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %91 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @__hwahc_op_bwa_set, align 4
  %93 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %94 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @__hwahc_op_set_num_dnts, align 4
  %96 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %97 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @__hwahc_op_set_ptk, align 4
  %99 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %100 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @__hwahc_op_set_gtk, align 4
  %102 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %103 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.hwahc*, %struct.hwahc** %5, align 8
  %105 = call i32 @hwahc_security_create(%struct.hwahc* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %69
  %109 = load %struct.device*, %struct.device** %9, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %140

112:                                              ; preds = %69
  %113 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %114 = load %struct.wahc*, %struct.wahc** %11, align 8
  %115 = getelementptr inbounds %struct.wahc, %struct.wahc* %114, i32 0, i32 0
  store %struct.wusbhc* %113, %struct.wusbhc** %115, align 8
  %116 = load %struct.hwahc*, %struct.hwahc** %5, align 8
  %117 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %116, i32 0, i32 0
  %118 = call i32 @wusbhc_create(%struct.wusbhc* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load %struct.device*, %struct.device** %9, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %139

125:                                              ; preds = %112
  %126 = load %struct.hwahc*, %struct.hwahc** %5, align 8
  %127 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %126, i32 0, i32 1
  %128 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @wa_create(%struct.wahc* %127, %struct.usb_interface* %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %135

134:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %147

135:                                              ; preds = %133
  %136 = load %struct.hwahc*, %struct.hwahc** %5, align 8
  %137 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %136, i32 0, i32 0
  %138 = call i32 @wusbhc_destroy(%struct.wusbhc* %137)
  br label %139

139:                                              ; preds = %135, %121
  br label %140

140:                                              ; preds = %139, %108
  br label %141

141:                                              ; preds = %140, %38
  %142 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %143 = call i32 @usb_put_intf(%struct.usb_interface* %142)
  %144 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %145 = call i32 @usb_put_dev(%struct.usb_device* %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %141, %134
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @wa_fill_descr(%struct.wahc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hwahc_security_create(%struct.hwahc*) #1

declare dso_local i32 @wusbhc_create(%struct.wusbhc*) #1

declare dso_local i32 @wa_create(%struct.wahc*, %struct.usb_interface*, i32) #1

declare dso_local i32 @wusbhc_destroy(%struct.wusbhc*) #1

declare dso_local i32 @usb_put_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
