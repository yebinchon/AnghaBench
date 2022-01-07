; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp-wmi.c_hp_wmi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp-wmi.c_hp_wmi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"bad event status 0x%x\0A\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown response received %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown buffer length %d\0A\00", align 1
@SW_DOCK = common dso_local global i32 0, align 4
@hp_wmi_input_dev = common dso_local global %struct.TYPE_7__* null, align 8
@HPWMI_DOCK_MASK = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@HPWMI_TABLET_MASK = common dso_local global i32 0, align 4
@HPWMI_HOTKEY_QUERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unknown key code - 0x%x\0A\00", align 1
@rfkill2_count = common dso_local global i32 0, align 4
@wifi_rfkill = common dso_local global i32 0, align 4
@HPWMI_WIFI = common dso_local global i32 0, align 4
@bluetooth_rfkill = common dso_local global i32 0, align 4
@HPWMI_BLUETOOTH = common dso_local global i32 0, align 4
@wwan_rfkill = common dso_local global i32 0, align 4
@HPWMI_WWAN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [69 x i8] c"Unimplemented CPU throttle because of 3 Cell battery event detected\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unknown event_id - %d - 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @hp_wmi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp_wmi_notify(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
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
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @AE_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i64, i64* %9, align 8
  %24 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %184

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %union.acpi_object*
  store %union.acpi_object* %28, %union.acpi_object** %8, align 8
  %29 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %30 = icmp ne %union.acpi_object* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %184

32:                                               ; preds = %25
  %33 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %34 = bitcast %union.acpi_object* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %40 = bitcast %union.acpi_object* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %44 = call i32 @kfree(%union.acpi_object* %43)
  br label %184

45:                                               ; preds = %32
  %46 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %47 = bitcast %union.acpi_object* %46 to %struct.TYPE_6__*
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %10, align 8
  %51 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %52 = bitcast %union.acpi_object* %51 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  br label %83

62:                                               ; preds = %45
  %63 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  br label %82

74:                                               ; preds = %62
  %75 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %76 = bitcast %union.acpi_object* %75 to %struct.TYPE_6__*
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %81 = call i32 @kfree(%union.acpi_object* %80)
  br label %184

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %85 = call i32 @kfree(%union.acpi_object* %84)
  %86 = load i32, i32* %6, align 4
  switch i32 %86, label %180 [
    i32 136, label %87
    i32 133, label %116
    i32 129, label %117
    i32 140, label %118
    i32 128, label %133
    i32 137, label %169
    i32 134, label %171
    i32 135, label %172
    i32 130, label %173
    i32 138, label %174
    i32 139, label %175
    i32 131, label %176
    i32 142, label %177
    i32 132, label %178
    i32 141, label %179
  ]

87:                                               ; preds = %83
  %88 = load i32, i32* @SW_DOCK, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hp_wmi_input_dev, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @test_bit(i32 %88, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hp_wmi_input_dev, align 8
  %96 = load i32, i32* @SW_DOCK, align 4
  %97 = load i32, i32* @HPWMI_DOCK_MASK, align 4
  %98 = call i32 @hp_wmi_hw_state(i32 %97)
  %99 = call i32 @input_report_switch(%struct.TYPE_7__* %95, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %94, %87
  %101 = load i32, i32* @SW_TABLET_MODE, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hp_wmi_input_dev, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @test_bit(i32 %101, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hp_wmi_input_dev, align 8
  %109 = load i32, i32* @SW_TABLET_MODE, align 4
  %110 = load i32, i32* @HPWMI_TABLET_MASK, align 4
  %111 = call i32 @hp_wmi_hw_state(i32 %110)
  %112 = call i32 @input_report_switch(%struct.TYPE_7__* %108, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hp_wmi_input_dev, align 8
  %115 = call i32 @input_sync(%struct.TYPE_7__* %114)
  br label %184

116:                                              ; preds = %83
  br label %184

117:                                              ; preds = %83
  br label %184

118:                                              ; preds = %83
  %119 = load i32, i32* @HPWMI_HOTKEY_QUERY, align 4
  %120 = call i32 @hp_wmi_read_int(i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %184

124:                                              ; preds = %118
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hp_wmi_input_dev, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @sparse_keymap_report_event(%struct.TYPE_7__* %125, i32 %126, i32 1, i32 1)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %129, %124
  br label %184

133:                                              ; preds = %83
  %134 = load i32, i32* @rfkill2_count, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call i32 (...) @hp_wmi_rfkill2_refresh()
  br label %184

138:                                              ; preds = %133
  %139 = load i32, i32* @wifi_rfkill, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32, i32* @wifi_rfkill, align 4
  %143 = load i32, i32* @HPWMI_WIFI, align 4
  %144 = call i32 @hp_wmi_get_sw_state(i32 %143)
  %145 = load i32, i32* @HPWMI_WIFI, align 4
  %146 = call i32 @hp_wmi_get_hw_state(i32 %145)
  %147 = call i32 @rfkill_set_states(i32 %142, i32 %144, i32 %146)
  br label %148

148:                                              ; preds = %141, %138
  %149 = load i32, i32* @bluetooth_rfkill, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i32, i32* @bluetooth_rfkill, align 4
  %153 = load i32, i32* @HPWMI_BLUETOOTH, align 4
  %154 = call i32 @hp_wmi_get_sw_state(i32 %153)
  %155 = load i32, i32* @HPWMI_BLUETOOTH, align 4
  %156 = call i32 @hp_wmi_get_hw_state(i32 %155)
  %157 = call i32 @rfkill_set_states(i32 %152, i32 %154, i32 %156)
  br label %158

158:                                              ; preds = %151, %148
  %159 = load i32, i32* @wwan_rfkill, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load i32, i32* @wwan_rfkill, align 4
  %163 = load i32, i32* @HPWMI_WWAN, align 4
  %164 = call i32 @hp_wmi_get_sw_state(i32 %163)
  %165 = load i32, i32* @HPWMI_WWAN, align 4
  %166 = call i32 @hp_wmi_get_hw_state(i32 %165)
  %167 = call i32 @rfkill_set_states(i32 %162, i32 %164, i32 %166)
  br label %168

168:                                              ; preds = %161, %158
  br label %184

169:                                              ; preds = %83
  %170 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  br label %184

171:                                              ; preds = %83
  br label %184

172:                                              ; preds = %83
  br label %184

173:                                              ; preds = %83
  br label %184

174:                                              ; preds = %83
  br label %184

175:                                              ; preds = %83
  br label %184

176:                                              ; preds = %83
  br label %184

177:                                              ; preds = %83
  br label %184

178:                                              ; preds = %83
  br label %184

179:                                              ; preds = %83
  br label %184

180:                                              ; preds = %83
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %22, %31, %38, %74, %180, %179, %178, %177, %176, %175, %174, %173, %172, %171, %169, %168, %136, %132, %123, %117, %116, %113
  ret void
}

declare dso_local i64 @wmi_get_event_data(i32, %struct.acpi_buffer*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @input_report_switch(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @hp_wmi_hw_state(i32) #1

declare dso_local i32 @input_sync(%struct.TYPE_7__*) #1

declare dso_local i32 @hp_wmi_read_int(i32) #1

declare dso_local i32 @sparse_keymap_report_event(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @hp_wmi_rfkill2_refresh(...) #1

declare dso_local i32 @rfkill_set_states(i32, i32, i32) #1

declare dso_local i32 @hp_wmi_get_sw_state(i32) #1

declare dso_local i32 @hp_wmi_get_hw_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
