; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_led_timeout_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_led_timeout_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.kbd_state = type { i32, i32, i32, i32 }

@kbd_timeout_ac_supported = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"m\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"h\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @kbd_led_timeout_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_led_timeout_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kbd_state, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = call i32 @kbd_get_state(%struct.kbd_state* %8)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %74

18:                                               ; preds = %3
  %19 = load i64, i64* @kbd_timeout_ac_supported, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = call i64 (...) @power_supply_is_system_supplied()
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  br label %34

29:                                               ; preds = %21, %18
  %30 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %8, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %8, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %71 [
    i32 128, label %39
    i32 129, label %47
    i32 130, label %55
    i32 131, label %63
  ]

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %46 = add nsw i32 %40, %45
  store i32 %46, i32* %4, align 4
  br label %74

47:                                               ; preds = %34
  %48 = load i32, i32* %11, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %54 = add nsw i32 %48, %53
  store i32 %54, i32* %4, align 4
  br label %74

55:                                               ; preds = %34
  %56 = load i32, i32* %11, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %62 = add nsw i32 %56, %61
  store i32 %62, i32* %4, align 4
  br label %74

63:                                               ; preds = %34
  %64 = load i32, i32* %11, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %70 = add nsw i32 %64, %69
  store i32 %70, i32* %4, align 4
  br label %74

71:                                               ; preds = %34
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %63, %55, %47, %39, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @kbd_get_state(%struct.kbd_state*) #1

declare dso_local i64 @power_supply_is_system_supplied(...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
