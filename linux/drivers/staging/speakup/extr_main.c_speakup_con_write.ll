; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_con_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_con_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vc_data = type { i64, i32, i64 }

@fg_console = common dso_local global i64 0, align 8
@spk_shut_up = common dso_local global i64 0, align 8
@synth = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@spk_bell_pos = common dso_local global i32 0, align 4
@spk_keydown = common dso_local global i64 0, align 8
@is_cursor = common dso_local global i64 0, align 8
@cursor_track = common dso_local global i64 0, align 8
@read_all_mode = common dso_local global i64 0, align 8
@CT_Highlight = common dso_local global i64 0, align 8
@win_enabled = common dso_local global i64 0, align 8
@win_left = common dso_local global i64 0, align 8
@win_right = common dso_local global i64 0, align 8
@win_top = common dso_local global i64 0, align 8
@win_bottom = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32*, i32)* @speakup_con_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speakup_con_write(%struct.vc_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @fg_console, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* @spk_shut_up, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @synth, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %3
  br label %98

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_trylock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %98

25:                                               ; preds = %20
  %26 = load i32, i32* @spk_bell_pos, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i64, i64* @spk_keydown, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @spk_bell_pos, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @bleep(i32 3)
  br label %40

40:                                               ; preds = %38, %31, %28, %25
  %41 = load i64, i64* @is_cursor, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @cursor_track, align 8
  %45 = load i64, i64* @read_all_mode, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43, %40
  %48 = load i64, i64* @cursor_track, align 8
  %49 = load i64, i64* @CT_Highlight, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @update_color_buffer(%struct.vc_data* %52, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %57)
  br label %98

59:                                               ; preds = %43
  %60 = load i64, i64* @win_enabled, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @win_left, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %62
  %70 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @win_right, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %78 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @win_top, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @win_bottom, align 8
  %87 = icmp sle i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %89)
  br label %98

91:                                               ; preds = %82, %76, %69, %62
  br label %92

92:                                               ; preds = %91, %59
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @spkup_write(i32* %93, i32 %94)
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), i64 %96)
  br label %98

98:                                               ; preds = %92, %88, %56, %24, %19
  ret void
}

declare dso_local i32 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i32 @bleep(i32) #1

declare dso_local i32 @update_color_buffer(%struct.vc_data*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spkup_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
