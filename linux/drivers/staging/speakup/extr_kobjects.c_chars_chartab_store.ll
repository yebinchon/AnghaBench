; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_chars_chartab_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_chars_chartab_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MAX_DESC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@speakup_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dDrR\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@spk_characters = common dso_local global i8** null, align 8
@spk_default_chars = common dso_local global i8** null, align 8
@spk_chartab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @chars_chartab_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chars_chartab_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %32 = load i32, i32* @MAX_DESC_LEN, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %12, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %17, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %38 = load %struct.kobj_attribute*, %struct.kobj_attribute** %6, align 8
  %39 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %25, align 4
  store i64 0, i64* %26, align 8
  %46 = load i64, i64* %18, align 8
  %47 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %46)
  br label %48

48:                                               ; preds = %245, %225, %152, %115, %105, %4
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %52, label %248

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 9
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ true, %57 ], [ %66, %62 ]
  br label %69

69:                                               ; preds = %67, %53
  %70 = phi i1 [ false, %53 ], [ %68, %67 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %9, align 8
  br label %53

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %248

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %9, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext %86)
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %79
  store i32 1, i32* %24, align 4
  br label %248

90:                                               ; preds = %84
  %91 = load i32, i32* %21, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %21, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = call i8* @strchr(i8* %93, i8 signext 10)
  store i8* %94, i8** %11, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %23, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %23, align 4
  br label %248

100:                                              ; preds = %90
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i32 @isdigit(i8 signext %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %23, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %23, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %109, i8** %9, align 8
  br label %48

110:                                              ; preds = %100
  %111 = load i8*, i8** %9, align 8
  %112 = call i64 @simple_strtoul(i8* %111, i8** %15, i32 10)
  store i64 %112, i64* %19, align 8
  %113 = load i64, i64* %19, align 8
  %114 = icmp ugt i64 %113, 255
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32, i32* %23, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %23, align 4
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %119, i8** %9, align 8
  br label %48

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i8*, i8** %15, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = icmp ult i8* %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %121
  %126 = load i8*, i8** %15, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 32
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** %15, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 9
  br label %135

135:                                              ; preds = %130, %125
  %136 = phi i1 [ true, %125 ], [ %134, %130 ]
  br label %137

137:                                              ; preds = %135, %121
  %138 = phi i1 [ false, %121 ], [ %136, %135 ]
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = load i8*, i8** %15, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %15, align 8
  br label %121

142:                                              ; preds = %137
  %143 = load i8*, i8** %11, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  store i64 %147, i64* %26, align 8
  %148 = load i64, i64* %26, align 8
  %149 = load i32, i32* @MAX_DESC_LEN, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp ugt i64 %148, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load i32, i32* %23, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %23, align 4
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  store i8* %156, i8** %9, align 8
  br label %48

157:                                              ; preds = %142
  %158 = load i32, i32* %25, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %157
  %161 = load i64, i64* %26, align 8
  %162 = add i64 %161, 1
  %163 = load i32, i32* @GFP_ATOMIC, align 4
  %164 = call i8* @kmalloc(i64 %162, i32 %163)
  store i8* %164, i8** %16, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %160
  %168 = load i64, i64* @ENOMEM, align 8
  %169 = sub i64 0, %168
  store i64 %169, i64* %17, align 8
  store i32 1, i32* %24, align 4
  br label %248

170:                                              ; preds = %160
  %171 = load i8*, i8** %16, align 8
  store i8* %171, i8** %14, align 8
  br label %173

172:                                              ; preds = %157
  store i8* %36, i8** %14, align 8
  br label %173

173:                                              ; preds = %172, %170
  store i32 0, i32* %27, align 4
  br label %174

174:                                              ; preds = %189, %173
  %175 = load i32, i32* %27, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %26, align 8
  %178 = icmp ult i64 %176, %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %174
  %180 = load i8*, i8** %15, align 8
  %181 = load i32, i32* %27, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = load i8*, i8** %14, align 8
  %186 = load i32, i32* %27, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  store i8 %184, i8* %188, align 1
  br label %189

189:                                              ; preds = %179
  %190 = load i32, i32* %27, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %27, align 4
  br label %174

192:                                              ; preds = %174
  %193 = load i8*, i8** %14, align 8
  %194 = load i64, i64* %26, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8 0, i8* %195, align 1
  %196 = load i32, i32* %25, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %221

198:                                              ; preds = %192
  %199 = load i8**, i8*** @spk_characters, align 8
  %200 = load i64, i64* %19, align 8
  %201 = getelementptr inbounds i8*, i8** %199, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = load i8**, i8*** @spk_default_chars, align 8
  %204 = load i64, i64* %19, align 8
  %205 = getelementptr inbounds i8*, i8** %203, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %202, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %198
  %209 = load i8**, i8*** @spk_characters, align 8
  %210 = load i64, i64* %19, align 8
  %211 = getelementptr inbounds i8*, i8** %209, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @kfree(i8* %212)
  br label %214

214:                                              ; preds = %208, %198
  %215 = load i8*, i8** %16, align 8
  %216 = load i8**, i8*** @spk_characters, align 8
  %217 = load i64, i64* %19, align 8
  %218 = getelementptr inbounds i8*, i8** %216, i64 %217
  store i8* %215, i8** %218, align 8
  %219 = load i32, i32* %22, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %22, align 4
  br label %245

221:                                              ; preds = %192
  %222 = call i32 @spk_chartab_get_value(i8* %36)
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %20, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  %226 = load i32, i32* %23, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %23, align 4
  %228 = load i8*, i8** %11, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  store i8* %229, i8** %9, align 8
  br label %48

230:                                              ; preds = %221
  %231 = load i32, i32* %20, align 4
  %232 = load i32*, i32** @spk_chartab, align 8
  %233 = load i64, i64* %19, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %231, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load i32, i32* %20, align 4
  %239 = load i32*, i32** @spk_chartab, align 8
  %240 = load i64, i64* %19, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32 %238, i32* %241, align 4
  %242 = load i32, i32* %22, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %22, align 4
  br label %244

244:                                              ; preds = %237, %230
  br label %245

245:                                              ; preds = %244, %214
  %246 = load i8*, i8** %11, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  store i8* %247, i8** %9, align 8
  br label %48

248:                                              ; preds = %167, %97, %89, %78, %48
  %249 = load i32, i32* %24, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %248
  %252 = load i32, i32* %25, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = call i32 (...) @spk_reset_default_chars()
  br label %258

256:                                              ; preds = %251
  %257 = call i32 (...) @spk_reset_default_chartab()
  br label %258

258:                                              ; preds = %256, %254
  br label %259

259:                                              ; preds = %258, %248
  %260 = load i64, i64* %18, align 8
  %261 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %260)
  %262 = load i32, i32* %24, align 4
  %263 = load i32, i32* %21, align 4
  %264 = load i32, i32* %22, align 4
  %265 = load i32, i32* %23, align 4
  %266 = load i32, i32* %25, align 4
  %267 = call i32 @report_char_chartab_status(i32 %262, i32 %263, i32 %264, i32 %265, i32 %266)
  %268 = load i64, i64* %17, align 8
  %269 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %269)
  ret i64 %268
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #2

declare dso_local i8* @kmalloc(i64, i32) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @spk_chartab_get_value(i8*) #2

declare dso_local i32 @spk_reset_default_chars(...) #2

declare dso_local i32 @spk_reset_default_chartab(...) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @report_char_chartab_status(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
