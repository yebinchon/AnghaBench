; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_setup_keyboard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_setup_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry = type { i32 }
%struct.toshiba_acpi_dev = type { i64, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@toshiba_acpi_keymap = common dso_local global %struct.key_entry* null, align 8
@disable_hotkeys = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Hotkeys disabled by module parameter\0A\00", align 1
@TOSHIBA_WMI_EVENT_GUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"WMI event detected, hotkeys will not be monitored\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to query Hotkey Event Type\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Toshiba input device\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"toshiba_acpi/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@HCI_SYSTEM_TYPE1 = common dso_local global i64 0, align 8
@HCI_SYSTEM_TYPE2 = common dso_local global i64 0, align 8
@toshiba_acpi_alt_keymap = common dso_local global %struct.key_entry* null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Unknown event type received %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"NTFY\00", align 1
@toshiba_acpi_hotkey_work = common dso_local global i32 0, align 4
@toshiba_acpi_i8042_filter = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Error installing key filter\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@HCI_SYSTEM_EVENT = common dso_local global i32 0, align 4
@TOS_SUCCESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"No hotkey query interface found\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Unable to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.toshiba_acpi_dev*)* @toshiba_acpi_setup_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_acpi_setup_keyboard(%struct.toshiba_acpi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.toshiba_acpi_dev*, align 8
  %4 = alloca %struct.key_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %3, align 8
  %7 = load %struct.key_entry*, %struct.key_entry** @toshiba_acpi_keymap, align 8
  store %struct.key_entry* %7, %struct.key_entry** %4, align 8
  %8 = load i64, i64* @disable_hotkeys, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %181

12:                                               ; preds = %1
  %13 = load i32, i32* @TOSHIBA_WMI_EVENT_GUID, align 4
  %14 = call i64 @wmi_has_guid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %181

18:                                               ; preds = %12
  %19 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %20 = call i32 @toshiba_acpi_enable_hotkeys(%struct.toshiba_acpi_dev* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %181

25:                                               ; preds = %18
  %26 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %27 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %28 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %27, i32 0, i32 0
  %29 = call i64 @toshiba_hotkey_event_type_get(%struct.toshiba_acpi_dev* %26, i64* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @pr_notice(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  %34 = call %struct.TYPE_9__* (...) @input_allocate_device()
  %35 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %36 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %35, i32 0, i32 4
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %36, align 8
  %37 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %38 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %37, i32 0, i32 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %181

44:                                               ; preds = %33
  %45 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %46 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %48, align 8
  %49 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %50 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %49, i32 0, i32 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %52, align 8
  %53 = load i32, i32* @BUS_HOST, align 4
  %54 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %55 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %54, i32 0, i32 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 8
  %59 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %60 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HCI_SYSTEM_TYPE1, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %44
  %65 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %66 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64, %44
  %70 = load %struct.key_entry*, %struct.key_entry** @toshiba_acpi_keymap, align 8
  store %struct.key_entry* %70, %struct.key_entry** %4, align 8
  br label %90

71:                                               ; preds = %64
  %72 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %73 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HCI_SYSTEM_TYPE2, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %79 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77, %71
  %83 = load %struct.key_entry*, %struct.key_entry** @toshiba_acpi_alt_keymap, align 8
  store %struct.key_entry* %83, %struct.key_entry** %4, align 8
  br label %89

84:                                               ; preds = %77
  %85 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %86 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %84, %82
  br label %90

90:                                               ; preds = %89, %69
  %91 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %92 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %91, i32 0, i32 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load %struct.key_entry*, %struct.key_entry** %4, align 8
  %95 = call i32 @sparse_keymap_setup(%struct.TYPE_9__* %93, %struct.key_entry* %94, i32* null)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %173

99:                                               ; preds = %90
  %100 = call i64 (...) @ec_get_handle()
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load i64, i64* %5, align 8
  %105 = call i64 @acpi_has_method(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %109 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %108, i32 0, i32 6
  %110 = load i32, i32* @toshiba_acpi_hotkey_work, align 4
  %111 = call i32 @INIT_WORK(i32* %109, i32 %110)
  %112 = load i32, i32* @toshiba_acpi_i8042_filter, align 4
  %113 = call i32 @i8042_install_filter(i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %173

118:                                              ; preds = %107
  %119 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %120 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %119, i32 0, i32 1
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %103, %99
  %122 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %123 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %122, i32 0, i32 5
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @acpi_has_method(i64 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %131 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %130, i32 0, i32 2
  store i32 1, i32* %131, align 4
  br label %142

132:                                              ; preds = %121
  %133 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %134 = load i32, i32* @HCI_SYSTEM_EVENT, align 4
  %135 = call i64 @hci_write(%struct.toshiba_acpi_dev* %133, i32 %134, i32 1)
  %136 = load i64, i64* @TOS_SUCCESS, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %140 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %139, i32 0, i32 3
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %138, %132
  br label %142

142:                                              ; preds = %141, %129
  %143 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %144 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %142
  %148 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %149 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %147
  %153 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %164

154:                                              ; preds = %147, %142
  %155 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %156 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %155, i32 0, i32 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = call i32 @input_register_device(%struct.TYPE_9__* %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %164

163:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %181

164:                                              ; preds = %161, %152
  %165 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %166 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32, i32* @toshiba_acpi_i8042_filter, align 4
  %171 = call i32 @i8042_remove_filter(i32 %170)
  br label %172

172:                                              ; preds = %169, %164
  br label %173

173:                                              ; preds = %172, %116, %98
  %174 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %175 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %174, i32 0, i32 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = call i32 @input_free_device(%struct.TYPE_9__* %176)
  %178 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %179 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %178, i32 0, i32 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %179, align 8
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %173, %163, %41, %23, %16, %10
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @wmi_has_guid(i32) #1

declare dso_local i32 @toshiba_acpi_enable_hotkeys(%struct.toshiba_acpi_dev*) #1

declare dso_local i64 @toshiba_hotkey_event_type_get(%struct.toshiba_acpi_dev*, i64*) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local %struct.TYPE_9__* @input_allocate_device(...) #1

declare dso_local i32 @sparse_keymap_setup(%struct.TYPE_9__*, %struct.key_entry*, i32*) #1

declare dso_local i64 @ec_get_handle(...) #1

declare dso_local i64 @acpi_has_method(i64, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @i8042_install_filter(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @hci_write(%struct.toshiba_acpi_dev*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_9__*) #1

declare dso_local i32 @i8042_remove_filter(i32) #1

declare dso_local i32 @input_free_device(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
