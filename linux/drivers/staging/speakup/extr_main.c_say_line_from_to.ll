; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_line_from_to.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_line_from_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32 }

@spk_y = common dso_local global i32 0, align 4
@cursor_track = common dso_local global i64 0, align 8
@read_all_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_BLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32)* @say_line_from_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @say_line_from_to(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @spk_y, align 4
  %15 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = add nsw i32 %13, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %20, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 2
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @say_from_to(%struct.vc_data* %28, i32 %29, i32 %30, i32 %31)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %4
  %35 = load i64, i64* @cursor_track, align 8
  %36 = load i64, i64* @read_all_mode, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @MSG_BLANK, align 4
  %40 = call i32 @spk_msg_get(i32 %39)
  %41 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %4
  ret void
}

declare dso_local i64 @say_from_to(%struct.vc_data*, i32, i32, i32) #1

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
