; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.vc_data = type { i32 }

@this_speakup_key = common dso_local global i32 0, align 4
@FIRST_EDIT_BITS = common dso_local global i32 0, align 4
@spk_special_handler = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@spk_punc_info = common dso_local global %struct.TYPE_3__* null, align 8
@pb_edit = common dso_local global %struct.TYPE_3__* null, align 8
@MSG_EDIT_PROMPT = common dso_local global i32 0, align 4
@edit_bits = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @speakup_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speakup_bits(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %4 = load i32, i32* @this_speakup_key, align 4
  %5 = load i32, i32* @FIRST_EDIT_BITS, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sub nsw i32 %4, %6
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* @spk_special_handler, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 6
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %10, %1
  %17 = load i32, i32* @MSG_ERROR, align 4
  %18 = call i8* @spk_msg_get(i32 %17)
  %19 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %32

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spk_punc_info, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** @pb_edit, align 8
  %25 = load i32, i32* @MSG_EDIT_PROMPT, align 4
  %26 = call i8* @spk_msg_get(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pb_edit, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @synth_printf(i8* %26, i8* %29)
  %31 = load i64, i64* @edit_bits, align 8
  store i64 %31, i64* @spk_special_handler, align 8
  br label %32

32:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @synth_printf(i8*, i8*) #1

declare dso_local i8* @spk_msg_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
