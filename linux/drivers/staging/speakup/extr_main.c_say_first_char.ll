; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_first_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_first_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@spk_parked = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_BLANK = common dso_local global i32 0, align 4
@buf = common dso_local global i64* null, align 8
@SPACE = common dso_local global i64 0, align 8
@spk_x = common dso_local global i32 0, align 4
@spk_pos = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @say_first_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @say_first_char(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %6 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %7 = call i32 @get_line(%struct.vc_data* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @spk_parked, align 4
  %9 = or i32 %8, 1
  store i32 %9, i32* @spk_parked, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_BLANK, align 4
  %14 = call i32 @spk_msg_get(i32 %13)
  %15 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %52

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i64*, i64** @buf, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SPACE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %17

34:                                               ; preds = %29, %17
  %35 = load i64*, i64** @buf, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %5, align 8
  %40 = load i32, i32* @spk_x, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %40, %41
  %43 = mul nsw i32 %42, 2
  %44 = load i32, i32* @spk_pos, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* @spk_pos, align 4
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* @spk_x, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  %49 = call i32 @synth_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @speak_char(i64 %50)
  br label %52

52:                                               ; preds = %34, %12
  ret void
}

declare dso_local i32 @get_line(%struct.vc_data*) #1

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

declare dso_local i32 @speak_char(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
