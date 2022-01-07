; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt_ioctl.c_complete_change_console.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt_ioctl.c_complete_change_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8 }
%struct.vc_data = type { i8, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@fg_console = common dso_local global i64 0, align 8
@last_console = common dso_local global i64 0, align 8
@vc_cons = common dso_local global %struct.TYPE_6__* null, align 8
@KD_TEXT = common dso_local global i8 0, align 1
@VT_PROCESS = common dso_local global i64 0, align 8
@VT_EVENT_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @complete_change_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_change_console(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %5 = load i64, i64* @fg_console, align 8
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %4, align 4
  %7 = load i64, i64* @fg_console, align 8
  store i64 %7, i64* @last_console, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vc_cons, align 8
  %9 = load i64, i64* @fg_console, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %3, align 1
  %15 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %16 = call i32 @switch_screen(%struct.vc_data* %15)
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %18, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 8
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @KD_TEXT, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @do_unblank_screen(i32 1)
  br label %36

34:                                               ; preds = %24
  %35 = call i32 @do_blank_screen(i32 1)
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VT_PROCESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %37
  %45 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @kill_pid(i32 %47, i32 %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %44
  %55 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %56 = call i32 @reset_vc(%struct.vc_data* %55)
  %57 = load i8, i8* %3, align 1
  %58 = zext i8 %57 to i32
  %59 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %60 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %59, i32 0, i32 0
  %61 = load i8, i8* %60, align 8
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %54
  %65 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 0
  %67 = load i8, i8* %66, align 8
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @KD_TEXT, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = call i32 @do_unblank_screen(i32 1)
  br label %76

74:                                               ; preds = %64
  %75 = call i32 @do_blank_screen(i32 1)
  br label %76

76:                                               ; preds = %74, %72
  br label %77

77:                                               ; preds = %76, %54
  br label %78

78:                                               ; preds = %77, %44
  br label %79

79:                                               ; preds = %78, %37
  %80 = load i32, i32* @VT_EVENT_SWITCH, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %83 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @vt_event_post(i32 %80, i32 %81, i32 %84)
  ret void
}

declare dso_local i32 @switch_screen(%struct.vc_data*) #1

declare dso_local i32 @do_unblank_screen(i32) #1

declare dso_local i32 @do_blank_screen(i32) #1

declare dso_local i64 @kill_pid(i32, i32, i32) #1

declare dso_local i32 @reset_vc(%struct.vc_data*) #1

declare dso_local i32 @vt_event_post(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
