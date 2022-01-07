; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_selection.c_paste_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_selection.c_paste_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.vc_data* }
%struct.vc_data = type { i32, i32 }
%struct.tty_ldisc = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@sel_buffer = common dso_local global i64 0, align 8
@sel_buffer_lth = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @paste_selection(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  store %struct.vc_data* %10, %struct.vc_data** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @wait, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  %14 = call i32 (...) @console_lock()
  %15 = call i32 (...) @poke_blanked_console()
  %16 = call i32 (...) @console_unlock()
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* %17)
  store %struct.tty_ldisc* %18, %struct.tty_ldisc** %7, align 8
  %19 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %20 = icmp ne %struct.tty_ldisc* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %1
  %25 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  %27 = call i32 @tty_buffer_lock_exclusive(i32* %26)
  %28 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 1
  %30 = call i32 @add_wait_queue(i32* %29, i32* @wait)
  br label %31

31:                                               ; preds = %48, %46, %24
  %32 = load i64, i64* @sel_buffer, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @sel_buffer_lth, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %64

40:                                               ; preds = %38
  %41 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %42 = call i32 @set_current_state(i32 %41)
  %43 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %44 = call i64 @tty_throttled(%struct.tty_struct* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (...) @schedule()
  br label %31

48:                                               ; preds = %40
  %49 = load i32, i32* @TASK_RUNNING, align 4
  %50 = call i32 @__set_current_state(i32 %49)
  %51 = load i32, i32* @sel_buffer_lth, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %6, align 4
  %54 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %55 = load i64, i64* @sel_buffer, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @tty_ldisc_receive_buf(%struct.tty_ldisc* %54, i64 %58, i32* null, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %31

64:                                               ; preds = %38
  %65 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 1
  %67 = call i32 @remove_wait_queue(i32* %66, i32* @wait)
  %68 = load i32, i32* @TASK_RUNNING, align 4
  %69 = call i32 @__set_current_state(i32 %68)
  %70 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 0
  %72 = call i32 @tty_buffer_unlock_exclusive(i32* %71)
  %73 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %74 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %64, %21
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @poke_blanked_console(...) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct*) #1

declare dso_local i32 @tty_buffer_lock_exclusive(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @tty_throttled(%struct.tty_struct*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @tty_ldisc_receive_buf(%struct.tty_ldisc*, i64, i32*, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @tty_buffer_unlock_exclusive(i32*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
