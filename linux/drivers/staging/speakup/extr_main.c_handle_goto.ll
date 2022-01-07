; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_handle_goto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_handle_goto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i64 }

@handle_goto.goto_buf = internal global [8 x i64] zeroinitializer, align 16
@handle_goto.num = internal global i32 0, align 4
@KT_SPKUP = common dso_local global i64 0, align 8
@SPEAKUP_GOTO = common dso_local global i64 0, align 8
@KT_LATIN = common dso_local global i64 0, align 8
@spk_killed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@MSG_GOTO_CANCELED = common dso_local global i32 0, align 4
@spk_special_handler = common dso_local global i32* null, align 8
@goto_pos = common dso_local global i32 0, align 4
@spk_x = common dso_local global i32 0, align 4
@goto_x = common dso_local global i32 0, align 4
@spk_y = common dso_local global i32 0, align 4
@spk_parked = common dso_local global i32 0, align 4
@spk_pos = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i64, i64, i32)* @handle_goto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_goto(%struct.vc_data* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @KT_SPKUP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @SPEAKUP_GOTO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %177

22:                                               ; preds = %17, %4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @KT_LATIN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 10
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %177

30:                                               ; preds = %26, %22
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %110

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 8
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i32, i32* @handle_goto.num, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %211

41:                                               ; preds = %37
  %42 = load i32, i32* @handle_goto.num, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* @handle_goto.num, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i64], [8 x i64]* @handle_goto.goto_buf, i64 0, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %13, align 8
  %47 = load i32, i32* @handle_goto.num, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i64], [8 x i64]* @handle_goto.goto_buf, i64 0, i64 %48
  store i64 0, i64* %49, align 8
  %50 = call i32 @spkup_write(i64* %13, i32 1)
  store i32 1, i32* %5, align 4
  br label %211

51:                                               ; preds = %34
  %52 = load i64, i64* %8, align 8
  %53 = icmp slt i64 %52, 43
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = icmp sgt i64 %55, 121
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %51
  br label %110

58:                                               ; preds = %54
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* @handle_goto.num, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @handle_goto.num, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds [8 x i64], [8 x i64]* @handle_goto.goto_buf, i64 0, i64 %63
  store i64 %60, i64* %64, align 8
  %65 = load i32, i32* @handle_goto.num, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i64], [8 x i64]* @handle_goto.goto_buf, i64 0, i64 %66
  store i64 0, i64* %67, align 8
  %68 = call i32 @spkup_write(i64* %12, i32 1)
  %69 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @handle_goto.goto_buf, i64 0, i64 0), align 16
  %70 = icmp sge i64 %69, 48
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 3, i32 4
  store i32 %72, i32* %10, align 4
  %73 = load i64, i64* %8, align 8
  %74 = icmp eq i64 %73, 43
  br i1 %74, label %78, label %75

75:                                               ; preds = %58
  %76 = load i64, i64* %8, align 8
  %77 = icmp eq i64 %76, 45
  br i1 %77, label %78, label %82

78:                                               ; preds = %75, %58
  %79 = load i32, i32* @handle_goto.num, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %5, align 4
  br label %211

82:                                               ; preds = %78, %75
  %83 = load i64, i64* %8, align 8
  %84 = icmp sge i64 %83, 48
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i64, i64* %8, align 8
  %87 = icmp sle i64 %86, 57
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @handle_goto.num, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 1, i32* %5, align 4
  br label %211

93:                                               ; preds = %88, %85, %82
  %94 = load i32, i32* @handle_goto.num, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %95, 1
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @handle_goto.num, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %93
  br label %110

103:                                              ; preds = %98
  %104 = load i64, i64* %8, align 8
  %105 = icmp slt i64 %104, 120
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %8, align 8
  %108 = icmp sgt i64 %107, 121
  br i1 %108, label %109, label %118

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %102, %57, %33
  %111 = load i32, i32* @spk_killed, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* @MSG_GOTO_CANCELED, align 4
  %115 = call i32 @spk_msg_get(i32 %114)
  %116 = call i32 @synth_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  store i32 0, i32* @handle_goto.num, align 4
  store i64 0, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @handle_goto.goto_buf, i64 0, i64 0), align 16
  store i32* null, i32** @spk_special_handler, align 8
  store i32 1, i32* %5, align 4
  br label %211

118:                                              ; preds = %106
  %119 = call i32 @simple_strtoul(i64* getelementptr inbounds ([8 x i64], [8 x i64]* @handle_goto.goto_buf, i64 0, i64 0), i8** %11, i32 10)
  store i32 %119, i32* @goto_pos, align 4
  %120 = load i8*, i8** %11, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 120
  br i1 %123, label %124, label %150

124:                                              ; preds = %118
  %125 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @handle_goto.goto_buf, i64 0, i64 0), align 16
  %126 = icmp slt i64 %125, 48
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* @spk_x, align 4
  %129 = load i32, i32* @goto_pos, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* @goto_pos, align 4
  br label %138

131:                                              ; preds = %124
  %132 = load i32, i32* @goto_pos, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* @goto_pos, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* @goto_pos, align 4
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %127
  %139 = load i32, i32* @goto_pos, align 4
  %140 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %141 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp sge i32 %139, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %146 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* @goto_pos, align 4
  br label %149

149:                                              ; preds = %144, %138
  store i32 1, i32* @goto_x, align 4
  br label %176

150:                                              ; preds = %118
  %151 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @handle_goto.goto_buf, i64 0, i64 0), align 16
  %152 = icmp slt i64 %151, 48
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i32, i32* @spk_y, align 4
  %155 = load i32, i32* @goto_pos, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* @goto_pos, align 4
  br label %164

157:                                              ; preds = %150
  %158 = load i32, i32* @goto_pos, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* @goto_pos, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* @goto_pos, align 4
  br label %163

163:                                              ; preds = %160, %157
  br label %164

164:                                              ; preds = %163, %153
  %165 = load i32, i32* @goto_pos, align 4
  %166 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %167 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp sge i32 %165, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %172 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* @goto_pos, align 4
  br label %175

175:                                              ; preds = %170, %164
  store i32 0, i32* @goto_x, align 4
  br label %176

176:                                              ; preds = %175, %149
  store i32 0, i32* @handle_goto.num, align 4
  store i64 0, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @handle_goto.goto_buf, i64 0, i64 0), align 16
  br label %177

177:                                              ; preds = %176, %29, %21
  store i32* null, i32** @spk_special_handler, align 8
  %178 = load i32, i32* @spk_parked, align 4
  %179 = or i32 %178, 1
  store i32 %179, i32* @spk_parked, align 4
  %180 = load i32, i32* @goto_x, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = load i32, i32* @spk_x, align 4
  %184 = mul nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* @spk_pos, align 8
  %187 = sub nsw i64 %186, %185
  store i64 %187, i64* @spk_pos, align 8
  %188 = load i32, i32* @goto_pos, align 4
  store i32 %188, i32* @spk_x, align 4
  %189 = load i32, i32* @goto_pos, align 4
  %190 = mul nsw i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* @spk_pos, align 8
  %193 = add nsw i64 %192, %191
  store i64 %193, i64* @spk_pos, align 8
  %194 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %195 = call i32 @say_word(%struct.vc_data* %194)
  br label %210

196:                                              ; preds = %177
  %197 = load i32, i32* @goto_pos, align 4
  store i32 %197, i32* @spk_y, align 4
  %198 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %199 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* @goto_pos, align 4
  %202 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %203 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = mul nsw i32 %201, %204
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %200, %206
  store i64 %207, i64* @spk_pos, align 8
  %208 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %209 = call i32 @say_line(%struct.vc_data* %208)
  br label %210

210:                                              ; preds = %196, %182
  store i32 1, i32* %5, align 4
  br label %211

211:                                              ; preds = %210, %117, %92, %81, %41, %40
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local i32 @spkup_write(i64*, i32) #1

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i32 @spk_msg_get(i32) #1

declare dso_local i32 @simple_strtoul(i64*, i8**, i32) #1

declare dso_local i32 @say_word(%struct.vc_data*) #1

declare dso_local i32 @say_line(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
