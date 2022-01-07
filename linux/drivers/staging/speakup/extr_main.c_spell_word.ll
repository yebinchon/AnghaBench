; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_spell_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_spell_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.var_t = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@spell_word.delay_str = internal global [5 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c". .\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c". . .\00", align 1
@buf = common dso_local global i32* null, align 8
@spk_str_caps_stop = common dso_local global i8* null, align 8
@DIRECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@spk_spell_delay = common dso_local global i64 0, align 8
@B_CAP = common dso_local global i32 0, align 4
@spk_str_caps_start = common dso_local global i8* null, align 8
@spk_pitch_shift = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@this_speakup_key = common dso_local global i64 0, align 8
@SPELL_PHONETIC = common dso_local global i64 0, align 8
@phonetic = common dso_local global i8** null, align 8
@spk_characters = common dso_local global i8** null, align 8
@MSG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @spell_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spell_word(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.var_t*, align 8
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %9 = load i32*, i32** @buf, align 8
  store i32* %9, i32** %3, align 8
  %10 = load i8*, i8** @spk_str_caps_stop, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** @spk_str_caps_stop, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i32, i32* @DIRECT, align 4
  %13 = call %struct.var_t* @spk_get_var(i32 %12)
  store %struct.var_t* %13, %struct.var_t** %7, align 8
  %14 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %15 = call i32 @get_word(%struct.vc_data* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %129

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %119, %18
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %122

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** @buf, align 8
  %26 = icmp ne i32* %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i64, i64* @spk_spell_delay, align 8
  %29 = getelementptr inbounds [5 x i8*], [5 x i8*]* @spell_word.delay_str, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @synth_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @B_CAP, align 4
  %38 = call i64 @IS_CHAR(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i8*, i8** @spk_str_caps_start, align 8
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** @spk_str_caps_stop, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @spk_pitch_shift, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @spk_pitch_shift, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i8*, i8** @spk_str_caps_stop, align 8
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %48, %45
  br label %53

51:                                               ; preds = %35, %32
  %52 = load i8*, i8** @spk_str_caps_stop, align 8
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @synth_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %5, align 8
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 256
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = load %struct.var_t*, %struct.var_t** %7, align 8
  %66 = icmp ne %struct.var_t* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load %struct.var_t*, %struct.var_t** %7, align 8
  %69 = getelementptr inbounds %struct.var_t, %struct.var_t* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67, %61
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @synth_putwc_s(i32 %75)
  br label %119

77:                                               ; preds = %67, %64
  %78 = load i64, i64* @this_speakup_key, align 8
  %79 = load i64, i64* @SPELL_PHONETIC, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = icmp sle i32 %82, 127
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @isalpha(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, 31
  store i32 %90, i32* %8, align 4
  %91 = load i8**, i8*** @phonetic, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %4, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @synth_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  br label %118

99:                                               ; preds = %84, %81, %77
  %100 = load i8**, i8*** @spk_characters, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %4, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 94
  br i1 %108, label %109, label %115

109:                                              ; preds = %99
  %110 = load i32, i32* @MSG_CTRL, align 4
  %111 = call i8* @spk_msg_get(i32 %110)
  %112 = call i32 @synth_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %111)
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %4, align 8
  br label %115

115:                                              ; preds = %109, %99
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 @synth_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %115, %88
  br label %119

119:                                              ; preds = %118, %74
  %120 = load i32*, i32** %3, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %3, align 8
  br label %19

122:                                              ; preds = %19
  %123 = load i8*, i8** %5, align 8
  %124 = load i8*, i8** @spk_str_caps_stop, align 8
  %125 = icmp ne i8* %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i8*, i8** @spk_str_caps_stop, align 8
  %128 = call i32 @synth_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %17, %126, %122
  ret void
}

declare dso_local %struct.var_t* @spk_get_var(i32) #1

declare dso_local i32 @get_word(%struct.vc_data*) #1

declare dso_local i32 @synth_printf(i8*, i8*) #1

declare dso_local i64 @IS_CHAR(i32, i32) #1

declare dso_local i32 @synth_putwc_s(i32) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i8* @spk_msg_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
