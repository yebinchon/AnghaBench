; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_kbd_update_leds_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_kbd_update_leds_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EV_LED = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@SYN_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handle*, i8*)* @kbd_update_leds_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_update_leds_helper(%struct.input_handle* %0, i8* %1) #0 {
  %3 = alloca %struct.input_handle*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.input_handle* %0, %struct.input_handle** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @EV_LED, align 4
  %10 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %11 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @test_bit(i32 %9, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %19 = load i32, i32* @EV_LED, align 4
  %20 = load i32, i32* @LED_SCROLLL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @input_inject_event(%struct.input_handle* %18, i32 %19, i32 %20, i32 %26)
  %28 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %29 = load i32, i32* @EV_LED, align 4
  %30 = load i32, i32* @LED_NUML, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @input_inject_event(%struct.input_handle* %28, i32 %29, i32 %30, i32 %36)
  %38 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %39 = load i32, i32* @EV_LED, align 4
  %40 = load i32, i32* @LED_CAPSL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @input_inject_event(%struct.input_handle* %38, i32 %39, i32 %40, i32 %46)
  %48 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %49 = load i32, i32* @EV_SYN, align 4
  %50 = load i32, i32* @SYN_REPORT, align 4
  %51 = call i32 @input_inject_event(%struct.input_handle* %48, i32 %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %17, %2
  ret i32 0
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @input_inject_event(%struct.input_handle*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
