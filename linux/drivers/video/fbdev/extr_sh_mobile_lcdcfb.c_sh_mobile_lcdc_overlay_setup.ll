; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_overlay_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_overlay_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_overlay = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@LDBCR = common dso_local global i32 0, align 4
@LDBBSIFR_EN = common dso_local global i32 0, align 4
@LDBBSIFR_LAY_SHIFT = common dso_local global i32 0, align 4
@LDBBSIFR_BRSEL = common dso_local global i32 0, align 4
@LDBBSIFR_ROP3_SHIFT = common dso_local global i32 0, align 4
@LDBBSIFR_SWPL = common dso_local global i32 0, align 4
@LDBBSIFR_SWPW = common dso_local global i32 0, align 4
@LDBBSIFR_SWPB = common dso_local global i32 0, align 4
@LDBBSIFR_AL_1 = common dso_local global i32 0, align 4
@LDBBSIFR_RY = common dso_local global i32 0, align 4
@LDBBSIFR_RPKF_RGB16 = common dso_local global i32 0, align 4
@LDBBSIFR_RPKF_RGB24 = common dso_local global i32 0, align 4
@LDBBSIFR_AL_PK = common dso_local global i32 0, align 4
@LDDFR_PKF_ARGB32 = common dso_local global i32 0, align 4
@LDBBSIFR_CHRR_420 = common dso_local global i32 0, align 4
@LDBBSIFR_CHRR_422 = common dso_local global i32 0, align 4
@LDBBSIFR_CHRR_444 = common dso_local global i32 0, align 4
@LDBBSSZR_BVSS_SHIFT = common dso_local global i32 0, align 4
@LDBBSSZR_BHSS_SHIFT = common dso_local global i32 0, align 4
@LDBBLOCR_CVLC_SHIFT = common dso_local global i32 0, align 4
@LDBBLOCR_CHLC_SHIFT = common dso_local global i32 0, align 4
@LDBBSMWR_BSMW_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_lcdc_overlay*)* @sh_mobile_lcdc_overlay_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_overlay_setup(%struct.sh_mobile_lcdc_overlay* %0) #0 {
  %2 = alloca %struct.sh_mobile_lcdc_overlay*, align 8
  %3 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_overlay* %0, %struct.sh_mobile_lcdc_overlay** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %5 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %4, i32 0, i32 16
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %1
  %9 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %10 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %9, i32 0, i32 14
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LDBCR, align 4
  %15 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %16 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LDBCR_UPC(i32 %17)
  %19 = call i32 @lcdc_write(i32 %13, i32 %14, i32 %18)
  %20 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %21 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %22 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @LDBnBSIFR(i32 %23)
  %25 = call i32 @lcdc_write_overlay(%struct.sh_mobile_lcdc_overlay* %20, i32 %24, i32 0)
  %26 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %27 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %26, i32 0, i32 14
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LDBCR, align 4
  %32 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %33 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @LDBCR_UPF(i32 %34)
  %36 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %37 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @LDBCR_UPD(i32 %38)
  %40 = or i32 %35, %39
  %41 = call i32 @lcdc_write(i32 %30, i32 %31, i32 %40)
  br label %253

42:                                               ; preds = %1
  %43 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %44 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %47 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %49 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %52 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %55 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  %58 = add nsw i32 %50, %57
  %59 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %60 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %62 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %82 [
    i32 138, label %64
    i32 137, label %72
  ]

64:                                               ; preds = %42
  %65 = load i32, i32* @LDBBSIFR_EN, align 4
  %66 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %67 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @LDBBSIFR_LAY_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %65, %70
  store i32 %71, i32* %3, align 4
  br label %82

72:                                               ; preds = %42
  %73 = load i32, i32* @LDBBSIFR_EN, align 4
  %74 = load i32, i32* @LDBBSIFR_BRSEL, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %77 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LDBBSIFR_ROP3_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = or i32 %75, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %42, %72, %64
  %83 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %84 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %83, i32 0, i32 15
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %103 [
    i32 128, label %88
    i32 132, label %88
    i32 129, label %88
    i32 130, label %88
    i32 136, label %94
    i32 134, label %94
    i32 133, label %94
    i32 131, label %94
    i32 135, label %102
  ]

88:                                               ; preds = %82, %82, %82, %82
  %89 = load i32, i32* @LDBBSIFR_SWPL, align 4
  %90 = load i32, i32* @LDBBSIFR_SWPW, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  br label %107

94:                                               ; preds = %82, %82, %82, %82
  %95 = load i32, i32* @LDBBSIFR_SWPL, align 4
  %96 = load i32, i32* @LDBBSIFR_SWPW, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @LDBBSIFR_SWPB, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  br label %107

102:                                              ; preds = %82
  br label %103

103:                                              ; preds = %82, %102
  %104 = load i32, i32* @LDBBSIFR_SWPL, align 4
  %105 = load i32, i32* %3, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %94, %88
  %108 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %109 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %108, i32 0, i32 15
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %155 [
    i32 128, label %113
    i32 136, label %121
    i32 135, label %129
    i32 134, label %137
    i32 132, label %137
    i32 133, label %143
    i32 129, label %143
    i32 131, label %149
    i32 130, label %149
  ]

113:                                              ; preds = %107
  %114 = load i32, i32* @LDBBSIFR_AL_1, align 4
  %115 = load i32, i32* @LDBBSIFR_RY, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @LDBBSIFR_RPKF_RGB16, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %3, align 4
  br label %155

121:                                              ; preds = %107
  %122 = load i32, i32* @LDBBSIFR_AL_1, align 4
  %123 = load i32, i32* @LDBBSIFR_RY, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @LDBBSIFR_RPKF_RGB24, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  br label %155

129:                                              ; preds = %107
  %130 = load i32, i32* @LDBBSIFR_AL_PK, align 4
  %131 = load i32, i32* @LDBBSIFR_RY, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @LDDFR_PKF_ARGB32, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %3, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %3, align 4
  br label %155

137:                                              ; preds = %107, %107
  %138 = load i32, i32* @LDBBSIFR_AL_1, align 4
  %139 = load i32, i32* @LDBBSIFR_CHRR_420, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %3, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %3, align 4
  br label %155

143:                                              ; preds = %107, %107
  %144 = load i32, i32* @LDBBSIFR_AL_1, align 4
  %145 = load i32, i32* @LDBBSIFR_CHRR_422, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* %3, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %3, align 4
  br label %155

149:                                              ; preds = %107, %107
  %150 = load i32, i32* @LDBBSIFR_AL_1, align 4
  %151 = load i32, i32* @LDBBSIFR_CHRR_444, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* %3, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %107, %149, %143, %137, %129, %121, %113
  %156 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %157 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %156, i32 0, i32 14
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @LDBCR, align 4
  %162 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %163 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %162, i32 0, i32 13
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @LDBCR_UPC(i32 %164)
  %166 = call i32 @lcdc_write(i32 %160, i32 %161, i32 %165)
  %167 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %168 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %169 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @LDBnBSIFR(i32 %170)
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @lcdc_write_overlay(%struct.sh_mobile_lcdc_overlay* %167, i32 %171, i32 %172)
  %174 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %175 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %176 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %175, i32 0, i32 13
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @LDBnBSSZR(i32 %177)
  %179 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %180 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @LDBBSSZR_BVSS_SHIFT, align 4
  %183 = shl i32 %181, %182
  %184 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %185 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @LDBBSSZR_BHSS_SHIFT, align 4
  %188 = shl i32 %186, %187
  %189 = or i32 %183, %188
  %190 = call i32 @lcdc_write_overlay(%struct.sh_mobile_lcdc_overlay* %174, i32 %178, i32 %189)
  %191 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %192 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %193 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %192, i32 0, i32 13
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @LDBnBLOCR(i32 %194)
  %196 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %197 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %196, i32 0, i32 10
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @LDBBLOCR_CVLC_SHIFT, align 4
  %200 = shl i32 %198, %199
  %201 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %202 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %201, i32 0, i32 11
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @LDBBLOCR_CHLC_SHIFT, align 4
  %205 = shl i32 %203, %204
  %206 = or i32 %200, %205
  %207 = call i32 @lcdc_write_overlay(%struct.sh_mobile_lcdc_overlay* %191, i32 %195, i32 %206)
  %208 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %209 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %210 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %209, i32 0, i32 13
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @LDBnBSMWR(i32 %211)
  %213 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %214 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %213, i32 0, i32 12
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @LDBBSMWR_BSMW_SHIFT, align 4
  %217 = shl i32 %215, %216
  %218 = call i32 @lcdc_write_overlay(%struct.sh_mobile_lcdc_overlay* %208, i32 %212, i32 %217)
  %219 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %220 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %221 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %220, i32 0, i32 13
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @LDBnBSAYR(i32 %222)
  %224 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %225 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @lcdc_write_overlay(%struct.sh_mobile_lcdc_overlay* %219, i32 %223, i32 %226)
  %228 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %229 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %230 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %229, i32 0, i32 13
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @LDBnBSACR(i32 %231)
  %233 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %234 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @lcdc_write_overlay(%struct.sh_mobile_lcdc_overlay* %228, i32 %232, i32 %235)
  %237 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %238 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %237, i32 0, i32 14
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @LDBCR, align 4
  %243 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %244 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %243, i32 0, i32 13
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @LDBCR_UPF(i32 %245)
  %247 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %2, align 8
  %248 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %247, i32 0, i32 13
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @LDBCR_UPD(i32 %249)
  %251 = or i32 %246, %250
  %252 = call i32 @lcdc_write(i32 %241, i32 %242, i32 %251)
  br label %253

253:                                              ; preds = %155, %8
  ret void
}

declare dso_local i32 @lcdc_write(i32, i32, i32) #1

declare dso_local i32 @LDBCR_UPC(i32) #1

declare dso_local i32 @lcdc_write_overlay(%struct.sh_mobile_lcdc_overlay*, i32, i32) #1

declare dso_local i32 @LDBnBSIFR(i32) #1

declare dso_local i32 @LDBCR_UPF(i32) #1

declare dso_local i32 @LDBCR_UPD(i32) #1

declare dso_local i32 @LDBnBSSZR(i32) #1

declare dso_local i32 @LDBnBLOCR(i32) #1

declare dso_local i32 @LDBnBSMWR(i32) #1

declare dso_local i32 @LDBnBSAYR(i32) #1

declare dso_local i32 @LDBnBSACR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
