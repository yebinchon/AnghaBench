; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_blank_screen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_blank_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.vc_data*, i32, i32)* }

@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@fg_console = common dso_local global i64 0, align 8
@console_blanked = common dso_local global i32 0, align 4
@blank_state = common dso_local global i64 0, align 8
@blank_vesa_wait = common dso_local global i64 0, align 8
@blank_off = common dso_local global i64 0, align 8
@vesa_blank_mode = common dso_local global i32 0, align 4
@KD_TEXT = common dso_local global i64 0, align 8
@console_timer = common dso_local global i32 0, align 4
@blank_timer_expired = common dso_local global i64 0, align 8
@vesa_off_interval = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@VT_EVENT_BLANK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_blank_screen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %6 = load i64, i64* @fg_console, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  store %struct.vc_data* %9, %struct.vc_data** %3, align 8
  %10 = call i32 (...) @might_sleep()
  %11 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %12 = load i32, i32* @console_blanked, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load i64, i64* @blank_state, align 8
  %16 = load i64, i64* @blank_vesa_wait, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i64, i64* @blank_off, align 8
  store i64 %19, i64* @blank_state, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, i32, i32)** %23, align 8
  %25 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %26 = load i32, i32* @vesa_blank_mode, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 %24(%struct.vc_data* %25, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %18, %14
  br label %117

30:                                               ; preds = %1
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %35 = call i32 @hide_cursor(%struct.vc_data* %34)
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = call i32 @save_screen(%struct.vc_data* %36)
  %38 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, i32, i32)** %41, align 8
  %43 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %44 = call i32 %42(%struct.vc_data* %43, i32 -1, i32 1)
  %45 = load i64, i64* @fg_console, align 8
  %46 = add i64 %45, 1
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* @console_blanked, align 4
  %48 = load i64, i64* @blank_off, align 8
  store i64 %48, i64* @blank_state, align 8
  %49 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %50 = call i32 @set_origin(%struct.vc_data* %49)
  br label %117

51:                                               ; preds = %30
  %52 = load i64, i64* @blank_off, align 8
  store i64 %52, i64* @blank_state, align 8
  %53 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @KD_TEXT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i64, i64* @fg_console, align 8
  %60 = add i64 %59, 1
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* @console_blanked, align 4
  br label %117

62:                                               ; preds = %51
  %63 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %64 = call i32 @hide_cursor(%struct.vc_data* %63)
  %65 = call i32 @del_timer_sync(i32* @console_timer)
  store i64 0, i64* @blank_timer_expired, align 8
  %66 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %67 = call i32 @save_screen(%struct.vc_data* %66)
  %68 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, i32, i32)** %71, align 8
  %73 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %74 = load i64, i64* @vesa_off_interval, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %80

77:                                               ; preds = %62
  %78 = load i32, i32* @vesa_blank_mode, align 4
  %79 = add nsw i32 %78, 1
  br label %80

80:                                               ; preds = %77, %76
  %81 = phi i32 [ 1, %76 ], [ %79, %77 ]
  %82 = call i32 %72(%struct.vc_data* %73, i32 %81, i32 0)
  store i32 %82, i32* %4, align 4
  %83 = load i64, i64* @fg_console, align 8
  %84 = add i64 %83, 1
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* @console_blanked, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %90 = call i32 @set_origin(%struct.vc_data* %89)
  br label %91

91:                                               ; preds = %88, %80
  br i1 true, label %92, label %96

92:                                               ; preds = %91
  %93 = call i64 @console_blank_hook(i32 1)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %117

96:                                               ; preds = %92, %91
  %97 = load i64, i64* @vesa_off_interval, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* @vesa_blank_mode, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i64, i64* @blank_vesa_wait, align 8
  store i64 %103, i64* @blank_state, align 8
  %104 = load i64, i64* @jiffies, align 8
  %105 = load i64, i64* @vesa_off_interval, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @mod_timer(i32* @console_timer, i64 %106)
  br label %108

108:                                              ; preds = %102, %99, %96
  %109 = load i32, i32* @VT_EVENT_BLANK, align 4
  %110 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %111 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %114 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @vt_event_post(i32 %109, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %108, %95, %58, %33, %29
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @hide_cursor(%struct.vc_data*) #1

declare dso_local i32 @save_screen(%struct.vc_data*) #1

declare dso_local i32 @set_origin(%struct.vc_data*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @console_blank_hook(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @vt_event_post(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
