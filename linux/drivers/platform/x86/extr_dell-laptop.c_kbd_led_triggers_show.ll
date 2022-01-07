; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_led_triggers_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_led_triggers_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.kbd_state = type { i32, i32 }

@kbd_triggers_supported = common dso_local global i64 0, align 8
@kbd_led_triggers = common dso_local global i8** null, align 8
@kbd_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @kbd_led_triggers_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_led_triggers_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kbd_state, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = call i32 @kbd_get_state(%struct.kbd_state* %8)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %4, align 4
  br label %102

19:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  %20 = load i64, i64* @kbd_triggers_supported, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %91

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kbd_is_trigger_mode_bit(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = call i32 @kbd_get_level(%struct.kbd_state* %8)
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %87, %22
  %28 = load i32, i32* %11, align 4
  %29 = load i8**, i8*** @kbd_led_triggers, align 8
  %30 = call i32 @ARRAY_SIZE(i8** %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %27
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kbd_info, i32 0, i32 0), align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %87

39:                                               ; preds = %32
  %40 = load i8**, i8*** @kbd_led_triggers, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %87

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50, %47
  %54 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 43, i8* %65, align 1
  br label %72

66:                                               ; preds = %53, %50
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 45, i8* %71, align 1
  br label %72

72:                                               ; preds = %66, %60
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8**, i8*** @kbd_led_triggers, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @sprintf(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %72, %46, %38
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %27

90:                                               ; preds = %27
  br label %91

91:                                               ; preds = %90, %19
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8 10, i8* %99, align 1
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %17
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @kbd_get_state(%struct.kbd_state*) #1

declare dso_local i32 @kbd_is_trigger_mode_bit(i32) #1

declare dso_local i32 @kbd_get_level(%struct.kbd_state*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
