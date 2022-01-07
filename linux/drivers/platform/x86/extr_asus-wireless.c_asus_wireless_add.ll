; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wireless.c_asus_wireless_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wireless.c_asus_wireless_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_id = type { i64, i64* }
%struct.acpi_device = type { i32, %struct.asus_wireless_data* }
%struct.asus_wireless_data = type { i32, %struct.TYPE_7__, i32, %struct.hswc_params*, %struct.TYPE_6__*, %struct.acpi_device* }
%struct.TYPE_7__ = type { i8*, i32, i8*, i32, i32, i32 }
%struct.hswc_params = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Asus Wireless Radio Control\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"asus-wireless/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ASUSTEK = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_RFKILL = common dso_local global i32 0, align 4
@device_ids = common dso_local global %struct.acpi_device_id* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"asus_wireless_workqueue\00", align 1
@led_state_update = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"asus-wireless::airplane\00", align 1
@led_state_set = common dso_local global i32 0, align 4
@led_state_get = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"rfkill-none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @asus_wireless_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wireless_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.asus_wireless_data*, align 8
  %5 = alloca %struct.acpi_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.asus_wireless_data* @devm_kzalloc(i32* %8, i32 80, i32 %9)
  store %struct.asus_wireless_data* %10, %struct.asus_wireless_data** %4, align 8
  %11 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %12 = icmp ne %struct.asus_wireless_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %164

16:                                               ; preds = %1
  %17 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %18 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 1
  store %struct.asus_wireless_data* %17, %struct.asus_wireless_data** %19, align 8
  %20 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %21 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %22 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %21, i32 0, i32 5
  store %struct.acpi_device* %20, %struct.acpi_device** %22, align 8
  %23 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 0
  %25 = call %struct.TYPE_6__* @devm_input_allocate_device(i32* %24)
  %26 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %27 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %26, i32 0, i32 4
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %27, align 8
  %28 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %29 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %16
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %164

35:                                               ; preds = %16
  %36 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %37 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %36, i32 0, i32 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %40 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %41 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %40, i32 0, i32 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %43, align 8
  %44 = load i32, i32* @BUS_HOST, align 4
  %45 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %46 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %45, i32 0, i32 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* @PCI_VENDOR_ID_ASUSTEK, align 4
  %51 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %52 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load i32, i32* @EV_KEY, align 4
  %57 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %58 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %57, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @set_bit(i32 %56, i32 %61)
  %63 = load i32, i32* @KEY_RFKILL, align 4
  %64 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %65 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %64, i32 0, i32 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @set_bit(i32 %63, i32 %68)
  %70 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %71 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %70, i32 0, i32 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @input_register_device(%struct.TYPE_6__* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %35
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %164

78:                                               ; preds = %35
  %79 = load %struct.acpi_device_id*, %struct.acpi_device_id** @device_ids, align 8
  store %struct.acpi_device_id* %79, %struct.acpi_device_id** %5, align 8
  br label %80

80:                                               ; preds = %104, %78
  %81 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %82 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %80
  %88 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %89 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = bitcast i64* %90 to i8*
  %92 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %93 = call i32 @acpi_device_hid(%struct.acpi_device* %92)
  %94 = call i32 @strcmp(i8* %91, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %87
  %97 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %98 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.hswc_params*
  %101 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %102 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %101, i32 0, i32 3
  store %struct.hswc_params* %100, %struct.hswc_params** %102, align 8
  br label %107

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.acpi_device_id*, %struct.acpi_device_id** %5, align 8
  %106 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %105, i32 1
  store %struct.acpi_device_id* %106, %struct.acpi_device_id** %5, align 8
  br label %80

107:                                              ; preds = %96, %80
  %108 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %109 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %108, i32 0, i32 3
  %110 = load %struct.hswc_params*, %struct.hswc_params** %109, align 8
  %111 = icmp ne %struct.hswc_params* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %164

113:                                              ; preds = %107
  %114 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %115 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %116 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %118 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %164

124:                                              ; preds = %113
  %125 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %126 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %125, i32 0, i32 2
  %127 = load i32, i32* @led_state_update, align 4
  %128 = call i32 @INIT_WORK(i32* %126, i32 %127)
  %129 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %130 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %131, align 8
  %132 = load i32, i32* @led_state_set, align 4
  %133 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %134 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 5
  store i32 %132, i32* %135, align 8
  %136 = load i32, i32* @led_state_get, align 4
  %137 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %138 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %141 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %142 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  store i32 %140, i32* %143, align 8
  %144 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %145 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  store i32 1, i32* %146, align 8
  %147 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %148 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %149, align 8
  %150 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %151 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %150, i32 0, i32 0
  %152 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %153 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %152, i32 0, i32 1
  %154 = call i32 @devm_led_classdev_register(i32* %151, %struct.TYPE_7__* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %124
  %158 = load %struct.asus_wireless_data*, %struct.asus_wireless_data** %4, align 8
  %159 = getelementptr inbounds %struct.asus_wireless_data, %struct.asus_wireless_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @destroy_workqueue(i32 %160)
  br label %162

162:                                              ; preds = %157, %124
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %121, %112, %76, %32, %13
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.asus_wireless_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
