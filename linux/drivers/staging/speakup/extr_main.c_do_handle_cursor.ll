; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_do_handle_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_do_handle_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vc_data = type { i64, i32, i32, i32 }
%struct.var_t = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@speakup_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@spk_parked = common dso_local global i32 0, align 4
@synth = common dso_local global i32 0, align 4
@spk_shut_up = common dso_local global i32 0, align 4
@cursor_track = common dso_local global i64 0, align 8
@CT_Off = common dso_local global i64 0, align 8
@spk_no_intr = common dso_local global i64 0, align 8
@is_cursor = common dso_local global i64 0, align 8
@old_cursor_pos = common dso_local global i32 0, align 4
@old_cursor_x = common dso_local global i32 0, align 4
@old_cursor_y = common dso_local global i32 0, align 4
@speakup_console = common dso_local global %struct.TYPE_10__** null, align 8
@cursor_con = common dso_local global i64 0, align 8
@CT_Highlight = common dso_local global i64 0, align 8
@CURSOR_TIME = common dso_local global i32 0, align 4
@cursor_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i64, i8)* @do_handle_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_handle_cursor(%struct.vc_data* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca %struct.var_t*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @speakup_info, i32 0, i32 0), i64 %9)
  %11 = load i32, i32* @spk_parked, align 4
  %12 = and i32 %11, 254
  store i32 %12, i32* @spk_parked, align 4
  %13 = load i32, i32* @synth, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i8, i8* %6, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @spk_shut_up, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @cursor_track, align 8
  %24 = load i64, i64* @CT_Off, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %19, %15, %3
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @speakup_info, i32 0, i32 0), i64 %27)
  br label %82

29:                                               ; preds = %22
  %30 = load i32, i32* @spk_shut_up, align 4
  %31 = and i32 %30, 254
  store i32 %31, i32* @spk_shut_up, align 4
  %32 = load i64, i64* @spk_no_intr, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (...) @spk_do_flush()
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* @is_cursor, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* @old_cursor_pos, align 4
  %42 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* @old_cursor_x, align 4
  %45 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* @old_cursor_y, align 4
  %48 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @speakup_console, align 8
  %52 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %51, i64 %54
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %50, i32* %58, align 4
  %59 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %60 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* @cursor_con, align 8
  %62 = load i64, i64* @cursor_track, align 8
  %63 = load i64, i64* @CT_Highlight, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %36
  %66 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %67 = call i32 @reset_highlight_buffers(%struct.vc_data* %66)
  br label %68

68:                                               ; preds = %65, %36
  %69 = load i32, i32* @CURSOR_TIME, align 4
  %70 = call %struct.var_t* @spk_get_var(i32 %69)
  store %struct.var_t* %70, %struct.var_t** %8, align 8
  %71 = load i64, i64* @jiffies, align 8
  %72 = load %struct.var_t*, %struct.var_t** %8, align 8
  %73 = getelementptr inbounds %struct.var_t, %struct.var_t* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @msecs_to_jiffies(i32 %76)
  %78 = add nsw i64 %71, %77
  %79 = call i32 @mod_timer(i32* @cursor_timer, i64 %78)
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @speakup_info, i32 0, i32 0), i64 %80)
  br label %82

82:                                               ; preds = %68, %26
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spk_do_flush(...) #1

declare dso_local i32 @reset_highlight_buffers(%struct.vc_data*) #1

declare dso_local %struct.var_t* @spk_get_var(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
