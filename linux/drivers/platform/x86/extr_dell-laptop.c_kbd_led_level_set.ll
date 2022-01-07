; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_led_level_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_led_level_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.kbd_state = type { i32 }

@kbd_led_mutex = common dso_local global i32 0, align 4
@kbd_token_bits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Keyboard brightness level control not supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@kbd_led_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @kbd_led_level_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_led_level_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kbd_state, align 4
  %7 = alloca %struct.kbd_state, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 @mutex_lock(i32* @kbd_led_mutex)
  %12 = call i64 (...) @kbd_get_max_level()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = call i32 @kbd_get_state(%struct.kbd_state* %6)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %66

19:                                               ; preds = %14
  %20 = bitcast %struct.kbd_state* %7 to i8*
  %21 = bitcast %struct.kbd_state* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @kbd_set_level(%struct.kbd_state* %7, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %66

27:                                               ; preds = %19
  %28 = call i32 @kbd_set_state_safe(%struct.kbd_state* %7, %struct.kbd_state* %6)
  store i32 %28, i32* %9, align 4
  br label %65

29:                                               ; preds = %2
  %30 = call i64 (...) @kbd_get_valid_token_counts()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load i32, i32* @kbd_token_bits, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %47, %32
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp ugt i32 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %50

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %4, align 4
  br label %34

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @ffs(i32 %55)
  %57 = sub nsw i64 %56, 1
  %58 = call i32 @kbd_set_token_bit(i64 %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %53
  br label %64

60:                                               ; preds = %29
  %61 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %59
  br label %65

65:                                               ; preds = %64, %27
  br label %66

66:                                               ; preds = %65, %26, %18
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* @kbd_led_level, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = call i32 @mutex_unlock(i32* @kbd_led_mutex)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @kbd_get_max_level(...) #1

declare dso_local i32 @kbd_get_state(%struct.kbd_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kbd_set_level(%struct.kbd_state*, i32) #1

declare dso_local i32 @kbd_set_state_safe(%struct.kbd_state*, %struct.kbd_state*) #1

declare dso_local i64 @kbd_get_valid_token_counts(...) #1

declare dso_local i32 @kbd_set_token_bit(i64) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
