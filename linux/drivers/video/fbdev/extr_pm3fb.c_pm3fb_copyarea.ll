; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_2__, %struct.pm3_par* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pm3_par = type { i32 }
%struct.fb_copyarea = type { i64, i64, i64, i64, i64, i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@PM3Config2D = common dso_local global i32 0, align 4
@PM3Config2D_UserScissorEnable = common dso_local global i32 0, align 4
@PM3Config2D_ForegroundROPEnable = common dso_local global i32 0, align 4
@PM3Config2D_Blocking = common dso_local global i32 0, align 4
@PM3Config2D_FBWriteEnable = common dso_local global i32 0, align 4
@PM3ScissorMinXY = common dso_local global i32 0, align 4
@PM3ScissorMaxXY = common dso_local global i32 0, align 4
@PM3FBSourceReadBufferOffset = common dso_local global i32 0, align 4
@PM3RectanglePosition = common dso_local global i32 0, align 4
@PM3Render2D = common dso_local global i32 0, align 4
@PM3Render2D_XPositive = common dso_local global i32 0, align 4
@PM3Render2D_YPositive = common dso_local global i32 0, align 4
@PM3Render2D_Operation_Normal = common dso_local global i32 0, align 4
@PM3Render2D_SpanOperation = common dso_local global i32 0, align 4
@PM3Render2D_FBSourceReadEnable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @pm3fb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm3fb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.pm3_par*, align 8
  %6 = alloca %struct.fb_copyarea, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 3
  %14 = load %struct.pm3_par*, %struct.pm3_par** %13, align 8
  store %struct.pm3_par* %14, %struct.pm3_par** %5, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %254

21:                                               ; preds = %2
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %31 = call i32 @cfb_copyarea(%struct.fb_info* %29, %struct.fb_copyarea* %30)
  br label %254

32:                                               ; preds = %21
  %33 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %34 = call i32 @memcpy(%struct.fb_copyarea* %6, %struct.fb_copyarea* %33, i32 48)
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %70, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %60, %55, %50, %46, %32
  br label %254

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %73, %75
  %77 = load i64, i64* %7, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %80, %82
  %84 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %71
  %86 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %87, %89
  %91 = load i64, i64* %7, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %94, %96
  %98 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %85
  %100 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %101, %103
  %105 = load i64, i64* %8, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %108, %110
  %112 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  store i64 %111, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %99
  %114 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %115, %117
  %119 = load i64, i64* %8, align 8
  %120 = icmp sgt i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load i64, i64* %8, align 8
  %123 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %122, %124
  %126 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %121, %113
  %128 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %129, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %10, align 4
  %134 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %135, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %11, align 4
  %140 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = and i64 %141, 31
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %9, align 4
  %144 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %145 = call i32 @PM3_WAIT(%struct.pm3_par* %144, i32 6)
  %146 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %147 = load i32, i32* @PM3Config2D, align 4
  %148 = load i32, i32* @PM3Config2D_UserScissorEnable, align 4
  %149 = load i32, i32* @PM3Config2D_ForegroundROPEnable, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @PM3Config2D_Blocking, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @PM3Config2D_ForegroundROP(i32 3)
  %154 = or i32 %152, %153
  %155 = load i32, i32* @PM3Config2D_FBWriteEnable, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %146, i32 %147, i32 %156)
  %158 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %159 = load i32, i32* @PM3ScissorMinXY, align 4
  %160 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = and i64 %161, 4095
  %163 = shl i64 %162, 16
  %164 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = and i64 %165, 4095
  %167 = or i64 %163, %166
  %168 = trunc i64 %167 to i32
  %169 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %158, i32 %159, i32 %168)
  %170 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %171 = load i32, i32* @PM3ScissorMaxXY, align 4
  %172 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %173, %175
  %177 = and i64 %176, 4095
  %178 = shl i64 %177, 16
  %179 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %180, %182
  %184 = and i64 %183, 4095
  %185 = or i64 %178, %184
  %186 = trunc i64 %185 to i32
  %187 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %170, i32 %171, i32 %186)
  %188 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %189 = load i32, i32* @PM3FBSourceReadBufferOffset, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @PM3FBSourceReadBufferOffset_XOffset(i32 %190)
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @PM3FBSourceReadBufferOffset_YOffset(i32 %192)
  %194 = or i32 %191, %193
  %195 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %188, i32 %189, i32 %194)
  %196 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %197 = load i32, i32* @PM3RectanglePosition, align 4
  %198 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = sub nsw i64 %199, %201
  %203 = trunc i64 %202 to i32
  %204 = call i32 @PM3RectanglePosition_XOffset(i32 %203)
  %205 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 @PM3RectanglePosition_YOffset(i32 %207)
  %209 = or i32 %204, %208
  %210 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %196, i32 %197, i32 %209)
  %211 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %212 = load i32, i32* @PM3Render2D, align 4
  %213 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp sgt i64 %214, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %127
  %219 = load i32, i32* @PM3Render2D_XPositive, align 4
  br label %221

220:                                              ; preds = %127
  br label %221

221:                                              ; preds = %220, %218
  %222 = phi i32 [ %219, %218 ], [ 0, %220 ]
  %223 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %224, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = load i32, i32* @PM3Render2D_YPositive, align 4
  br label %231

230:                                              ; preds = %221
  br label %231

231:                                              ; preds = %230, %228
  %232 = phi i32 [ %229, %228 ], [ 0, %230 ]
  %233 = or i32 %222, %232
  %234 = load i32, i32* @PM3Render2D_Operation_Normal, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @PM3Render2D_SpanOperation, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @PM3Render2D_FBSourceReadEnable, align 4
  %239 = or i32 %237, %238
  %240 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %241, %243
  %245 = trunc i64 %244 to i32
  %246 = call i32 @PM3Render2D_Width(i32 %245)
  %247 = or i32 %239, %246
  %248 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = call i32 @PM3Render2D_Height(i32 %250)
  %252 = or i32 %247, %251
  %253 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %211, i32 %212, i32 %252)
  br label %254

254:                                              ; preds = %231, %70, %28, %20
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @memcpy(%struct.fb_copyarea*, %struct.fb_copyarea*, i32) #1

declare dso_local i32 @PM3_WAIT(%struct.pm3_par*, i32) #1

declare dso_local i32 @PM3_WRITE_REG(%struct.pm3_par*, i32, i32) #1

declare dso_local i32 @PM3Config2D_ForegroundROP(i32) #1

declare dso_local i32 @PM3FBSourceReadBufferOffset_XOffset(i32) #1

declare dso_local i32 @PM3FBSourceReadBufferOffset_YOffset(i32) #1

declare dso_local i32 @PM3RectanglePosition_XOffset(i32) #1

declare dso_local i32 @PM3RectanglePosition_YOffset(i32) #1

declare dso_local i32 @PM3Render2D_Width(i32) #1

declare dso_local i32 @PM3Render2D_Height(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
