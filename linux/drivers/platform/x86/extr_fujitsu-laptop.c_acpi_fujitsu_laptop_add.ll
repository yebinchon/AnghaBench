; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_laptop_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_acpi_fujitsu_laptop_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.fujitsu_laptop*, i32 }
%struct.fujitsu_laptop = type { i64, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fext = common dso_local global %struct.acpi_device* null, align 8
@.str = private unnamed_addr constant [79 x i8] c"More than one FUJ02E3 ACPI device was found.  Driver may not work as intended.\00", align 1
@ACPI_FUJITSU_LAPTOP_DEVICE_NAME = common dso_local global i32 0, align 4
@ACPI_FUJITSU_CLASS = common dso_local global i32 0, align 4
@RINGBUFFERSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ACPI: %s [%s]\0A\00", align 1
@FUNC_BUTTONS = common dso_local global i32 0, align 4
@MAX_HOTKEY_RINGBUFFER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Discarded %i ringbuffer entries\0A\00", align 1
@FUNC_FLAGS = common dso_local global i32 0, align 4
@UNSUPPORTED_CMD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"BTNI: [0x%x]\0A\00", align 1
@fujitsu_bl = common dso_local global %struct.TYPE_6__* null, align 8
@acpi_backlight_vendor = common dso_local global i64 0, align 8
@FUNC_BACKLIGHT = common dso_local global i32 0, align 4
@BACKLIGHT_PARAM_POWER = common dso_local global i32 0, align 4
@BACKLIGHT_OFF = common dso_local global i64 0, align 8
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_fujitsu_laptop_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_fujitsu_laptop_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.fujitsu_laptop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 2
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.fujitsu_laptop* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.fujitsu_laptop* %10, %struct.fujitsu_laptop** %4, align 8
  %11 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %12 = icmp ne %struct.fujitsu_laptop* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %160

16:                                               ; preds = %1
  %17 = load %struct.acpi_device*, %struct.acpi_device** @fext, align 8
  %18 = call i32 @WARN_ONCE(%struct.acpi_device* %17, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  store %struct.acpi_device* %19, %struct.acpi_device** @fext, align 8
  %20 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %21 = call i32 @acpi_device_name(%struct.acpi_device* %20)
  %22 = load i32, i32* @ACPI_FUJITSU_LAPTOP_DEVICE_NAME, align 4
  %23 = call i32 @strcpy(i32 %21, i32 %22)
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = call i32 @acpi_device_class(%struct.acpi_device* %24)
  %26 = load i32, i32* @ACPI_FUJITSU_CLASS, align 4
  %27 = call i32 @strcpy(i32 %25, i32 %26)
  %28 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %29 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 1
  store %struct.fujitsu_laptop* %28, %struct.fujitsu_laptop** %30, align 8
  %31 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %32 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %35 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %34, i32 0, i32 1
  %36 = load i32, i32* @RINGBUFFERSIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @kfifo_alloc(i32* %35, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %16
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %160

46:                                               ; preds = %16
  %47 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %48 = call i32 @acpi_device_name(%struct.acpi_device* %47)
  %49 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %50 = call i32 @acpi_device_bid(%struct.acpi_device* %49)
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %64, %46
  %53 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %54 = load i32, i32* @FUNC_BUTTONS, align 4
  %55 = call i64 @call_fext_func(%struct.acpi_device* %53, i32 %54, i32 1, i32 0, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @MAX_HOTKEY_RINGBUFFER_SIZE, align 4
  %61 = icmp slt i32 %58, %60
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i1 [ false, %52 ], [ %61, %57 ]
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  br label %52

65:                                               ; preds = %62
  %66 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %67 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @acpi_handle_debug(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %72 = load i32, i32* @FUNC_FLAGS, align 4
  %73 = call i64 @call_fext_func(%struct.acpi_device* %71, i32 %72, i32 0, i32 0, i32 0)
  %74 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %75 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %77 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @UNSUPPORTED_CMD, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %65
  %82 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %83 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %65
  %85 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %86 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %91 = load i32, i32* @FUNC_FLAGS, align 4
  %92 = call i64 @call_fext_func(%struct.acpi_device* %90, i32 %91, i32 4, i32 0, i32 0)
  %93 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %94 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %84
  %96 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %97 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %100 = load i32, i32* @FUNC_BUTTONS, align 4
  %101 = call i64 @call_fext_func(%struct.acpi_device* %99, i32 %100, i32 0, i32 0, i32 0)
  %102 = call i32 @acpi_handle_info(i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fujitsu_bl, align 8
  %104 = icmp ne %struct.TYPE_6__* %103, null
  br i1 %104, label %105, label %136

105:                                              ; preds = %95
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fujitsu_bl, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = icmp ne %struct.TYPE_5__* %108, null
  br i1 %109, label %110, label %136

110:                                              ; preds = %105
  %111 = call i64 (...) @acpi_video_get_backlight_type()
  %112 = load i64, i64* @acpi_backlight_vendor, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %110
  %115 = load %struct.acpi_device*, %struct.acpi_device** @fext, align 8
  %116 = load i32, i32* @FUNC_BACKLIGHT, align 4
  %117 = load i32, i32* @BACKLIGHT_PARAM_POWER, align 4
  %118 = call i64 @call_fext_func(%struct.acpi_device* %115, i32 %116, i32 2, i32 %117, i32 0)
  %119 = load i64, i64* @BACKLIGHT_OFF, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fujitsu_bl, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 %122, i32* %127, align 4
  br label %135

128:                                              ; preds = %114
  %129 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fujitsu_bl, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %121
  br label %136

136:                                              ; preds = %135, %110, %105, %95
  %137 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %138 = call i32 @acpi_fujitsu_laptop_input_setup(%struct.acpi_device* %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %155

142:                                              ; preds = %136
  %143 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %144 = call i32 @acpi_fujitsu_laptop_leds_register(%struct.acpi_device* %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %155

148:                                              ; preds = %142
  %149 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %150 = call i32 @fujitsu_laptop_platform_add(%struct.acpi_device* %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %155

154:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %160

155:                                              ; preds = %153, %147, %141
  %156 = load %struct.fujitsu_laptop*, %struct.fujitsu_laptop** %4, align 8
  %157 = getelementptr inbounds %struct.fujitsu_laptop, %struct.fujitsu_laptop* %156, i32 0, i32 1
  %158 = call i32 @kfifo_free(i32* %157)
  %159 = load i32, i32* %5, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %155, %154, %44, %13
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.fujitsu_laptop* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @WARN_ONCE(%struct.acpi_device*, i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @acpi_device_bid(%struct.acpi_device*) #1

declare dso_local i64 @call_fext_func(%struct.acpi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*, i32) #1

declare dso_local i32 @acpi_handle_info(i32, i8*, i64) #1

declare dso_local i64 @acpi_video_get_backlight_type(...) #1

declare dso_local i32 @acpi_fujitsu_laptop_input_setup(%struct.acpi_device*) #1

declare dso_local i32 @acpi_fujitsu_laptop_leds_register(%struct.acpi_device*) #1

declare dso_local i32 @fujitsu_laptop_platform_add(%struct.acpi_device*) #1

declare dso_local i32 @kfifo_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
