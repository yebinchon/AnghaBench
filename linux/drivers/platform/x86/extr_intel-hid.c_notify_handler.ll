; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_notify_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.intel_hid_priv = type { i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"unknown event 0x%x\0A\00", align 1
@KEY_POWER = common dso_local global i32 0, align 4
@INTEL_HID_DSM_HDEM_FN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to get event index\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unknown event index 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.intel_hid_priv*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.platform_device*
  store %struct.platform_device* %11, %struct.platform_device** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.intel_hid_priv* @dev_get_drvdata(i32* %13)
  store %struct.intel_hid_priv* %14, %struct.intel_hid_priv** %8, align 8
  %15 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %16 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 206
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %45

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 192
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %28 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %23
  br label %125

32:                                               ; preds = %26
  %33 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %34 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @sparse_keymap_entry_from_scancode(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %125

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @pm_wakeup_hard_event(i32* %47)
  br label %125

49:                                               ; preds = %3
  %50 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %51 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 206
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %59 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @KEY_POWER, align 4
  %62 = call i32 @input_report_key(i32 %60, i32 %61, i32 1)
  %63 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %64 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @input_sync(i32 %65)
  br label %125

67:                                               ; preds = %54
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 207
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %72 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @KEY_POWER, align 4
  %75 = call i32 @input_report_key(i32 %73, i32 %74, i32 0)
  %76 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %77 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @input_sync(i32 %78)
  br label %125

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 192
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %86 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %91 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 @sparse_keymap_report_event(i32 %92, i64 %94, i32 1, i32 1)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %89, %84
  %98 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = call i32 @dev_dbg(i32* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %97, %89
  br label %125

104:                                              ; preds = %81
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @INTEL_HID_DSM_HDEM_FN, align 4
  %107 = call i32 @intel_hid_evaluate_method(i32 %105, i32 %106, i64* %9)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = call i32 @dev_warn(i32* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %125

113:                                              ; preds = %104
  %114 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %8, align 8
  %115 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @sparse_keymap_report_event(i32 %116, i64 %117, i32 1, i32 1)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %113
  %121 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @dev_dbg(i32* %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %123)
  br label %125

125:                                              ; preds = %31, %39, %45, %57, %70, %103, %109, %120, %113
  ret void
}

declare dso_local %struct.intel_hid_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @sparse_keymap_entry_from_scancode(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pm_wakeup_hard_event(i32*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @sparse_keymap_report_event(i32, i64, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @intel_hid_evaluate_method(i32, i32, i64*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
