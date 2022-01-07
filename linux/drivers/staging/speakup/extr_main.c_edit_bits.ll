; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_edit_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_edit_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 }
%struct.vc_data = type { i32 }

@pb_edit = common dso_local global %struct.TYPE_2__* null, align 8
@spk_chartab = common dso_local global i16* null, align 8
@KT_LATIN = common dso_local global i64 0, align 8
@B_NUM = common dso_local global i16 0, align 2
@SPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_EDIT_DONE = common dso_local global i32 0, align 4
@spk_special_handler = common dso_local global i32* null, align 8
@PUNC = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@MSG_ON = common dso_local global i32 0, align 4
@MSG_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i64, i64, i32)* @edit_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edit_bits(%struct.vc_data* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pb_edit, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 2
  store i16 %14, i16* %10, align 2
  %15 = load i16*, i16** @spk_chartab, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i16, i16* %15, i64 %16
  %18 = load i16, i16* %17, align 2
  store i16 %18, i16* %11, align 2
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @KT_LATIN, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %4
  %23 = load i16, i16* %11, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @B_NUM, align 2
  %26 = sext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @SPACE, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %22, %4
  store i32 -1, i32* %5, align 4
  br label %86

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @SPACE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @MSG_EDIT_DONE, align 4
  %40 = call i32 @spk_msg_get(i32 %39)
  %41 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32* null, i32** @spk_special_handler, align 8
  store i32 1, i32* %5, align 4
  br label %86

42:                                               ; preds = %34
  %43 = load i16, i16* %10, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16, i16* @PUNC, align 2
  %46 = sext i16 %45 to i32
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i16, i16* %11, align 2
  %50 = sext i16 %49 to i32
  %51 = load i16, i16* @PUNC, align 2
  %52 = sext i16 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %86

56:                                               ; preds = %48, %42
  %57 = load i16, i16* %10, align 2
  %58 = sext i16 %57 to i32
  %59 = load i16*, i16** @spk_chartab, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i16, i16* %59, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = xor i32 %63, %58
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %61, align 2
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @speak_char(i64 %66)
  %68 = load i16*, i16** @spk_chartab, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i16, i16* %68, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* %10, align 2
  %74 = sext i16 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %56
  %78 = load i32, i32* @MSG_ON, align 4
  %79 = call i32 @spk_msg_get(i32 %78)
  br label %83

80:                                               ; preds = %56
  %81 = load i32, i32* @MSG_OFF, align 4
  %82 = call i32 @spk_msg_get(i32 %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i32 [ %79, %77 ], [ %82, %80 ]
  %85 = call i32 @synth_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %55, %38, %33
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

declare dso_local i32 @speak_char(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
