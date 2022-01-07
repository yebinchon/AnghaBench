; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_unblank_screen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_unblank_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.vc_data*, i32, i32)* }

@oops_in_progress = common dso_local global i32 0, align 4
@ignore_poke = common dso_local global i64 0, align 8
@console_blanked = common dso_local global i64 0, align 8
@fg_console = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unblank_screen: tty %d not allocated ??\0A\00", align 1
@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@blankinterval = common dso_local global i32 0, align 4
@console_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@blank_normal_wait = common dso_local global i32 0, align 4
@blank_state = common dso_local global i32 0, align 4
@VT_EVENT_UNBLANK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_unblank_screen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @oops_in_progress, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @might_sleep()
  br label %8

8:                                                ; preds = %6, %1
  %9 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  store i64 0, i64* @ignore_poke, align 8
  %10 = load i64, i64* @console_blanked, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %75

13:                                               ; preds = %8
  %14 = load i32, i32* @fg_console, align 4
  %15 = call i32 @vc_cons_allocated(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @fg_console, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %75

21:                                               ; preds = %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %23 = load i32, i32* @fg_console, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.vc_data*, %struct.vc_data** %26, align 8
  store %struct.vc_data* %27, %struct.vc_data** %3, align 8
  %28 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @KD_TEXT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %75

34:                                               ; preds = %21
  %35 = load i32, i32* @blankinterval, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i32, i32* @blankinterval, align 4
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %38, %42
  %44 = call i32 @mod_timer(i32* @console_timer, i64 %43)
  %45 = load i32, i32* @blank_normal_wait, align 4
  store i32 %45, i32* @blank_state, align 4
  br label %46

46:                                               ; preds = %37, %34
  store i64 0, i64* @console_blanked, align 8
  %47 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64 (%struct.vc_data*, i32, i32)*, i64 (%struct.vc_data*, i32, i32)** %50, align 8
  %52 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %53 = load i32, i32* %2, align 4
  %54 = call i64 %51(%struct.vc_data* %52, i32 0, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %58 = call i32 @update_screen(%struct.vc_data* %57)
  br label %59

59:                                               ; preds = %56, %46
  br i1 true, label %60, label %62

60:                                               ; preds = %59
  %61 = call i32 @console_blank_hook(i32 0)
  br label %62

62:                                               ; preds = %60, %59
  %63 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %64 = call i32 @set_palette(%struct.vc_data* %63)
  %65 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %66 = call i32 @set_cursor(%struct.vc_data* %65)
  %67 = load i32, i32* @VT_EVENT_UNBLANK, align 4
  %68 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @vt_event_post(i32 %67, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %62, %33, %17, %12
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @vc_cons_allocated(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @update_screen(%struct.vc_data*) #1

declare dso_local i32 @console_blank_hook(i32) #1

declare dso_local i32 @set_palette(%struct.vc_data*) #1

declare dso_local i32 @set_cursor(%struct.vc_data*) #1

declare dso_local i32 @vt_event_post(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
