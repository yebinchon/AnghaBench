; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_win_say.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_win_say.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i32 }

@win_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_NO_WINDOW = common dso_local global i32 0, align 4
@win_top = common dso_local global i32 0, align 4
@win_bottom = common dso_local global i32 0, align 4
@win_left = common dso_local global i32 0, align 4
@win_right = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @speakup_win_say to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speakup_win_say(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %7 = load i32, i32* @win_start, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @MSG_NO_WINDOW, align 4
  %11 = call i32 @spk_msg_get(i32 %10)
  %12 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @win_top, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %16, %22
  store i64 %23, i64* %3, align 8
  %24 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @win_bottom, align 4
  %28 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %26, %32
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %38, %13
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i64, i64* %3, align 8
  %40 = load i32, i32* @win_left, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i32, i32* @win_right, align 4
  %46 = mul nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  store i64 %48, i64* %6, align 8
  %49 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @say_from_to(%struct.vc_data* %49, i64 %50, i64 %51, i32 1)
  %53 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %3, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %3, align 8
  br label %34

59:                                               ; preds = %9, %34
  ret void
}

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

declare dso_local i32 @say_from_to(%struct.vc_data*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
