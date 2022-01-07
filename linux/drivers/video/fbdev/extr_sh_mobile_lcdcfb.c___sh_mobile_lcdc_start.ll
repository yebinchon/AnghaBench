; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c___sh_mobile_lcdc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c___sh_mobile_lcdc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_priv = type { i64, i32, %struct.sh_mobile_lcdc_chan* }
%struct.sh_mobile_lcdc_chan = type { i64, i32, i64, i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@_LDCNT2R = common dso_local global i32 0, align 4
@_LDINTR = common dso_local global i32 0, align 4
@LDPMR = common dso_local global i32 0, align 4
@LDDCKPAT1R = common dso_local global i32 0, align 4
@LDDCKPAT2R = common dso_local global i32 0, align 4
@LDDCKR_MOSEL = common dso_local global i32 0, align 4
@_LDDCKR = common dso_local global i32 0, align 4
@_LDDCKSTPR = common dso_local global i32 0, align 4
@LDDFR_CF1 = common dso_local global i64 0, align 8
@LDDFR_CF0 = common dso_local global i64 0, align 8
@LDDFR = common dso_local global i32 0, align 4
@LDMLSR = common dso_local global i32 0, align 4
@LDSA1R = common dso_local global i32 0, align 4
@LDSA2R = common dso_local global i32 0, align 4
@LDMT1R_IFM = common dso_local global i32 0, align 4
@LDSM1R = common dso_local global i32 0, align 4
@LDSM1R_OS = common dso_local global i64 0, align 8
@LDINTR_FE = common dso_local global i64 0, align 8
@LDDDSR_LS = common dso_local global i64 0, align 8
@LDDDSR_WS = common dso_local global i64 0, align 8
@LDDDSR_BS = common dso_local global i64 0, align 8
@_LDDDSR = common dso_local global i32 0, align 4
@_LDCNT1R = common dso_local global i32 0, align 4
@LDCNT1R_DE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_lcdc_priv*)* @__sh_mobile_lcdc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sh_mobile_lcdc_start(%struct.sh_mobile_lcdc_priv* %0) #0 {
  %2 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %3 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_priv* %0, %struct.sh_mobile_lcdc_priv** %2, align 8
  %7 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %8 = load i32, i32* @_LDCNT2R, align 4
  %9 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %10 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %9, i32 0, i32 2
  %11 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %10, align 8
  %12 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %11, i64 0
  %13 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %16 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %15, i32 0, i32 2
  %17 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %16, align 8
  %18 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %17, i64 1
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = or i64 %14, %20
  %22 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %7, i32 %8, i64 %21)
  %23 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %24 = call i32 @sh_mobile_lcdc_start_stop(%struct.sh_mobile_lcdc_priv* %23, i32 0)
  %25 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %26 = load i32, i32* @_LDINTR, align 4
  %27 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %25, i32 %26, i64 0)
  %28 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %29 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %89, %1
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %34 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %33, i32 0, i32 2
  %35 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %34, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %31
  %39 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %40 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %39, i32 0, i32 2
  %41 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %41, i64 %43
  store %struct.sh_mobile_lcdc_chan* %44, %struct.sh_mobile_lcdc_chan** %3, align 8
  %45 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %46 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %89

50:                                               ; preds = %38
  %51 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %52 = load i32, i32* @LDPMR, align 4
  %53 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %51, i32 %52, i64 0)
  %54 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %55 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %54, i32 0, i32 7
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %89

62:                                               ; preds = %50
  %63 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %64 = load i32, i32* @LDDCKPAT1R, align 4
  %65 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %63, i32 %64, i64 0)
  %66 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %67 = load i32, i32* @LDDCKPAT2R, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sdiv i32 %68, 2
  %70 = shl i32 1, %69
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %66, i32 %67, i64 %72)
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* @LDDCKR_MOSEL, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %62
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %81 = call i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan* %80)
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 8, i32 0
  %85 = shl i32 %79, %84
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %4, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %78, %61, %49
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %31

92:                                               ; preds = %31
  %93 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %94 = load i32, i32* @_LDDCKR, align 4
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %93, i32 %94, i64 %95)
  %97 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %98 = load i32, i32* @_LDDCKSTPR, align 4
  %99 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %97, i32 %98, i64 0)
  %100 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %101 = load i32, i32* @_LDDCKSTPR, align 4
  %102 = call i32 @lcdc_wait_bit(%struct.sh_mobile_lcdc_priv* %100, i32 %101, i32 -1, i32 0)
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %208, %92
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %106 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %105, i32 0, i32 2
  %107 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %106, align 8
  %108 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %107)
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %211

110:                                              ; preds = %103
  %111 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %112 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %111, i32 0, i32 2
  %113 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %113, i64 %115
  store %struct.sh_mobile_lcdc_chan* %116, %struct.sh_mobile_lcdc_chan** %3, align 8
  %117 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %118 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %110
  br label %208

122:                                              ; preds = %110
  %123 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %124 = call i32 @sh_mobile_lcdc_geometry(%struct.sh_mobile_lcdc_chan* %123)
  %125 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %126 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %125, i32 0, i32 6
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %4, align 8
  %130 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %131 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %130, i32 0, i32 6
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %122
  %137 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %138 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  switch i32 %139, label %148 [
    i32 137, label %140
    i32 138, label %144
  ]

140:                                              ; preds = %136
  %141 = load i64, i64* @LDDFR_CF1, align 8
  %142 = load i64, i64* %4, align 8
  %143 = or i64 %142, %141
  store i64 %143, i64* %4, align 8
  br label %148

144:                                              ; preds = %136
  %145 = load i64, i64* @LDDFR_CF0, align 8
  %146 = load i64, i64* %4, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %136, %144, %140
  br label %149

149:                                              ; preds = %148, %122
  %150 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %151 = load i32, i32* @LDDFR, align 4
  %152 = load i64, i64* %4, align 8
  %153 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %150, i32 %151, i64 %152)
  %154 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %155 = load i32, i32* @LDMLSR, align 4
  %156 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %157 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %154, i32 %155, i64 %158)
  %160 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %161 = load i32, i32* @LDSA1R, align 4
  %162 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %163 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %160, i32 %161, i64 %164)
  %166 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %167 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %166, i32 0, i32 6
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %149
  %173 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %174 = load i32, i32* @LDSA2R, align 4
  %175 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %176 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %173, i32 %174, i64 %177)
  br label %179

179:                                              ; preds = %172, %149
  %180 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %181 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @LDMT1R_IFM, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %179
  %187 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %188 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %187, i32 0, i32 7
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %186
  %195 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %196 = load i32, i32* @LDSM1R, align 4
  %197 = load i64, i64* @LDSM1R_OS, align 8
  %198 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %195, i32 %196, i64 %197)
  %199 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %200 = load i32, i32* @_LDINTR, align 4
  %201 = load i64, i64* @LDINTR_FE, align 8
  %202 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %199, i32 %200, i64 %201)
  br label %207

203:                                              ; preds = %186, %179
  %204 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %205 = load i32, i32* @LDSM1R, align 4
  %206 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %204, i32 %205, i64 0)
  br label %207

207:                                              ; preds = %203, %194
  br label %208

208:                                              ; preds = %207, %121
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %5, align 4
  br label %103

211:                                              ; preds = %103
  %212 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %213 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %212, i32 0, i32 2
  %214 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %213, align 8
  %215 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %214, i64 0
  %216 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %215, i32 0, i32 6
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  switch i32 %219, label %231 [
    i32 128, label %220
    i32 132, label %220
    i32 129, label %220
    i32 130, label %220
    i32 136, label %224
    i32 134, label %224
    i32 133, label %224
    i32 131, label %224
    i32 135, label %230
  ]

220:                                              ; preds = %211, %211, %211, %211
  %221 = load i64, i64* @LDDDSR_LS, align 8
  %222 = load i64, i64* @LDDDSR_WS, align 8
  %223 = or i64 %221, %222
  store i64 %223, i64* %4, align 8
  br label %233

224:                                              ; preds = %211, %211, %211, %211
  %225 = load i64, i64* @LDDDSR_LS, align 8
  %226 = load i64, i64* @LDDDSR_WS, align 8
  %227 = or i64 %225, %226
  %228 = load i64, i64* @LDDDSR_BS, align 8
  %229 = or i64 %227, %228
  store i64 %229, i64* %4, align 8
  br label %233

230:                                              ; preds = %211
  br label %231

231:                                              ; preds = %211, %230
  %232 = load i64, i64* @LDDDSR_LS, align 8
  store i64 %232, i64* %4, align 8
  br label %233

233:                                              ; preds = %231, %224, %220
  %234 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %235 = load i32, i32* @_LDDDSR, align 4
  %236 = load i64, i64* %4, align 8
  %237 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %234, i32 %235, i64 %236)
  %238 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %239 = load i32, i32* @_LDCNT1R, align 4
  %240 = load i64, i64* @LDCNT1R_DE, align 8
  %241 = call i32 @lcdc_write(%struct.sh_mobile_lcdc_priv* %238, i32 %239, i64 %240)
  %242 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %243 = call i32 @sh_mobile_lcdc_start_stop(%struct.sh_mobile_lcdc_priv* %242, i32 1)
  %244 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %245 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %244, i32 0, i32 1
  store i32 1, i32* %245, align 8
  ret void
}

declare dso_local i32 @lcdc_write(%struct.sh_mobile_lcdc_priv*, i32, i64) #1

declare dso_local i32 @sh_mobile_lcdc_start_stop(%struct.sh_mobile_lcdc_priv*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan*, i32, i64) #1

declare dso_local i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @lcdc_wait_bit(%struct.sh_mobile_lcdc_priv*, i32, i32, i32) #1

declare dso_local i32 @sh_mobile_lcdc_geometry(%struct.sh_mobile_lcdc_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
