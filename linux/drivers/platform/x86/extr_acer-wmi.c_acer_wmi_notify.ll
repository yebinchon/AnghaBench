; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_wmi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_wmi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.event_return_value = type { i32, i32, i32 }
%struct.key_entry = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"bad event status 0x%x\0A\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown response received %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown buffer length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"device state: 0x%x\0A\00", align 1
@acer_wmi_input_dev = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unknown key number - 0x%x\0A\00", align 1
@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@wireless_rfkill = common dso_local global i32 0, align 4
@ACER_WMID3_GDS_WIRELESS = common dso_local global i32 0, align 4
@ACER_CAP_THREEG = common dso_local global i32 0, align 4
@threeg_rfkill = common dso_local global i32 0, align 4
@ACER_WMID3_GDS_THREEG = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@bluetooth_rfkill = common dso_local global i32 0, align 4
@ACER_WMID3_GDS_BLUETOOTH = common dso_local global i32 0, align 4
@ACER_WMID3_GDS_TOUCHPAD = common dso_local global i32 0, align 4
@KEY_TOUCHPAD_ON = common dso_local global i32 0, align 4
@KEY_TOUCHPAD_OFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Unknown function number - %d - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @acer_wmi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acer_wmi_notify(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %struct.event_return_value, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.key_entry*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @wmi_get_event_data(i32 %17, %struct.acpi_buffer* %5)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @AE_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i64, i64* %8, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %158

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %union.acpi_object*
  store %union.acpi_object* %29, %union.acpi_object** %6, align 8
  %30 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %31 = icmp ne %union.acpi_object* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %158

33:                                               ; preds = %26
  %34 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %35 = bitcast %union.acpi_object* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %41 = bitcast %union.acpi_object* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %46 = call i32 @kfree(%union.acpi_object* %45)
  br label %158

47:                                               ; preds = %33
  %48 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %49 = bitcast %union.acpi_object* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 8
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %60 = call i32 @kfree(%union.acpi_object* %59)
  br label %158

61:                                               ; preds = %47
  %62 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.event_return_value*
  %67 = bitcast %struct.event_return_value* %7 to i8*
  %68 = bitcast %struct.event_return_value* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 12, i1 false)
  %69 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %70 = call i32 @kfree(%union.acpi_object* %69)
  %71 = getelementptr inbounds %struct.event_return_value, %struct.event_return_value* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %152 [
    i32 128, label %73
    i32 129, label %150
  ]

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.event_return_value, %struct.event_return_value* %7, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @acer_wmi_input_dev, align 4
  %79 = getelementptr inbounds %struct.event_return_value, %struct.event_return_value* %7, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.key_entry* @sparse_keymap_entry_from_scancode(i32 %78, i32 %80)
  store %struct.key_entry* %81, %struct.key_entry** %10, align 8
  %82 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %83 = icmp ne %struct.key_entry* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.event_return_value, %struct.event_return_value* %7, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %149

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.event_return_value, %struct.event_return_value* %7, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  %91 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %92 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %145 [
    i32 130, label %94
    i32 132, label %94
    i32 131, label %134
  ]

94:                                               ; preds = %88, %88
  %95 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %96 = call i32 @has_cap(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32, i32* @wireless_rfkill, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @ACER_WMID3_GDS_WIRELESS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @rfkill_set_sw_state(i32 %99, i32 %105)
  br label %107

107:                                              ; preds = %98, %94
  %108 = load i32, i32* @ACER_CAP_THREEG, align 4
  %109 = call i32 @has_cap(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i32, i32* @threeg_rfkill, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @ACER_WMID3_GDS_THREEG, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @rfkill_set_sw_state(i32 %112, i32 %118)
  br label %120

120:                                              ; preds = %111, %107
  %121 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %122 = call i32 @has_cap(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i32, i32* @bluetooth_rfkill, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @ACER_WMID3_GDS_BLUETOOTH, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @rfkill_set_sw_state(i32 %125, i32 %131)
  br label %133

133:                                              ; preds = %124, %120
  br label %145

134:                                              ; preds = %88
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @ACER_WMID3_GDS_TOUCHPAD, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @KEY_TOUCHPAD_ON, align 4
  br label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @KEY_TOUCHPAD_OFF, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %143, %88, %133
  %146 = load i32, i32* @acer_wmi_input_dev, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @sparse_keymap_report_event(i32 %146, i32 %147, i32 1, i32 1)
  br label %149

149:                                              ; preds = %145, %84
  br label %158

150:                                              ; preds = %61
  %151 = call i32 (...) @acer_gsensor_event()
  br label %158

152:                                              ; preds = %61
  %153 = getelementptr inbounds %struct.event_return_value, %struct.event_return_value* %7, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.event_return_value, %struct.event_return_value* %7, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %154, i32 %156)
  br label %158

158:                                              ; preds = %22, %32, %39, %53, %152, %150, %149
  ret void
}

declare dso_local i64 @wmi_get_event_data(i32, %struct.acpi_buffer*) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.key_entry* @sparse_keymap_entry_from_scancode(i32, i32) #1

declare dso_local i32 @has_cap(i32) #1

declare dso_local i32 @rfkill_set_sw_state(i32, i32) #1

declare dso_local i32 @sparse_keymap_report_event(i32, i32, i32, i32) #1

declare dso_local i32 @acer_gsensor_event(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
