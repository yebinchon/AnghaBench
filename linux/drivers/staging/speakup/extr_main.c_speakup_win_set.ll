; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_win_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_win_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64 }

@win_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_WINDOW_ALREADY_SET = common dso_local global i32 0, align 4
@spk_x = common dso_local global i64 0, align 8
@win_left = common dso_local global i64 0, align 8
@spk_y = common dso_local global i64 0, align 8
@win_top = common dso_local global i64 0, align 8
@MSG_END_BEFORE_START = common dso_local global i32 0, align 4
@win_right = common dso_local global i64 0, align 8
@win_bottom = common dso_local global i64 0, align 8
@MSG_WINDOW_LINE = common dso_local global i32 0, align 4
@MSG_WINDOW_BOUNDARY = common dso_local global i32 0, align 4
@MSG_END = common dso_local global i32 0, align 4
@MSG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @speakup_win_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speakup_win_set(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca [40 x i8], align 16
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %4 = load i32, i32* @win_start, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @MSG_WINDOW_ALREADY_SET, align 4
  %8 = call i8* @spk_msg_get(i32 %7)
  %9 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %8)
  br label %81

10:                                               ; preds = %1
  %11 = load i64, i64* @spk_x, align 8
  %12 = load i64, i64* @win_left, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* @spk_y, align 8
  %16 = load i64, i64* @win_top, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @MSG_END_BEFORE_START, align 4
  %20 = call i8* @spk_msg_get(i32 %19)
  %21 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %81

22:                                               ; preds = %14
  %23 = load i32, i32* @win_start, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load i64, i64* @spk_x, align 8
  %27 = load i64, i64* @win_left, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i64, i64* @spk_y, align 8
  %31 = load i64, i64* @win_top, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  store i64 0, i64* @win_left, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  store i64 %37, i64* @win_right, align 8
  %38 = load i64, i64* @spk_y, align 8
  store i64 %38, i64* @win_bottom, align 8
  %39 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %40 = load i32, i32* @MSG_WINDOW_LINE, align 4
  %41 = call i8* @spk_msg_get(i32 %40)
  %42 = load i64, i64* @win_top, align 8
  %43 = trunc i64 %42 to i32
  %44 = add nsw i32 %43, 1
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 40, i8* %41, i32 %44)
  br label %76

46:                                               ; preds = %29, %25, %22
  %47 = load i32, i32* @win_start, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @spk_y, align 8
  store i64 %50, i64* @win_top, align 8
  %51 = load i64, i64* @spk_x, align 8
  store i64 %51, i64* @win_left, align 8
  br label %55

52:                                               ; preds = %46
  %53 = load i64, i64* @spk_y, align 8
  store i64 %53, i64* @win_bottom, align 8
  %54 = load i64, i64* @spk_x, align 8
  store i64 %54, i64* @win_right, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %57 = load i32, i32* @MSG_WINDOW_BOUNDARY, align 4
  %58 = call i8* @spk_msg_get(i32 %57)
  %59 = load i32, i32* @win_start, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @MSG_END, align 4
  %63 = call i8* @spk_msg_get(i32 %62)
  br label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @MSG_START, align 4
  %66 = call i8* @spk_msg_get(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i8* [ %63, %61 ], [ %66, %64 ]
  %69 = load i64, i64* @spk_y, align 8
  %70 = trunc i64 %69 to i32
  %71 = add nsw i32 %70, 1
  %72 = load i64, i64* @spk_x, align 8
  %73 = trunc i64 %72 to i32
  %74 = add nsw i32 %73, 1
  %75 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %56, i32 40, i8* %58, i8* %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %67, %33
  %77 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %78 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @win_start, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @win_start, align 4
  br label %81

81:                                               ; preds = %76, %18, %6
  ret void
}

declare dso_local i32 @synth_printf(i8*, i8*) #1

declare dso_local i8* @spk_msg_get(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
