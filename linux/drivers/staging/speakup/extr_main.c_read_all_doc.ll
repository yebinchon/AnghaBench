; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_read_all_doc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_read_all_doc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64 }

@fg_console = common dso_local global i64 0, align 8
@synth = common dso_local global i32 0, align 4
@spk_shut_up = common dso_local global i64 0, align 8
@cursor_track = common dso_local global i64 0, align 8
@read_all_mode = common dso_local global i64 0, align 8
@prev_cursor_track = common dso_local global i64 0, align 8
@cursor_timer = common dso_local global i32 0, align 4
@in_keyboard_notifier = common dso_local global i32 0, align 4
@RA_DOWN_ARROW = common dso_local global i32 0, align 4
@RA_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @read_all_doc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_all_doc(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %4 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @fg_console, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @synth, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i64, i64* @spk_shut_up, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %8, %1
  br label %47

15:                                               ; preds = %11
  %16 = call i32 (...) @synth_supports_indexing()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %47

19:                                               ; preds = %15
  %20 = load i64, i64* @cursor_track, align 8
  %21 = load i64, i64* @read_all_mode, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @cursor_track, align 8
  store i64 %24, i64* @prev_cursor_track, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i64, i64* @read_all_mode, align 8
  store i64 %26, i64* @cursor_track, align 8
  %27 = call i32 @spk_reset_index_count(i32 0)
  %28 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %29 = call i32 @get_sentence_buf(%struct.vc_data* %28, i32 0)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = call i32 @del_timer(i32* @cursor_timer)
  %33 = load i32, i32* @in_keyboard_notifier, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 (...) @speakup_fake_down_arrow()
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %39 = load i32, i32* @RA_DOWN_ARROW, align 4
  %40 = call i32 @start_read_all_timer(%struct.vc_data* %38, i32 %39)
  br label %47

41:                                               ; preds = %25
  %42 = call i32 @say_sentence_num(i32 0, i32 0)
  %43 = call i32 @synth_insert_next_index(i32 0)
  %44 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %45 = load i32, i32* @RA_TIMER, align 4
  %46 = call i32 @start_read_all_timer(%struct.vc_data* %44, i32 %45)
  br label %47

47:                                               ; preds = %14, %18, %41, %37
  ret void
}

declare dso_local i32 @synth_supports_indexing(...) #1

declare dso_local i32 @spk_reset_index_count(i32) #1

declare dso_local i32 @get_sentence_buf(%struct.vc_data*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @speakup_fake_down_arrow(...) #1

declare dso_local i32 @start_read_all_timer(%struct.vc_data*, i32) #1

declare dso_local i32 @say_sentence_num(i32, i32) #1

declare dso_local i32 @synth_insert_next_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
