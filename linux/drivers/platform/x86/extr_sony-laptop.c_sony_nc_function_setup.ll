; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_function_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_function_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.acpi_device = type { i32 }
%struct.platform_device = type { i32 }

@handles = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"setting up handle 0x%.4x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"couldn't set up touchpad control function (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"couldn't set up battery care function (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"couldn't set up lid resume function (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"couldn't set up thermal profile function (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"couldn't set up GFX Switch status (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"couldn't set up high speed charging function (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"couldn't set up rfkill support (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"couldn't set up keyboard backlight function (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"couldn't set up low battery function (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"couldn't set up fan speed function (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"couldn't set up USB charge support (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"couldn't set up panel ID function (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"couldn't set up smart connect support (%d)\0A\00", align 1
@sony_nc_acpi_handle = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"SN00\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"SN02\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, %struct.platform_device*)* @sony_nc_function_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_nc_function_setup(%struct.acpi_device* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @handles, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %177

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %167, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @handles, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp ult i32 %15, %19
  br i1 %20, label %21, label %170

21:                                               ; preds = %14
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @handles, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %167

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %165 [
    i32 256, label %36
    i32 257, label %36
    i32 295, label %36
    i32 258, label %39
    i32 261, label %42
    i32 328, label %42
    i32 277, label %52
    i32 310, label %52
    i32 319, label %52
    i32 281, label %62
    i32 349, label %62
    i32 290, label %72
    i32 296, label %81
    i32 326, label %81
    i32 347, label %81
    i32 305, label %91
    i32 292, label %100
    i32 309, label %100
    i32 311, label %110
    i32 323, label %110
    i32 331, label %110
    i32 332, label %110
    i32 339, label %110
    i32 355, label %110
    i32 289, label %120
    i32 329, label %129
    i32 341, label %138
    i32 285, label %147
    i32 360, label %156
  ]

36:                                               ; preds = %32, %32, %32
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @sony_call_snc_handle(i32 %37, i32 0, i32* %6)
  br label %166

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @sony_call_snc_handle(i32 %40, i32 256, i32* %6)
  br label %166

42:                                               ; preds = %32, %32
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @sony_nc_touchpad_setup(%struct.platform_device* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %42
  br label %166

52:                                               ; preds = %32, %32, %32
  %53 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @sony_nc_battery_care_setup(%struct.platform_device* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %52
  br label %166

62:                                               ; preds = %32, %32
  %63 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @sony_nc_lid_resume_setup(%struct.platform_device* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %166

72:                                               ; preds = %32
  %73 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %74 = call i32 @sony_nc_thermal_setup(%struct.platform_device* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %166

81:                                               ; preds = %32, %32, %32
  %82 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @sony_nc_gfx_switch_setup(%struct.platform_device* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %81
  br label %166

91:                                               ; preds = %32
  %92 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %93 = call i32 @sony_nc_highspeed_charging_setup(%struct.platform_device* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %96, %91
  br label %166

100:                                              ; preds = %32, %32
  %101 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @sony_nc_rfkill_setup(%struct.acpi_device* %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %100
  br label %166

110:                                              ; preds = %32, %32, %32, %32, %32, %32
  %111 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @sony_nc_kbd_backlight_setup(%struct.platform_device* %111, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %110
  br label %166

120:                                              ; preds = %32
  %121 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %122 = call i32 @sony_nc_lowbatt_setup(%struct.platform_device* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %120
  br label %166

129:                                              ; preds = %32
  %130 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %131 = call i32 @sony_nc_fanspeed_setup(%struct.platform_device* %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %134, %129
  br label %166

138:                                              ; preds = %32
  %139 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %140 = call i32 @sony_nc_usb_charge_setup(%struct.platform_device* %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %143, %138
  br label %166

147:                                              ; preds = %32
  %148 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %149 = call i32 @sony_nc_panelid_setup(%struct.platform_device* %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %152, %147
  br label %166

156:                                              ; preds = %32
  %157 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %158 = call i32 @sony_nc_smart_conn_setup(%struct.platform_device* %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %161, %156
  br label %166

165:                                              ; preds = %32
  br label %167

166:                                              ; preds = %164, %155, %146, %137, %128, %119, %109, %99, %90, %80, %71, %61, %51, %39, %36
  br label %167

167:                                              ; preds = %166, %165, %31
  %168 = load i32, i32* %5, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %14

170:                                              ; preds = %14
  store i32 16, i32* %8, align 4
  %171 = load i32, i32* @sony_nc_acpi_handle, align 4
  %172 = call i32 @sony_nc_int_call(i32 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %8, i32* %7)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* @sony_nc_acpi_handle, align 4
  %176 = call i32 @sony_nc_int_call(i32 %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32* %7, i32* %6)
  br label %177

177:                                              ; preds = %12, %174, %170
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @sony_call_snc_handle(i32, i32, i32*) #1

declare dso_local i32 @sony_nc_touchpad_setup(%struct.platform_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @sony_nc_battery_care_setup(%struct.platform_device*, i32) #1

declare dso_local i32 @sony_nc_lid_resume_setup(%struct.platform_device*, i32) #1

declare dso_local i32 @sony_nc_thermal_setup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_gfx_switch_setup(%struct.platform_device*, i32) #1

declare dso_local i32 @sony_nc_highspeed_charging_setup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_rfkill_setup(%struct.acpi_device*, i32) #1

declare dso_local i32 @sony_nc_kbd_backlight_setup(%struct.platform_device*, i32) #1

declare dso_local i32 @sony_nc_lowbatt_setup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_fanspeed_setup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_usb_charge_setup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_panelid_setup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_smart_conn_setup(%struct.platform_device*) #1

declare dso_local i32 @sony_nc_int_call(i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
