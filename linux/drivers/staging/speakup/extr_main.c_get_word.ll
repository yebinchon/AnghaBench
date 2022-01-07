; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_get_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_get_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@spk_x = common dso_local global i32 0, align 4
@spk_pos = common dso_local global i32 0, align 4
@spk_attr = common dso_local global i32 0, align 4
@spk_old_attr = common dso_local global i32 0, align 4
@spk_say_word_ctl = common dso_local global i64 0, align 8
@SPACE = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*)* @get_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_word(%struct.vc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @spk_x, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @spk_pos, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @spk_attr, align 4
  store i32 %12, i32* @spk_old_attr, align 4
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32 @get_char(%struct.vc_data* %13, i32* %16, i32* %9)
  store i32 %17, i32* %7, align 4
  %18 = load i64, i64* @spk_say_word_ctl, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SPACE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** @buf, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @MSG_SPACE, align 4
  %27 = call i32 @spk_msg_get(i32 %26)
  %28 = call i32 @synth_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %2, align 4
  br label %171

29:                                               ; preds = %20, %1
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 2
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SPACE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @IS_WDLM(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46, %40, %36
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = getelementptr inbounds i32, i32* %6, i64 1
  %53 = call i32 @get_char(%struct.vc_data* %51, i32* %52, i32* %9)
  %54 = load i32, i32* @SPACE, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %100

61:                                               ; preds = %50, %46, %43, %29
  br label %62

62:                                               ; preds = %94, %61
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %62
  %66 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  %70 = getelementptr inbounds i32, i32* %69, i64 -1
  %71 = call i32 @get_char(%struct.vc_data* %66, i32* %70, i32* %9)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @SPACE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %85, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 256
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @IS_WDLM(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81, %75, %65
  %86 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @get_char(%struct.vc_data* %86, i32* %89, i32* %9)
  %91 = load i32, i32* @SPACE, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %99

94:                                               ; preds = %85, %81, %78
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %95, 2
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %5, align 4
  br label %62

99:                                               ; preds = %93, %62
  br label %100

100:                                              ; preds = %99, %56
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i32*
  %106 = call i32 @get_char(%struct.vc_data* %102, i32* %105, i32* @spk_attr)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32*, i32** @buf, align 8
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  br label %113

113:                                              ; preds = %158, %101
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %116 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 1
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %165

120:                                              ; preds = %113
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 2
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  %125 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i32*
  %129 = call i32 @get_char(%struct.vc_data* %125, i32* %128, i32* %9)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @SPACE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %157, label %133

133:                                              ; preds = %120
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %157, label %136

136:                                              ; preds = %133
  %137 = load i32*, i32** @buf, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %142, 256
  br i1 %143, label %144, label %158

144:                                              ; preds = %136
  %145 = load i32*, i32** @buf, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @IS_WDLM(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %144
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @SPACE, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153, %133, %120
  br label %165

158:                                              ; preds = %153, %144, %136
  %159 = load i32, i32* %7, align 4
  %160 = load i32*, i32** @buf, align 8
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %4, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 %159, i32* %164, align 4
  br label %113

165:                                              ; preds = %157, %113
  %166 = load i32*, i32** @buf, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 0, i32* %169, align 4
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %165, %24
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @get_char(%struct.vc_data*, i32*, i32*) #1

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

declare dso_local i64 @IS_WDLM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
