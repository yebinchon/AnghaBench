; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_kbd_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_keyboard.c_kbd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { i32 }

@kbd_event_lock = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_RAW = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@keyboard_tasklet = common dso_local global i32 0, align 4
@do_poke_blanked_console = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_handle*, i32, i32, i32)* @kbd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kbd_event(%struct.input_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.input_handle* %0, %struct.input_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = call i32 @spin_lock(i32* @kbd_event_lock)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EV_MSC, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MSC_RAW, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.input_handle*, %struct.input_handle** %5, align 8
  %19 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @HW_RAW(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @kbd_rawcode(i32 %24)
  br label %26

26:                                               ; preds = %23, %17, %13, %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EV_KEY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.input_handle*, %struct.input_handle** %5, align 8
  %34 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @HW_RAW(i32 %35)
  %37 = call i32 @kbd_keycode(i32 %31, i32 %32, i64 %36)
  br label %38

38:                                               ; preds = %30, %26
  %39 = call i32 @spin_unlock(i32* @kbd_event_lock)
  %40 = call i32 @tasklet_schedule(i32* @keyboard_tasklet)
  store i32 1, i32* @do_poke_blanked_console, align 4
  %41 = call i32 (...) @schedule_console_callback()
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @HW_RAW(i32) #1

declare dso_local i32 @kbd_rawcode(i32) #1

declare dso_local i32 @kbd_keycode(i32, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @schedule_console_callback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
