; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_kbd_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_kbd_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handler = type { i32 }
%struct.input_dev = type { i32, i32 }

@EV_SND = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@BTN_MISC = common dso_local global i32 0, align 4
@KEY_BRL_DOT1 = common dso_local global i32 0, align 4
@KEY_BRL_DOT10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handler*, %struct.input_dev*)* @kbd_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_match(%struct.input_handler* %0, %struct.input_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_handler*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.input_handler* %0, %struct.input_handler** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  %7 = load i32, i32* @EV_SND, align 4
  %8 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @test_bit(i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load i32, i32* @EV_KEY, align 4
  %16 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %14
  %22 = load i32, i32* @KEY_RESERVED, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %36, %21
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BTN_MISC, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @test_bit(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %59

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load i32, i32* @KEY_BRL_DOT1, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %54, %39
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @KEY_BRL_DOT10, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @test_bit(i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %59

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %41

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %14
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %52, %34, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
