; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_kbd_rate_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_kbd_rate_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { %struct.input_dev* }
%struct.input_dev = type { i64*, i32 }
%struct.kbd_repeat = type { i64, i64 }

@EV_REP = common dso_local global i32 0, align 4
@REP_DELAY = common dso_local global i64 0, align 8
@REP_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handle*, i8*)* @kbd_rate_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_rate_helper(%struct.input_handle* %0, i8* %1) #0 {
  %3 = alloca %struct.input_handle*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.kbd_repeat*, align 8
  store %struct.input_handle* %0, %struct.input_handle** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %8 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %7, i32 0, i32 0
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.kbd_repeat*
  store %struct.kbd_repeat* %11, %struct.kbd_repeat** %6, align 8
  %12 = load i32, i32* @EV_REP, align 4
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @test_bit(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %2
  %19 = load %struct.kbd_repeat*, %struct.kbd_repeat** %6, align 8
  %20 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %19, i64 0
  %21 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %26 = load i32, i32* @EV_REP, align 4
  %27 = load i64, i64* @REP_DELAY, align 8
  %28 = load %struct.kbd_repeat*, %struct.kbd_repeat** %6, align 8
  %29 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %28, i64 0
  %30 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @input_inject_event(%struct.input_handle* %25, i32 %26, i64 %27, i64 %31)
  br label %33

33:                                               ; preds = %24, %18
  %34 = load %struct.kbd_repeat*, %struct.kbd_repeat** %6, align 8
  %35 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %34, i64 0
  %36 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %41 = load i32, i32* @EV_REP, align 4
  %42 = load i64, i64* @REP_PERIOD, align 8
  %43 = load %struct.kbd_repeat*, %struct.kbd_repeat** %6, align 8
  %44 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %43, i64 0
  %45 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @input_inject_event(%struct.input_handle* %40, i32 %41, i64 %42, i64 %46)
  br label %48

48:                                               ; preds = %39, %33
  %49 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @REP_DELAY, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.kbd_repeat*, %struct.kbd_repeat** %6, align 8
  %56 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %55, i64 1
  %57 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @REP_PERIOD, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.kbd_repeat*, %struct.kbd_repeat** %6, align 8
  %65 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %64, i64 1
  %66 = getelementptr inbounds %struct.kbd_repeat, %struct.kbd_repeat* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %48, %2
  ret i32 0
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @input_inject_event(%struct.input_handle*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
