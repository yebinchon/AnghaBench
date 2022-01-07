; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32, %struct.TYPE_8__, i32, %struct.TYPE_6__*, %struct.TYPE_8__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"led_workqueue\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@tpd_led_update = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"asus::touchpad\00", align 1
@tpd_led_set = common dso_local global i32 0, align 4
@tpd_led_get = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"asus::kbd_backlight\00", align 1
@LED_BRIGHT_HW_CHANGED = common dso_local global i32 0, align 4
@kbd_led_set = common dso_local global i32 0, align 4
@kbd_led_get = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_WIRELESS_LED = common dso_local global i32 0, align 4
@wlan_led_update = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"asus::wlan\00", align 1
@wlan_led_set = common dso_local global i32 0, align 4
@wlan_led_get = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"asus-wlan\00", align 1
@ASUS_WMI_DEVID_LIGHTBAR = common dso_local global i32 0, align 4
@lightbar_led_update = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"asus::lightbar\00", align 1
@lightbar_led_set = common dso_local global i32 0, align 4
@lightbar_led_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*)* @asus_wmi_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_led_init(%struct.asus_wmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_wmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.asus_wmi* %0, %struct.asus_wmi** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %8 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %7, i32 0, i32 10
  store i32 %6, i32* %8, align 4
  %9 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %10 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %183

16:                                               ; preds = %1
  %17 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %18 = call i64 @read_tpd_led_state(%struct.asus_wmi* %17)
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %22 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %21, i32 0, i32 9
  %23 = load i32, i32* @tpd_led_update, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %26 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @tpd_led_set, align 4
  %29 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %30 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @tpd_led_get, align 4
  %33 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %34 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %37 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %36, i32 0, i32 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %40 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %44 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %43, i32 0, i32 8
  %45 = call i32 @led_classdev_register(i32* %42, %struct.TYPE_8__* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %20
  br label %175

49:                                               ; preds = %20
  br label %50

50:                                               ; preds = %49, %16
  %51 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %52 = call i32 @kbd_led_read(%struct.asus_wmi* %51, i32* %5, i32* null)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %87, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %57 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %59 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %60, align 8
  %61 = load i32, i32* @LED_BRIGHT_HW_CHANGED, align 4
  %62 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %63 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 5
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @kbd_led_set, align 4
  %66 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %67 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @kbd_led_get, align 4
  %70 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %71 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 8
  %73 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %74 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 3, i32* %75, align 8
  %76 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %77 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %81 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %80, i32 0, i32 7
  %82 = call i32 @led_classdev_register(i32* %79, %struct.TYPE_8__* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %54
  br label %175

86:                                               ; preds = %54
  br label %87

87:                                               ; preds = %86, %50
  %88 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %89 = load i32, i32* @ASUS_WMI_DEVID_WIRELESS_LED, align 4
  %90 = call i64 @asus_wmi_dev_is_present(%struct.asus_wmi* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %143

92:                                               ; preds = %87
  %93 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %94 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %93, i32 0, i32 6
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %143

101:                                              ; preds = %92
  %102 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %103 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %102, i32 0, i32 5
  %104 = load i32, i32* @wlan_led_update, align 4
  %105 = call i32 @INIT_WORK(i32* %103, i32 %104)
  %106 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %107 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %108, align 8
  %109 = load i32, i32* @wlan_led_set, align 4
  %110 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %111 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  store i32 %109, i32* %112, align 4
  %113 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %114 = call i32 @wlan_led_unknown_state(%struct.asus_wmi* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %101
  %117 = load i32, i32* @wlan_led_get, align 4
  %118 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %119 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  store i32 %117, i32* %120, align 8
  br label %121

121:                                              ; preds = %116, %101
  %122 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %123 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %124 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 5
  store i32 %122, i32* %125, align 8
  %126 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %127 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i32 1, i32* %128, align 8
  %129 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %130 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %131, align 8
  %132 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %133 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %137 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %136, i32 0, i32 4
  %138 = call i32 @led_classdev_register(i32* %135, %struct.TYPE_8__* %137)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %121
  br label %175

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142, %92, %87
  %144 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %145 = load i32, i32* @ASUS_WMI_DEVID_LIGHTBAR, align 4
  %146 = call i64 @asus_wmi_dev_is_present(%struct.asus_wmi* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %143
  %149 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %150 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %149, i32 0, i32 3
  %151 = load i32, i32* @lightbar_led_update, align 4
  %152 = call i32 @INIT_WORK(i32* %150, i32 %151)
  %153 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %154 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %155, align 8
  %156 = load i32, i32* @lightbar_led_set, align 4
  %157 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %158 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 4
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* @lightbar_led_get, align 4
  %161 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %162 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  store i32 %160, i32* %163, align 8
  %164 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %165 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 8
  %167 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %168 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %167, i32 0, i32 2
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %172 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %171, i32 0, i32 1
  %173 = call i32 @led_classdev_register(i32* %170, %struct.TYPE_8__* %172)
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %148, %143
  br label %175

175:                                              ; preds = %174, %141, %85, %48
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %180 = call i32 @asus_wmi_led_exit(%struct.asus_wmi* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %4, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %181, %13
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i64 @read_tpd_led_state(%struct.asus_wmi*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @kbd_led_read(%struct.asus_wmi*, i32*, i32*) #1

declare dso_local i64 @asus_wmi_dev_is_present(%struct.asus_wmi*, i32) #1

declare dso_local i32 @wlan_led_unknown_state(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_led_exit(%struct.asus_wmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
