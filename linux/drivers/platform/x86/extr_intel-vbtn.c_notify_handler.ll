; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-vbtn.c_notify_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-vbtn.c_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.intel_vbtn_priv = type { i32, i64 }
%struct.key_entry = type { i64 }

@KE_SW = common dso_local global i64 0, align 8
@KE_IGNORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"unknown event index 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.intel_vbtn_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.key_entry*, align 8
  %11 = alloca %struct.key_entry*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.platform_device*
  store %struct.platform_device* %14, %struct.platform_device** %7, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.intel_vbtn_priv* @dev_get_drvdata(i32* %16)
  store %struct.intel_vbtn_priv* %17, %struct.intel_vbtn_priv** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.intel_vbtn_priv*, %struct.intel_vbtn_priv** %8, align 8
  %24 = getelementptr inbounds %struct.intel_vbtn_priv, %struct.intel_vbtn_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %3
  %28 = load %struct.intel_vbtn_priv*, %struct.intel_vbtn_priv** %8, align 8
  %29 = getelementptr inbounds %struct.intel_vbtn_priv, %struct.intel_vbtn_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.key_entry* @sparse_keymap_entry_from_scancode(i32 %30, i32 %31)
  store %struct.key_entry* %32, %struct.key_entry** %10, align 8
  %33 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %34 = icmp ne %struct.key_entry* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @pm_wakeup_hard_event(i32* %37)
  %39 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %40 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @KE_SW, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.intel_vbtn_priv*, %struct.intel_vbtn_priv** %8, align 8
  %46 = getelementptr inbounds %struct.intel_vbtn_priv, %struct.intel_vbtn_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @sparse_keymap_report_event(i32 %47, i32 %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %44, %35
  br label %91

52:                                               ; preds = %27
  br label %86

53:                                               ; preds = %3
  %54 = load %struct.intel_vbtn_priv*, %struct.intel_vbtn_priv** %8, align 8
  %55 = getelementptr inbounds %struct.intel_vbtn_priv, %struct.intel_vbtn_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, 1
  %59 = call %struct.key_entry* @sparse_keymap_entry_from_scancode(i32 %56, i32 %58)
  store %struct.key_entry* %59, %struct.key_entry** %11, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %53
  %63 = load %struct.key_entry*, %struct.key_entry** %11, align 8
  %64 = icmp ne %struct.key_entry* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.key_entry*, %struct.key_entry** %11, align 8
  %67 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @KE_IGNORE, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i1 [ true, %62 ], [ %70, %65 ]
  br label %73

73:                                               ; preds = %71, %53
  %74 = phi i1 [ false, %53 ], [ %72, %71 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load %struct.intel_vbtn_priv*, %struct.intel_vbtn_priv** %8, align 8
  %77 = getelementptr inbounds %struct.intel_vbtn_priv, %struct.intel_vbtn_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @sparse_keymap_report_event(i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %91

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %52
  %87 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @dev_dbg(i32* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %86, %84, %51
  ret void
}

declare dso_local %struct.intel_vbtn_priv* @dev_get_drvdata(i32*) #1

declare dso_local %struct.key_entry* @sparse_keymap_entry_from_scancode(i32, i32) #1

declare dso_local i32 @pm_wakeup_hard_event(i32*) #1

declare dso_local i64 @sparse_keymap_report_event(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
