; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_register_extcon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_register_extcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_qcom = type { %struct.extcon_dev*, %struct.TYPE_4__, %struct.TYPE_4__, %struct.extcon_dev*, %struct.device* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, %struct.extcon_dev*)* }
%struct.extcon_dev = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@EXTCON_USB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"VBUS notifier register failed\0A\00", align 1
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Host notifier register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_qcom*)* @dwc3_qcom_register_extcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_qcom_register_extcon(%struct.dwc3_qcom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_qcom*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.extcon_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.dwc3_qcom* %0, %struct.dwc3_qcom** %3, align 8
  %7 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %7, i32 0, i32 4
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @of_property_read_bool(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %120

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i8* @extcon_get_edev_by_phandle(%struct.device* %17, i32 0)
  %19 = bitcast i8* %18 to %struct.extcon_dev*
  %20 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %21 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %20, i32 0, i32 0
  store %struct.extcon_dev* %19, %struct.extcon_dev** %21, align 8
  %22 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %23 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %22, i32 0, i32 0
  %24 = load %struct.extcon_dev*, %struct.extcon_dev** %23, align 8
  %25 = call i64 @IS_ERR(%struct.extcon_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %29 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %28, i32 0, i32 0
  %30 = load %struct.extcon_dev*, %struct.extcon_dev** %29, align 8
  %31 = call i32 @PTR_ERR(%struct.extcon_dev* %30)
  store i32 %31, i32* %2, align 4
  br label %120

32:                                               ; preds = %16
  %33 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %34 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 (%struct.TYPE_4__*, i32, %struct.extcon_dev*)* @dwc3_qcom_vbus_notifier, i32 (%struct.TYPE_4__*, i32, %struct.extcon_dev*)** %35, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i8* @extcon_get_edev_by_phandle(%struct.device* %36, i32 1)
  %38 = bitcast i8* %37 to %struct.extcon_dev*
  %39 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %40 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %39, i32 0, i32 3
  store %struct.extcon_dev* %38, %struct.extcon_dev** %40, align 8
  %41 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %42 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %41, i32 0, i32 3
  %43 = load %struct.extcon_dev*, %struct.extcon_dev** %42, align 8
  %44 = call i64 @IS_ERR(%struct.extcon_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %48 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %47, i32 0, i32 3
  store %struct.extcon_dev* null, %struct.extcon_dev** %48, align 8
  br label %49

49:                                               ; preds = %46, %32
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %52 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %51, i32 0, i32 0
  %53 = load %struct.extcon_dev*, %struct.extcon_dev** %52, align 8
  %54 = load i32, i32* @EXTCON_USB, align 4
  %55 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %56 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %55, i32 0, i32 1
  %57 = call i32 @devm_extcon_register_notifier(%struct.device* %50, %struct.extcon_dev* %53, i32 %54, %struct.TYPE_4__* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %120

64:                                               ; preds = %49
  %65 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %66 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %65, i32 0, i32 3
  %67 = load %struct.extcon_dev*, %struct.extcon_dev** %66, align 8
  %68 = icmp ne %struct.extcon_dev* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %71 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %70, i32 0, i32 3
  %72 = load %struct.extcon_dev*, %struct.extcon_dev** %71, align 8
  store %struct.extcon_dev* %72, %struct.extcon_dev** %5, align 8
  br label %77

73:                                               ; preds = %64
  %74 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %75 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %74, i32 0, i32 0
  %76 = load %struct.extcon_dev*, %struct.extcon_dev** %75, align 8
  store %struct.extcon_dev* %76, %struct.extcon_dev** %5, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %79 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 (%struct.TYPE_4__*, i32, %struct.extcon_dev*)* @dwc3_qcom_host_notifier, i32 (%struct.TYPE_4__*, i32, %struct.extcon_dev*)** %80, align 8
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %83 = load i32, i32* @EXTCON_USB_HOST, align 4
  %84 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %85 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %84, i32 0, i32 2
  %86 = call i32 @devm_extcon_register_notifier(%struct.device* %81, %struct.extcon_dev* %82, i32 %83, %struct.TYPE_4__* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %120

93:                                               ; preds = %77
  %94 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %95 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %94, i32 0, i32 0
  %96 = load %struct.extcon_dev*, %struct.extcon_dev** %95, align 8
  %97 = load i32, i32* @EXTCON_USB, align 4
  %98 = call i64 @extcon_get_state(%struct.extcon_dev* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %102 = load i32, i32* @EXTCON_USB_HOST, align 4
  %103 = call i64 @extcon_get_state(%struct.extcon_dev* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %107 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %106, i32 0, i32 1
  %108 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %109 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %108, i32 0, i32 0
  %110 = load %struct.extcon_dev*, %struct.extcon_dev** %109, align 8
  %111 = call i32 @dwc3_qcom_vbus_notifier(%struct.TYPE_4__* %107, i32 1, %struct.extcon_dev* %110)
  br label %119

112:                                              ; preds = %100
  %113 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %114 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %113, i32 0, i32 1
  %115 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %3, align 8
  %116 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %115, i32 0, i32 0
  %117 = load %struct.extcon_dev*, %struct.extcon_dev** %116, align 8
  %118 = call i32 @dwc3_qcom_vbus_notifier(%struct.TYPE_4__* %114, i32 0, %struct.extcon_dev* %117)
  br label %119

119:                                              ; preds = %112, %105
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %89, %60, %27, %15
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i8* @extcon_get_edev_by_phandle(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extcon_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.extcon_dev*) #1

declare dso_local i32 @dwc3_qcom_vbus_notifier(%struct.TYPE_4__*, i32, %struct.extcon_dev*) #1

declare dso_local i32 @devm_extcon_register_notifier(%struct.device*, %struct.extcon_dev*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dwc3_qcom_host_notifier(%struct.TYPE_4__*, i32, %struct.extcon_dev*) #1

declare dso_local i64 @extcon_get_state(%struct.extcon_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
