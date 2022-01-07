; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_handle_event_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_handle_event_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i64, i32, i32, %struct.TYPE_6__*, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 (%struct.TYPE_6__*, i32*, i32*, i32*)* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@ASUS_WMI_KEY_IGNORE = common dso_local global i32 0, align 4
@NOTIFY_BRNUP_MIN = common dso_local global i32 0, align 4
@NOTIFY_BRNUP_MAX = common dso_local global i32 0, align 4
@ASUS_WMI_BRN_UP = common dso_local global i32 0, align 4
@NOTIFY_BRNDOWN_MIN = common dso_local global i32 0, align 4
@NOTIFY_BRNDOWN_MAX = common dso_local global i32 0, align 4
@ASUS_WMI_BRN_DOWN = common dso_local global i32 0, align 4
@acpi_backlight_vendor = common dso_local global i64 0, align 8
@NOTIFY_KBD_BRTUP = common dso_local global i32 0, align 4
@NOTIFY_KBD_BRTDWN = common dso_local global i32 0, align 4
@NOTIFY_KBD_BRTTOGGLE = common dso_local global i32 0, align 4
@NOTIFY_FNLOCK_TOGGLE = common dso_local global i32 0, align 4
@NOTIFY_KBD_FBM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown key %x pressed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.asus_wmi*)* @asus_wmi_handle_event_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_wmi_handle_event_code(i32 %0, %struct.asus_wmi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asus_wmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.asus_wmi* %1, %struct.asus_wmi** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %10 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32 (%struct.TYPE_6__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*, i32*)** %12, align 8
  %14 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32*, i32*)* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %17 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %16, i32 0, i32 3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32 (%struct.TYPE_6__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32*, i32*)** %19, align 8
  %21 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %22 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 %20(%struct.TYPE_6__* %23, i32* %3, i32* %6, i32* %7)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ASUS_WMI_KEY_IGNORE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %167

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @NOTIFY_BRNUP_MIN, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @NOTIFY_BRNUP_MAX, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @ASUS_WMI_BRN_UP, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @NOTIFY_BRNDOWN_MIN, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @NOTIFY_BRNDOWN_MAX, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @ASUS_WMI_BRN_DOWN, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %44, %40
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @ASUS_WMI_BRN_DOWN, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @ASUS_WMI_BRN_UP, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55, %51
  %60 = call i64 (...) @acpi_video_get_backlight_type()
  %61 = load i64, i64* @acpi_backlight_vendor, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @asus_wmi_backlight_notify(%struct.asus_wmi* %64, i32 %65)
  br label %167

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @NOTIFY_KBD_BRTUP, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %74 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %75 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = call i32 @kbd_led_set_by_kbd(%struct.asus_wmi* %73, i64 %77)
  br label %167

79:                                               ; preds = %68
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @NOTIFY_KBD_BRTDWN, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %85 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %86 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, 1
  %89 = call i32 @kbd_led_set_by_kbd(%struct.asus_wmi* %84, i64 %88)
  br label %167

90:                                               ; preds = %79
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @NOTIFY_KBD_BRTTOGGLE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %96 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %99 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %97, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %105 = call i32 @kbd_led_set_by_kbd(%struct.asus_wmi* %104, i64 0)
  br label %113

106:                                              ; preds = %94
  %107 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %108 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %109 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  %112 = call i32 @kbd_led_set_by_kbd(%struct.asus_wmi* %107, i64 %111)
  br label %113

113:                                              ; preds = %106, %103
  br label %167

114:                                              ; preds = %90
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @NOTIFY_FNLOCK_TOGGLE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %120 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %126 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %128 = call i32 @asus_wmi_fnlock_update(%struct.asus_wmi* %127)
  br label %167

129:                                              ; preds = %114
  %130 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %131 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @NOTIFY_KBD_FBM, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %140 = call i32 @fan_boost_mode_switch_next(%struct.asus_wmi* %139)
  br label %167

141:                                              ; preds = %134, %129
  %142 = load i32, i32* %3, align 4
  %143 = call i64 @is_display_toggle(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %147 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %146, i32 0, i32 3
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %167

155:                                              ; preds = %145, %141
  %156 = load %struct.asus_wmi*, %struct.asus_wmi** %4, align 8
  %157 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @sparse_keymap_report_event(i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %28, %63, %72, %83, %113, %118, %138, %154, %164, %155
  ret void
}

declare dso_local i64 @acpi_video_get_backlight_type(...) #1

declare dso_local i32 @asus_wmi_backlight_notify(%struct.asus_wmi*, i32) #1

declare dso_local i32 @kbd_led_set_by_kbd(%struct.asus_wmi*, i64) #1

declare dso_local i32 @asus_wmi_fnlock_update(%struct.asus_wmi*) #1

declare dso_local i32 @fan_boost_mode_switch_next(%struct.asus_wmi*) #1

declare dso_local i64 @is_display_toggle(i32) #1

declare dso_local i32 @sparse_keymap_report_event(i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
