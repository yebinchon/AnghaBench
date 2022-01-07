; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_led_als_enabled_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_led_als_enabled_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.kbd_state = type { i32 }

@kbd_led_mutex = common dso_local global i32 0, align 4
@kbd_triggers_supported = common dso_local global i64 0, align 8
@KBD_MODE_BIT_TRIGGER_ALS = common dso_local global i32 0, align 4
@KBD_MODE_BIT_ALS = common dso_local global i32 0, align 4
@KBD_MODE_BIT_TRIGGER = common dso_local global i32 0, align 4
@kbd_previous_level = common dso_local global i32 0, align 4
@KBD_MODE_BIT_ON = common dso_local global i32 0, align 4
@kbd_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@kbd_previous_mode_bit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @kbd_led_als_enabled_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_led_als_enabled_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kbd_state, align 4
  %11 = alloca %struct.kbd_state, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoint(i8* %15, i32 0, i32* %13)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %5, align 4
  br label %93

21:                                               ; preds = %4
  %22 = call i32 @mutex_lock(i32* @kbd_led_mutex)
  %23 = call i32 @kbd_get_state(%struct.kbd_state* %11)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %90

27:                                               ; preds = %21
  %28 = load i32, i32* %13, align 4
  %29 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kbd_is_als_mode_bit(i32 %30)
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %14, align 4
  br label %90

36:                                               ; preds = %27
  %37 = bitcast %struct.kbd_state* %10 to i8*
  %38 = bitcast %struct.kbd_state* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load i64, i64* @kbd_triggers_supported, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kbd_is_trigger_mode_bit(i32 %43)
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @KBD_MODE_BIT_TRIGGER_ALS, align 4
  %53 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  br label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @KBD_MODE_BIT_ALS, align 4
  %56 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %10, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %70

58:                                               ; preds = %45
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* @KBD_MODE_BIT_TRIGGER, align 4
  %63 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @kbd_previous_level, align 4
  %65 = call i32 @kbd_set_level(%struct.kbd_state* %10, i32 %64)
  br label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @KBD_MODE_BIT_ON, align 4
  %68 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %10, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kbd_info, i32 0, i32 0), align 4
  %72 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %14, align 4
  br label %90

80:                                               ; preds = %70
  %81 = call i32 @kbd_set_state_safe(%struct.kbd_state* %10, %struct.kbd_state* %11)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %90

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* @kbd_previous_mode_bit, align 4
  %88 = load i64, i64* %9, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %85, %84, %77, %33, %26
  %91 = call i32 @mutex_unlock(i32* @kbd_led_mutex)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %19
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kbd_get_state(%struct.kbd_state*) #1

declare dso_local i32 @kbd_is_als_mode_bit(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kbd_is_trigger_mode_bit(i32) #1

declare dso_local i32 @kbd_set_level(%struct.kbd_state*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kbd_set_state_safe(%struct.kbd_state*, %struct.kbd_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
