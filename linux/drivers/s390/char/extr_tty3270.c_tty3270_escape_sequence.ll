; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_escape_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_escape_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"\1B[?6c\00", align 1
@TAX_RESET = common dso_local global i32 0, align 4
@TAC_RESET = common dso_local global i32 0, align 4
@ESCAPE_NPAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[0n\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\1B[%d;%dR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*, i8)* @tty3270_escape_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_escape_sequence(%struct.tty3270* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty3270*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [40 x i8], align 16
  store %struct.tty3270* %0, %struct.tty3270** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %7 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 27
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %16 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %10
  br label %401

18:                                               ; preds = %2
  %19 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %20 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %113

23:                                               ; preds = %18
  %24 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %25 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i8, i8* %4, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %112 [
    i32 91, label %28
    i32 69, label %31
    i32 77, label %36
    i32 68, label %39
    i32 90, label %42
    i32 55, label %46
    i32 56, label %67
    i32 99, label %91
  ]

28:                                               ; preds = %23
  %29 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %30 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %29, i32 0, i32 0
  store i32 2, i32* %30, align 8
  br label %112

31:                                               ; preds = %23
  %32 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %33 = call i32 @tty3270_cr(%struct.tty3270* %32)
  %34 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %35 = call i32 @tty3270_lf(%struct.tty3270* %34)
  br label %112

36:                                               ; preds = %23
  %37 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %38 = call i32 @tty3270_ri(%struct.tty3270* %37)
  br label %112

39:                                               ; preds = %23
  %40 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %41 = call i32 @tty3270_lf(%struct.tty3270* %40)
  br label %112

42:                                               ; preds = %23
  %43 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %44 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %43, i32 0, i32 12
  %45 = call i32 @kbd_puts_queue(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %112

46:                                               ; preds = %23
  %47 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %48 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %51 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %53 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %56 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %58 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %61 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 8
  %62 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %63 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %66 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  br label %112

67:                                               ; preds = %23
  %68 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %69 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %70 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @tty3270_convert_line(%struct.tty3270* %68, i32 %71)
  %73 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %74 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %75 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %78 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @tty3270_goto_xy(%struct.tty3270* %73, i32 %76, i32 %79)
  %81 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %82 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %85 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %84, i32 0, i32 11
  store i32 %83, i32* %85, align 4
  %86 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %87 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %90 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  br label %112

91:                                               ; preds = %23
  %92 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %93 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %95 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %94, i32 0, i32 2
  store i32 0, i32* %95, align 8
  %96 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %97 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  %98 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %99 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %98, i32 0, i32 4
  store i32 0, i32* %99, align 8
  %100 = load i32, i32* @TAX_RESET, align 4
  %101 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %102 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 8
  %103 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %104 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %103, i32 0, i32 11
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* @TAC_RESET, align 4
  %106 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %107 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 8
  %108 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %109 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %108, i32 0, i32 9
  store i32 %105, i32* %109, align 4
  %110 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %111 = call i32 @tty3270_erase_display(%struct.tty3270* %110, i32 2)
  br label %112

112:                                              ; preds = %23, %91, %67, %46, %42, %39, %36, %31, %28
  br label %401

113:                                              ; preds = %18
  %114 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %115 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %120 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %119, i32 0, i32 0
  store i32 3, i32* %120, align 8
  %121 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %122 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @memset(i32* %123, i32 0, i32 8)
  %125 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %126 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %125, i32 0, i32 6
  store i32 0, i32* %126, align 8
  %127 = load i8, i8* %4, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 63
  %130 = zext i1 %129 to i32
  %131 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %132 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 4
  %133 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %134 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %118
  br label %401

138:                                              ; preds = %118
  br label %139

139:                                              ; preds = %138, %113
  %140 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %141 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 3
  br i1 %143, label %144, label %193

144:                                              ; preds = %139
  %145 = load i8, i8* %4, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 59
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %150 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @ESCAPE_NPAR, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %157 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  br label %401

160:                                              ; preds = %148, %144
  %161 = load i8, i8* %4, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp sge i32 %162, 48
  br i1 %163, label %164, label %192

164:                                              ; preds = %160
  %165 = load i8, i8* %4, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp sle i32 %166, 57
  br i1 %167, label %168, label %192

168:                                              ; preds = %164
  %169 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %170 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %169, i32 0, i32 5
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %173 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %177, 10
  store i32 %178, i32* %176, align 4
  %179 = load i8, i8* %4, align 1
  %180 = sext i8 %179 to i32
  %181 = sub nsw i32 %180, 48
  %182 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %183 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %182, i32 0, i32 5
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %186 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %181
  store i32 %191, i32* %189, align 4
  br label %401

192:                                              ; preds = %164, %160
  br label %193

193:                                              ; preds = %192, %139
  %194 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %195 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %194, i32 0, i32 0
  store i32 0, i32* %195, align 8
  %196 = load i8, i8* %4, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 110
  br i1 %198, label %199, label %239

199:                                              ; preds = %193
  %200 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %201 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %239, label %204

204:                                              ; preds = %199
  %205 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %206 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 5
  br i1 %210, label %211, label %215

211:                                              ; preds = %204
  %212 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %213 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %212, i32 0, i32 12
  %214 = call i32 @kbd_puts_queue(i32* %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %238

215:                                              ; preds = %204
  %216 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %217 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 6
  br i1 %221, label %222, label %237

222:                                              ; preds = %215
  %223 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %224 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %225 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  %228 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %229 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  %232 = call i32 @sprintf(i8* %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %227, i32 %231)
  %233 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %234 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %233, i32 0, i32 12
  %235 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %236 = call i32 @kbd_puts_queue(i32* %234, i8* %235)
  br label %237

237:                                              ; preds = %222, %215
  br label %238

238:                                              ; preds = %237, %211
  br label %401

239:                                              ; preds = %199, %193
  %240 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %241 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %401

245:                                              ; preds = %239
  %246 = load i8, i8* %4, align 1
  %247 = sext i8 %246 to i32
  switch i32 %247, label %401 [
    i32 109, label %248
    i32 72, label %251
    i32 102, label %251
    i32 100, label %260
    i32 65, label %269
    i32 70, label %269
    i32 66, label %281
    i32 101, label %281
    i32 69, label %281
    i32 67, label %293
    i32 97, label %293
    i32 68, label %305
    i32 71, label %317
    i32 96, label %317
    i32 88, label %325
    i32 74, label %330
    i32 75, label %338
    i32 80, label %346
    i32 64, label %351
    i32 115, label %356
    i32 117, label %377
  ]

248:                                              ; preds = %245
  %249 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %250 = call i32 @tty3270_set_attributes(%struct.tty3270* %249)
  br label %401

251:                                              ; preds = %245, %245
  %252 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %253 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %254 = call i32 @tty3270_getpar(%struct.tty3270* %253, i32 1)
  %255 = sub nsw i32 %254, 1
  %256 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %257 = call i32 @tty3270_getpar(%struct.tty3270* %256, i32 0)
  %258 = sub nsw i32 %257, 1
  %259 = call i32 @tty3270_goto_xy(%struct.tty3270* %252, i32 %255, i32 %258)
  br label %401

260:                                              ; preds = %245
  %261 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %262 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %263 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %266 = call i32 @tty3270_getpar(%struct.tty3270* %265, i32 0)
  %267 = sub nsw i32 %266, 1
  %268 = call i32 @tty3270_goto_xy(%struct.tty3270* %261, i32 %264, i32 %267)
  br label %401

269:                                              ; preds = %245, %245
  %270 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %271 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %272 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %275 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %278 = call i32 @tty3270_getpar(%struct.tty3270* %277, i32 0)
  %279 = sub nsw i32 %276, %278
  %280 = call i32 @tty3270_goto_xy(%struct.tty3270* %270, i32 %273, i32 %279)
  br label %401

281:                                              ; preds = %245, %245, %245
  %282 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %283 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %284 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %287 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %290 = call i32 @tty3270_getpar(%struct.tty3270* %289, i32 0)
  %291 = add nsw i32 %288, %290
  %292 = call i32 @tty3270_goto_xy(%struct.tty3270* %282, i32 %285, i32 %291)
  br label %401

293:                                              ; preds = %245, %245
  %294 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %295 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %296 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %299 = call i32 @tty3270_getpar(%struct.tty3270* %298, i32 0)
  %300 = add nsw i32 %297, %299
  %301 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %302 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @tty3270_goto_xy(%struct.tty3270* %294, i32 %300, i32 %303)
  br label %401

305:                                              ; preds = %245
  %306 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %307 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %308 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %311 = call i32 @tty3270_getpar(%struct.tty3270* %310, i32 0)
  %312 = sub nsw i32 %309, %311
  %313 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %314 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @tty3270_goto_xy(%struct.tty3270* %306, i32 %312, i32 %315)
  br label %401

317:                                              ; preds = %245, %245
  %318 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %319 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %320 = call i32 @tty3270_getpar(%struct.tty3270* %319, i32 0)
  %321 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %322 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @tty3270_goto_xy(%struct.tty3270* %318, i32 %320, i32 %323)
  br label %401

325:                                              ; preds = %245
  %326 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %327 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %328 = call i32 @tty3270_getpar(%struct.tty3270* %327, i32 0)
  %329 = call i32 @tty3270_erase_characters(%struct.tty3270* %326, i32 %328)
  br label %401

330:                                              ; preds = %245
  %331 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %332 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %333 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %332, i32 0, i32 5
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @tty3270_erase_display(%struct.tty3270* %331, i32 %336)
  br label %401

338:                                              ; preds = %245
  %339 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %340 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %341 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %340, i32 0, i32 5
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @tty3270_erase_line(%struct.tty3270* %339, i32 %344)
  br label %401

346:                                              ; preds = %245
  %347 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %348 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %349 = call i32 @tty3270_getpar(%struct.tty3270* %348, i32 0)
  %350 = call i32 @tty3270_delete_characters(%struct.tty3270* %347, i32 %349)
  br label %401

351:                                              ; preds = %245
  %352 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %353 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %354 = call i32 @tty3270_getpar(%struct.tty3270* %353, i32 0)
  %355 = call i32 @tty3270_insert_characters(%struct.tty3270* %352, i32 %354)
  br label %401

356:                                              ; preds = %245
  %357 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %358 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %361 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %360, i32 0, i32 1
  store i32 %359, i32* %361, align 4
  %362 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %363 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %366 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %365, i32 0, i32 3
  store i32 %364, i32* %366, align 4
  %367 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %368 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %367, i32 0, i32 11
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %371 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %370, i32 0, i32 10
  store i32 %369, i32* %371, align 8
  %372 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %373 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %372, i32 0, i32 9
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %376 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %375, i32 0, i32 8
  store i32 %374, i32* %376, align 8
  br label %401

377:                                              ; preds = %245
  %378 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %379 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %380 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @tty3270_convert_line(%struct.tty3270* %378, i32 %381)
  %383 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %384 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %385 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %388 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @tty3270_goto_xy(%struct.tty3270* %383, i32 %386, i32 %389)
  %391 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %392 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %391, i32 0, i32 10
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %395 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %394, i32 0, i32 11
  store i32 %393, i32* %395, align 4
  %396 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %397 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %396, i32 0, i32 8
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %400 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %399, i32 0, i32 9
  store i32 %398, i32* %400, align 4
  br label %401

401:                                              ; preds = %17, %112, %137, %155, %168, %238, %244, %245, %377, %356, %351, %346, %338, %330, %325, %317, %305, %293, %281, %269, %260, %251, %248
  ret void
}

declare dso_local i32 @tty3270_cr(%struct.tty3270*) #1

declare dso_local i32 @tty3270_lf(%struct.tty3270*) #1

declare dso_local i32 @tty3270_ri(%struct.tty3270*) #1

declare dso_local i32 @kbd_puts_queue(i32*, i8*) #1

declare dso_local i32 @tty3270_convert_line(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_goto_xy(%struct.tty3270*, i32, i32) #1

declare dso_local i32 @tty3270_erase_display(%struct.tty3270*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @tty3270_set_attributes(%struct.tty3270*) #1

declare dso_local i32 @tty3270_getpar(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_erase_characters(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_erase_line(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_delete_characters(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_insert_characters(%struct.tty3270*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
