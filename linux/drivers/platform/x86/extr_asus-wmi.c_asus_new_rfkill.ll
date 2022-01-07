; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_new_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_new_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.asus_rfkill = type { i32, %struct.asus_wmi*, %struct.rfkill* }
%struct.rfkill = type { i32 }

@ASUS_WMI_DEVID_WLAN = common dso_local global i32 0, align 4
@asus_rfkill_wlan_ops = common dso_local global i32 0, align 4
@asus_rfkill_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"asus-wlan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*, %struct.asus_rfkill*, i8*, i32, i32)* @asus_new_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_new_rfkill(%struct.asus_wmi* %0, %struct.asus_rfkill* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.asus_wmi*, align 8
  %8 = alloca %struct.asus_rfkill*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rfkill**, align 8
  store %struct.asus_wmi* %0, %struct.asus_wmi** %7, align 8
  store %struct.asus_rfkill* %1, %struct.asus_rfkill** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.asus_wmi*, %struct.asus_wmi** %7, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @asus_wmi_get_devstate_simple(%struct.asus_wmi* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.asus_rfkill*, %struct.asus_rfkill** %8, align 8
  %18 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %17, i32 0, i32 2
  store %struct.rfkill** %18, %struct.rfkill*** %13, align 8
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %106

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.asus_rfkill*, %struct.asus_rfkill** %8, align 8
  %26 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.asus_wmi*, %struct.asus_wmi** %7, align 8
  %28 = load %struct.asus_rfkill*, %struct.asus_rfkill** %8, align 8
  %29 = getelementptr inbounds %struct.asus_rfkill, %struct.asus_rfkill* %28, i32 0, i32 1
  store %struct.asus_wmi* %27, %struct.asus_wmi** %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ASUS_WMI_DEVID_WLAN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %23
  %34 = load %struct.asus_wmi*, %struct.asus_wmi** %7, align 8
  %35 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.asus_wmi*, %struct.asus_wmi** %7, align 8
  %45 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.asus_rfkill*, %struct.asus_rfkill** %8, align 8
  %50 = call %struct.rfkill* @rfkill_alloc(i8* %43, i32* %47, i32 %48, i32* @asus_rfkill_wlan_ops, %struct.asus_rfkill* %49)
  %51 = load %struct.rfkill**, %struct.rfkill*** %13, align 8
  store %struct.rfkill* %50, %struct.rfkill** %51, align 8
  br label %62

52:                                               ; preds = %33, %23
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.asus_wmi*, %struct.asus_wmi** %7, align 8
  %55 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.asus_rfkill*, %struct.asus_rfkill** %8, align 8
  %60 = call %struct.rfkill* @rfkill_alloc(i8* %53, i32* %57, i32 %58, i32* @asus_rfkill_ops, %struct.asus_rfkill* %59)
  %61 = load %struct.rfkill**, %struct.rfkill*** %13, align 8
  store %struct.rfkill* %60, %struct.rfkill** %61, align 8
  br label %62

62:                                               ; preds = %52, %42
  %63 = load %struct.rfkill**, %struct.rfkill*** %13, align 8
  %64 = load %struct.rfkill*, %struct.rfkill** %63, align 8
  %65 = icmp ne %struct.rfkill* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %106

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @ASUS_WMI_DEVID_WLAN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.asus_wmi*, %struct.asus_wmi** %7, align 8
  %75 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load %struct.rfkill**, %struct.rfkill*** %13, align 8
  %84 = load %struct.rfkill*, %struct.rfkill** %83, align 8
  %85 = call i32 @rfkill_set_led_trigger_name(%struct.rfkill* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %73, %69
  %87 = load %struct.rfkill**, %struct.rfkill*** %13, align 8
  %88 = load %struct.rfkill*, %struct.rfkill** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @rfkill_init_sw_state(%struct.rfkill* %88, i32 %92)
  %94 = load %struct.rfkill**, %struct.rfkill*** %13, align 8
  %95 = load %struct.rfkill*, %struct.rfkill** %94, align 8
  %96 = call i32 @rfkill_register(%struct.rfkill* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %86
  %100 = load %struct.rfkill**, %struct.rfkill*** %13, align 8
  %101 = load %struct.rfkill*, %struct.rfkill** %100, align 8
  %102 = call i32 @rfkill_destroy(%struct.rfkill* %101)
  %103 = load %struct.rfkill**, %struct.rfkill*** %13, align 8
  store %struct.rfkill* null, %struct.rfkill** %103, align 8
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %6, align 4
  br label %106

105:                                              ; preds = %86
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %99, %66, %21
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @asus_wmi_get_devstate_simple(%struct.asus_wmi*, i32) #1

declare dso_local %struct.rfkill* @rfkill_alloc(i8*, i32*, i32, i32*, %struct.asus_rfkill*) #1

declare dso_local i32 @rfkill_set_led_trigger_name(%struct.rfkill*, i8*) #1

declare dso_local i32 @rfkill_init_sw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
