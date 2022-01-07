; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_10__, %struct.TYPE_6__, %struct.da8xx_fb_par* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.da8xx_fb_par = type { i64 }

@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@lcd_revision = common dso_local global i64 0, align 8
@LCD_VERSION_1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LOAD_PALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.da8xx_fb_par*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 3
  %21 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %20, align 8
  store %struct.da8xx_fb_par* %21, %struct.da8xx_fb_par** %14, align 8
  %22 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %14, align 8
  %23 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i16*
  store i16* %25, i16** %15, align 8
  store i32 0, i32* %17, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ugt i32 %26, 255
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %221

29:                                               ; preds = %6
  %30 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %221

37:                                               ; preds = %29
  %38 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 16
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i64, i64* @lcd_revision, align 8
  %45 = load i64, i64* @LCD_VERSION_1, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %221

50:                                               ; preds = %43, %37
  %51 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %160 [
    i32 128, label %55
    i32 129, label %77
  ]

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CNVT_TOHW(i32 %56, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CNVT_TOHW(i32 %63, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @CNVT_TOHW(i32 %70, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %160

77:                                               ; preds = %50
  %78 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %159 [
    i32 4, label %82
    i32 8, label %126
  ]

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = icmp ugt i32 %83, 15
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %221

88:                                               ; preds = %82
  %89 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %16, align 4
  br label %113

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = lshr i32 %97, 4
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = lshr i32 %99, 8
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = lshr i32 %101, 12
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 3840
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, 240
  %107 = load i32, i32* %16, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, 15
  %111 = load i32, i32* %16, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %96, %94
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %16, align 4
  %118 = or i32 %117, 8192
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* %16, align 4
  %121 = trunc i32 %120 to i16
  %122 = load i16*, i16** %15, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i16, i16* %122, i64 %124
  store i16 %121, i16* %125, align 2
  br label %159

126:                                              ; preds = %77
  %127 = load i32, i32* %9, align 4
  %128 = lshr i32 %127, 4
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = lshr i32 %129, 8
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = lshr i32 %131, 12
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, 3840
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %10, align 4
  %136 = and i32 %135, 240
  %137 = load i32, i32* %16, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %11, align 4
  %140 = and i32 %139, 15
  %141 = load i32, i32* %16, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %16, align 4
  %143 = load i16*, i16** %15, align 8
  %144 = load i32, i32* %8, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i16, i16* %143, i64 %145
  %147 = load i16, i16* %146, align 2
  %148 = zext i16 %147 to i32
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %126
  store i32 1, i32* %17, align 4
  %152 = load i32, i32* %16, align 4
  %153 = trunc i32 %152 to i16
  %154 = load i16*, i16** %15, align 8
  %155 = load i32, i32* %8, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i16, i16* %154, i64 %156
  store i16 %153, i16* %157, align 2
  br label %158

158:                                              ; preds = %151, %126
  br label %159

159:                                              ; preds = %77, %158, %119
  br label %160

160:                                              ; preds = %50, %159, %55
  %161 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %162 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 128
  br i1 %165, label %166, label %213

166:                                              ; preds = %160
  %167 = load i32, i32* %8, align 4
  %168 = icmp ugt i32 %167, 15
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %7, align 4
  br label %221

172:                                              ; preds = %166
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %175 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = shl i32 %173, %178
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %182 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = shl i32 %180, %185
  %187 = or i32 %179, %186
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %190 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %188, %193
  %195 = or i32 %187, %194
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %18, align 4
  %197 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %198 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to i32*
  %201 = load i32, i32* %8, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %196, i32* %203, align 4
  %204 = load i16*, i16** %15, align 8
  %205 = getelementptr inbounds i16, i16* %204, i64 0
  %206 = load i16, i16* %205, align 2
  %207 = zext i16 %206 to i32
  %208 = icmp ne i32 %207, 16384
  br i1 %208, label %209, label %212

209:                                              ; preds = %172
  store i32 1, i32* %17, align 4
  %210 = load i16*, i16** %15, align 8
  %211 = getelementptr inbounds i16, i16* %210, i64 0
  store i16 16384, i16* %211, align 2
  br label %212

212:                                              ; preds = %209, %172
  br label %213

213:                                              ; preds = %212, %160
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* @LOAD_PALETTE, align 4
  %218 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %14, align 8
  %219 = call i32 @lcd_blit(i32 %217, %struct.da8xx_fb_par* %218)
  br label %220

220:                                              ; preds = %216, %213
  store i32 0, i32* %7, align 4
  br label %221

221:                                              ; preds = %220, %169, %85, %47, %36, %28
  %222 = load i32, i32* %7, align 4
  ret i32 %222
}

declare dso_local i32 @CNVT_TOHW(i32, i32) #1

declare dso_local i32 @lcd_blit(i32, %struct.da8xx_fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
