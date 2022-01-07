; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_phonetic_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_phonetic_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@spk_attr = common dso_local global i32 0, align 4
@spk_old_attr = common dso_local global i32 0, align 4
@spk_pos = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@phonetic = common dso_local global i32* null, align 8
@B_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@MSG_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @say_phonetic_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @say_phonetic_char(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %4 = load i32, i32* @spk_attr, align 4
  store i32 %4, i32* @spk_old_attr, align 4
  %5 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %6 = load i64, i64* @spk_pos, align 8
  %7 = inttoptr i64 %6 to i32*
  %8 = call i32 @get_char(%struct.vc_data* %5, i32* %7, i32* @spk_attr)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 127
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @isalpha(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 31
  store i32 %17, i32* %3, align 4
  %18 = load i32*, i32** @phonetic, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %40

25:                                               ; preds = %11, %1
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @B_NUM, align 4
  %31 = call i64 @IS_CHAR(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @MSG_NUMBER, align 4
  %35 = call i32 @spk_msg_get(i32 %34)
  %36 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %28, %25
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @speak_char(i32 %38)
  br label %40

40:                                               ; preds = %37, %15
  ret void
}

declare dso_local i32 @get_char(%struct.vc_data*, i32*, i32*) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i64 @IS_CHAR(i32, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

declare dso_local i32 @speak_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
