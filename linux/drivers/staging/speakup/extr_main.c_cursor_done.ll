; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_cursor_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_cursor_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timer_list = type { i32 }

@vc_cons = common dso_local global %struct.TYPE_3__* null, align 8
@cursor_con = common dso_local global i64 0, align 8
@cursor_timer = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@fg_console = common dso_local global i64 0, align 8
@is_cursor = common dso_local global i32 0, align 4
@win_enabled = common dso_local global i64 0, align 8
@win_left = common dso_local global i64 0, align 8
@win_right = common dso_local global i64 0, align 8
@win_top = common dso_local global i64 0, align 8
@win_bottom = common dso_local global i64 0, align 8
@spk_keydown = common dso_local global i64 0, align 8
@cursor_track = common dso_local global i64 0, align 8
@read_all_mode = common dso_local global i64 0, align 8
@read_all_key = common dso_local global i32 0, align 4
@CT_Highlight = common dso_local global i64 0, align 8
@CT_Window = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @cursor_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cursor_done(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vc_cons, align 8
  %6 = load i64, i64* @cursor_con, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  store %struct.vc_data* %9, %struct.vc_data** %3, align 8
  %10 = call i32 @del_timer(i32* @cursor_timer)
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %11)
  %13 = load i64, i64* @cursor_con, align 8
  %14 = load i64, i64* @fg_console, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* @is_cursor, align 4
  br label %90

17:                                               ; preds = %1
  %18 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %19 = call i32 @speakup_date(%struct.vc_data* %18)
  %20 = load i64, i64* @win_enabled, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @win_left, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @win_right, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @win_top, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @win_bottom, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i64 0, i64* @spk_keydown, align 8
  store i32 0, i32* @is_cursor, align 4
  br label %90

47:                                               ; preds = %40, %34, %28, %22
  br label %48

48:                                               ; preds = %47, %17
  %49 = load i64, i64* @cursor_track, align 8
  %50 = load i64, i64* @read_all_mode, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %54 = load i32, i32* @read_all_key, align 4
  %55 = call i32 @handle_cursor_read_all(%struct.vc_data* %53, i32 %54)
  br label %90

56:                                               ; preds = %48
  %57 = load i64, i64* @cursor_track, align 8
  %58 = load i64, i64* @CT_Highlight, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %62 = call i64 @speak_highlight(%struct.vc_data* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i64 0, i64* @spk_keydown, align 8
  store i32 0, i32* @is_cursor, align 4
  br label %90

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i64, i64* @cursor_track, align 8
  %68 = load i64, i64* @CT_Window, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %72 = call i32 @speakup_win_say(%struct.vc_data* %71)
  br label %89

73:                                               ; preds = %66
  %74 = load i32, i32* @is_cursor, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @is_cursor, align 4
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %79, label %85

79:                                               ; preds = %76, %73
  %80 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %81 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %82 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @say_line_from_to(%struct.vc_data* %80, i32 0, i32 %83, i32 0)
  br label %88

85:                                               ; preds = %76
  %86 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %87 = call i32 @say_char(%struct.vc_data* %86)
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88, %70
  store i64 0, i64* @spk_keydown, align 8
  store i32 0, i32* @is_cursor, align 4
  br label %90

90:                                               ; preds = %89, %64, %52, %46, %16
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %91)
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @speakup_date(%struct.vc_data*) #1

declare dso_local i32 @handle_cursor_read_all(%struct.vc_data*, i32) #1

declare dso_local i64 @speak_highlight(%struct.vc_data*) #1

declare dso_local i32 @speakup_win_say(%struct.vc_data*) #1

declare dso_local i32 @say_line_from_to(%struct.vc_data*, i32, i32, i32) #1

declare dso_local i32 @say_char(%struct.vc_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
