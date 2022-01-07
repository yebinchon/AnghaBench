; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_set_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_set_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.kbd_state = type { i64, i64 }

@kbd_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@kbd_previous_level = common dso_local global i64 0, align 8
@KBD_MODE_BIT_OFF = common dso_local global i64 0, align 8
@kbd_previous_mode_bit = common dso_local global i64 0, align 8
@kbd_mode_levels_count = common dso_local global i64 0, align 8
@kbd_mode_levels = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kbd_state*, i64)* @kbd_set_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_set_level(%struct.kbd_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kbd_state*, align 8
  %5 = alloca i64, align 8
  store %struct.kbd_state* %0, %struct.kbd_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kbd_info, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* @kbd_previous_level, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = load %struct.kbd_state*, %struct.kbd_state** %4, align 8
  %15 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %76

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.kbd_state*, %struct.kbd_state** %4, align 8
  %23 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.kbd_state*, %struct.kbd_state** %4, align 8
  %28 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @KBD_MODE_BIT_OFF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* @kbd_previous_mode_bit, align 8
  %34 = load %struct.kbd_state*, %struct.kbd_state** %4, align 8
  %35 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %53

36:                                               ; preds = %26, %20
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.kbd_state*, %struct.kbd_state** %4, align 8
  %41 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @KBD_MODE_BIT_OFF, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.kbd_state*, %struct.kbd_state** %4, align 8
  %47 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* @kbd_previous_mode_bit, align 8
  %49 = load i64, i64* @KBD_MODE_BIT_OFF, align 8
  %50 = load %struct.kbd_state*, %struct.kbd_state** %4, align 8
  %51 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %45, %39, %36
  br label %53

53:                                               ; preds = %52, %32
  store i32 0, i32* %3, align 4
  br label %76

54:                                               ; preds = %2
  %55 = load i64, i64* @kbd_mode_levels_count, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @kbd_mode_levels_count, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64, i64* %5, align 8
  store i64 %65, i64* @kbd_previous_level, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i64*, i64** @kbd_mode_levels, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.kbd_state*, %struct.kbd_state** %4, align 8
  %72 = getelementptr inbounds %struct.kbd_state, %struct.kbd_state* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  store i32 0, i32* %3, align 4
  br label %76

73:                                               ; preds = %57, %54
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %66, %53, %19
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
