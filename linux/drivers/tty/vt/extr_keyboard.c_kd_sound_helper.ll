; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_kd_sound_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_kd_sound_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { %struct.input_dev* }
%struct.input_dev = type { i32, i32 }

@EV_SND = common dso_local global i32 0, align 4
@SND_TONE = common dso_local global i32 0, align 4
@SND_BELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handle*, i8*)* @kd_sound_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kd_sound_helper(%struct.input_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.input_dev*, align 8
  store %struct.input_handle* %0, %struct.input_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load %struct.input_handle*, %struct.input_handle** %4, align 8
  %11 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %10, i32 0, i32 0
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %7, align 8
  %13 = load i32, i32* @EV_SND, align 4
  %14 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @test_bit(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = load i32, i32* @SND_TONE, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @test_bit(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.input_handle*, %struct.input_handle** %4, align 8
  %28 = load i32, i32* @EV_SND, align 4
  %29 = load i32, i32* @SND_TONE, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @input_inject_event(%struct.input_handle* %27, i32 %28, i32 %29, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %57

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* @SND_BELL, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @test_bit(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.input_handle*, %struct.input_handle** %4, align 8
  %47 = load i32, i32* @EV_SND, align 4
  %48 = load i32, i32* @SND_BELL, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = call i32 @input_inject_event(%struct.input_handle* %46, i32 %47, i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %45, %38
  br label %56

56:                                               ; preds = %55, %2
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %36
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @input_inject_event(%struct.input_handle*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
