; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_spkup_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_spkup_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spkup_write.rep_count = internal global i32 0, align 4
@spkup_write.ch = internal global i32 0, align 4
@spkup_write.old_ch = internal global i32 0, align 4
@spkup_write.char_type = internal global i32 0, align 4
@spkup_write.last_type = internal global i32 0, align 4
@spk_keydown = common dso_local global i64 0, align 8
@cursor_track = common dso_local global i64 0, align 8
@read_all_mode = common dso_local global i64 0, align 8
@sentmarks = common dso_local global i32*** null, align 8
@bn = common dso_local global i64 0, align 8
@currsentence = common dso_local global i64 0, align 8
@numsentences = common dso_local global i64* null, align 8
@spk_chartab = common dso_local global i32* null, align 8
@ALPHA = common dso_local global i32 0, align 4
@B_NUM = common dso_local global i32 0, align 4
@CH_RPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@MSG_REPEAT_DESC = common dso_local global i32 0, align 4
@spk_lastkey = common dso_local global i32 0, align 4
@spk_key_echo = common dso_local global i32 0, align 4
@MINECHOCHAR = common dso_local global i32 0, align 4
@B_ALPHA = common dso_local global i32 0, align 4
@synth_flags = common dso_local global i32 0, align 4
@SF_DEC = common dso_local global i32 0, align 4
@PUNC = common dso_local global i32 0, align 4
@SPACE = common dso_local global i32 0, align 4
@spk_punc_mask = common dso_local global i32 0, align 4
@SYNTH_OK = common dso_local global i32 0, align 4
@MSG_REPEAT_DESC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @spkup_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spkup_write(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  store i64 0, i64* @spk_keydown, align 8
  br label %7

7:                                                ; preds = %169, %65, %2
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %172

11:                                               ; preds = %7
  %12 = load i64, i64* @cursor_track, align 8
  %13 = load i64, i64* @read_all_mode, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load i32***, i32**** @sentmarks, align 8
  %18 = load i64, i64* @bn, align 8
  %19 = getelementptr inbounds i32**, i32*** %17, i64 %18
  %20 = load i32**, i32*** %19, align 8
  %21 = load i64, i64* @currsentence, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %16, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load i64, i64* @currsentence, align 8
  %27 = load i64*, i64** @numsentences, align 8
  %28 = load i64, i64* @bn, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ule i64 %26, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i64, i64* @currsentence, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* @currsentence, align 8
  %35 = trunc i64 %33 to i32
  %36 = call i32 @synth_insert_next_index(i32 %35)
  br label %37

37:                                               ; preds = %32, %25, %15
  br label %38

38:                                               ; preds = %37, %11
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %3, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* @spkup_write.ch, align 4
  %42 = load i32, i32* @spkup_write.ch, align 4
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32*, i32** @spk_chartab, align 8
  %46 = load i32, i32* @spkup_write.ch, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* @spkup_write.char_type, align 4
  br label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @ALPHA, align 4
  store i32 %51, i32* @spkup_write.char_type, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i32, i32* @spkup_write.ch, align 4
  %54 = load i32, i32* @spkup_write.old_ch, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32, i32* @spkup_write.char_type, align 4
  %58 = load i32, i32* @B_NUM, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @spkup_write.rep_count, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @spkup_write.rep_count, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %7

66:                                               ; preds = %61
  br label %86

67:                                               ; preds = %56, %52
  %68 = load i32, i32* @spkup_write.last_type, align 4
  %69 = load i32, i32* @CH_RPT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load i32, i32* @spkup_write.rep_count, align 4
  %74 = icmp sgt i32 %73, 2
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = call i32 (i8*, ...) @synth_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @MSG_REPEAT_DESC, align 4
  %78 = call i32 @spk_msg_get(i32 %77)
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* @spkup_write.rep_count, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @spkup_write.rep_count, align 4
  %83 = call i32 (i8*, ...) @synth_printf(i8* %80, i32 %82)
  %84 = call i32 (i8*, ...) @synth_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %75, %72, %67
  store i32 0, i32* @spkup_write.rep_count, align 4
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i32, i32* @spkup_write.ch, align 4
  %88 = load i32, i32* @spk_lastkey, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  store i32 0, i32* @spkup_write.rep_count, align 4
  %91 = load i32, i32* @spk_key_echo, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* @spkup_write.ch, align 4
  %95 = load i32, i32* @MINECHOCHAR, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @spkup_write.ch, align 4
  %99 = call i32 @speak_char(i32 %98)
  br label %100

100:                                              ; preds = %97, %93, %90
  br label %169

101:                                              ; preds = %86
  %102 = load i32, i32* @spkup_write.char_type, align 4
  %103 = load i32, i32* @B_ALPHA, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load i32, i32* @synth_flags, align 4
  %108 = load i32, i32* @SF_DEC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i32, i32* @spkup_write.last_type, align 4
  %113 = load i32, i32* @PUNC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @SPACE, align 4
  %118 = call i32 @synth_buffer_add(i32 %117)
  br label %119

119:                                              ; preds = %116, %111, %106
  %120 = load i32, i32* @spkup_write.ch, align 4
  %121 = call i32 @synth_putwc_s(i32 %120)
  br label %168

122:                                              ; preds = %101
  %123 = load i32, i32* @spkup_write.char_type, align 4
  %124 = load i32, i32* @B_NUM, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  store i32 0, i32* @spkup_write.rep_count, align 4
  %128 = load i32, i32* @spkup_write.ch, align 4
  %129 = call i32 @synth_putwc_s(i32 %128)
  br label %167

130:                                              ; preds = %122
  %131 = load i32, i32* @spkup_write.char_type, align 4
  %132 = load i32, i32* @spk_punc_mask, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* @spkup_write.ch, align 4
  %137 = call i32 @speak_char(i32 %136)
  %138 = load i32, i32* @PUNC, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* @spkup_write.char_type, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* @spkup_write.char_type, align 4
  br label %166

142:                                              ; preds = %130
  %143 = load i32, i32* @spkup_write.char_type, align 4
  %144 = load i32, i32* @SYNTH_OK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load i32, i32* @spkup_write.ch, align 4
  %149 = load i32, i32* @spkup_write.old_ch, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* @spkup_write.ch, align 4
  %153 = call i32 @synth_putwc_s(i32 %152)
  br label %155

154:                                              ; preds = %147
  store i32 0, i32* @spkup_write.rep_count, align 4
  br label %155

155:                                              ; preds = %154, %151
  br label %165

156:                                              ; preds = %142
  %157 = load i32, i32* @spkup_write.old_ch, align 4
  %158 = load i32, i32* @spkup_write.ch, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* @SPACE, align 4
  %162 = call i32 @synth_buffer_add(i32 %161)
  br label %164

163:                                              ; preds = %156
  store i32 0, i32* @spkup_write.rep_count, align 4
  br label %164

164:                                              ; preds = %163, %160
  br label %165

165:                                              ; preds = %164, %155
  br label %166

166:                                              ; preds = %165, %135
  br label %167

167:                                              ; preds = %166, %127
  br label %168

168:                                              ; preds = %167, %119
  br label %169

169:                                              ; preds = %168, %100
  %170 = load i32, i32* @spkup_write.ch, align 4
  store i32 %170, i32* @spkup_write.old_ch, align 4
  %171 = load i32, i32* @spkup_write.char_type, align 4
  store i32 %171, i32* @spkup_write.last_type, align 4
  br label %7

172:                                              ; preds = %7
  store i32 0, i32* @spk_lastkey, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp sgt i32 %173, 2
  br i1 %174, label %175, label %194

175:                                              ; preds = %172
  %176 = load i32, i32* @spkup_write.rep_count, align 4
  %177 = icmp sgt i32 %176, 2
  br i1 %177, label %178, label %194

178:                                              ; preds = %175
  %179 = load i32, i32* @spkup_write.last_type, align 4
  %180 = load i32, i32* @CH_RPT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = call i32 (i8*, ...) @synth_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %185 = load i32, i32* @MSG_REPEAT_DESC2, align 4
  %186 = call i32 @spk_msg_get(i32 %185)
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = load i32, i32* @spkup_write.rep_count, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* @spkup_write.rep_count, align 4
  %191 = call i32 (i8*, ...) @synth_printf(i8* %188, i32 %190)
  %192 = call i32 (i8*, ...) @synth_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %193

193:                                              ; preds = %183, %178
  store i32 0, i32* @spkup_write.rep_count, align 4
  br label %194

194:                                              ; preds = %193, %175, %172
  ret void
}

declare dso_local i32 @synth_insert_next_index(i32) #1

declare dso_local i32 @synth_printf(i8*, ...) #1

declare dso_local i32 @spk_msg_get(i32) #1

declare dso_local i32 @speak_char(i32) #1

declare dso_local i32 @synth_buffer_add(i32) #1

declare dso_local i32 @synth_putwc_s(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
