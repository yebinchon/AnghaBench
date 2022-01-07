; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pmagb-b-fb.c_pmagbbfb_osc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pmagb-b-fb.c_pmagbbfb_osc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_3__, i32, %struct.pmagbbfb_par* }
%struct.TYPE_3__ = type { i32 }
%struct.pmagbbfb_par = type { i32, i32 }
%struct.tc_bus = type { i32 }
%struct.TYPE_4__ = type { %struct.tc_bus* }

@pmagbbfb_osc_setup.pmagbbfb_freqs = internal global [13 x i32] [i32 130808, i32 119843, i32 104000, i32 92980, i32 74370, i32 72800, i32 69197, i32 66000, i32 65000, i32 50350, i32 36000, i32 32000, i32 25175], align 16
@SFB_REG_TCCLK_COUNT = common dso_local global i32 0, align 4
@SFB_REG_VIDCLK_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @pmagbbfb_osc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmagbbfb_osc_setup(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pmagbbfb_par*, align 8
  %4 = alloca %struct.tc_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %14, align 8
  store %struct.pmagbbfb_par* %15, %struct.pmagbbfb_par** %3, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_4__* @to_tc_dev(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.tc_bus*, %struct.tc_bus** %20, align 8
  store %struct.tc_bus* %21, %struct.tc_bus** %4, align 8
  store i32 8, i32* %5, align 4
  store i32 8, i32* %6, align 4
  store i32 4104, i32* %7, align 4
  %22 = load %struct.tc_bus*, %struct.tc_bus** %4, align 8
  %23 = call i32 @tc_get_speed(%struct.tc_bus* %22)
  %24 = sdiv i32 %23, 250
  store i32 %24, i32* %10, align 4
  %25 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %26 = call i32 @gp0_write(%struct.pmagbbfb_par* %25, i32 0)
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %58, %1
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %61

30:                                               ; preds = %27
  %31 = call i32 (...) @mb()
  %32 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %33 = load i32, i32* @SFB_REG_TCCLK_COUNT, align 4
  %34 = call i32 @sfb_write(%struct.pmagbbfb_par* %32, i32 %33, i32 0)
  %35 = call i32 (...) @mb()
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %47, %30
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 100
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %41 = load i32, i32* @SFB_REG_TCCLK_COUNT, align 4
  %42 = call i64 @sfb_read(%struct.pmagbbfb_par* %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %50

45:                                               ; preds = %39
  %46 = call i32 @udelay(i32 1)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %36

50:                                               ; preds = %44, %36
  %51 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %52 = load i32, i32* @SFB_REG_VIDCLK_COUNT, align 4
  %53 = call i64 @sfb_read(%struct.pmagbbfb_par* %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %27

61:                                               ; preds = %27
  %62 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %63 = call i32 @gp0_write(%struct.pmagbbfb_par* %62, i32 1)
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %94, %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %97

67:                                               ; preds = %64
  %68 = call i32 (...) @mb()
  %69 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %70 = load i32, i32* @SFB_REG_TCCLK_COUNT, align 4
  %71 = call i32 @sfb_write(%struct.pmagbbfb_par* %69, i32 %70, i32 0)
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %83, %67
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 100
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %77 = load i32, i32* @SFB_REG_TCCLK_COUNT, align 4
  %78 = call i64 @sfb_read(%struct.pmagbbfb_par* %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %86

81:                                               ; preds = %75
  %82 = call i32 @udelay(i32 1)
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %72

86:                                               ; preds = %80, %72
  %87 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %88 = load i32, i32* @SFB_REG_VIDCLK_COUNT, align 4
  %89 = call i64 @sfb_read(%struct.pmagbbfb_par* %87, i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %64

97:                                               ; preds = %64
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %5, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %7, align 4
  %102 = sdiv i32 %101, 2
  %103 = add nsw i32 %100, %102
  %104 = load i32, i32* %7, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %108 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 0), align 16
  %111 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 0), align 16
  %112 = add i32 %111, 32
  %113 = udiv i32 %112, 64
  %114 = sub i32 %110, %113
  %115 = icmp uge i32 %109, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %97
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 0), align 16
  %119 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 0), align 16
  %120 = add i32 %119, 32
  %121 = udiv i32 %120, 64
  %122 = add i32 %118, %121
  %123 = icmp ule i32 %117, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %116
  %125 = load i32, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 0), align 16
  %126 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %127 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %116, %97
  %129 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %130 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %6, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %5, align 4
  %135 = sdiv i32 %134, 2
  %136 = add nsw i32 %133, %135
  %137 = load i32, i32* %5, align 4
  %138 = sdiv i32 %136, %137
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %141 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %182, %128
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 0))
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %185

146:                                              ; preds = %142
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add i32 %155, 128
  %157 = udiv i32 %156, 256
  %158 = sub i32 %151, %157
  %159 = icmp uge i32 %147, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %146
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %169, 128
  %171 = udiv i32 %170, 256
  %172 = add i32 %165, %171
  %173 = icmp ule i32 %161, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %160
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [13 x i32], [13 x i32]* @pmagbbfb_osc_setup.pmagbbfb_freqs, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %180 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  br label %185

181:                                              ; preds = %160, %146
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %142

185:                                              ; preds = %174, %142
  %186 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %187 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %190 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %188, %191
  %193 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %194 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %197 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %195, %198
  %200 = add nsw i32 %199, 256
  %201 = sdiv i32 %200, 512
  %202 = icmp sle i32 %192, %201
  br i1 %202, label %221, label %203

203:                                              ; preds = %185
  %204 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %205 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %208 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %206, %209
  %211 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %212 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %215 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %213, %216
  %218 = add nsw i32 %217, 256
  %219 = sdiv i32 %218, 512
  %220 = icmp sle i32 %210, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %203, %185
  %222 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %223 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %222, i32 0, i32 1
  store i32 0, i32* %223, align 4
  br label %224

224:                                              ; preds = %221, %203
  %225 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %226 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %227 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i32
  %231 = call i32 @gp0_write(%struct.pmagbbfb_par* %225, i32 %230)
  %232 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %233 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %224
  %237 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %238 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = sdiv i32 %239, 2
  %241 = add nsw i32 1000000000, %240
  %242 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %243 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = sdiv i32 %241, %244
  br label %256

246:                                              ; preds = %224
  %247 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %248 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = sdiv i32 %249, 2
  %251 = add nsw i32 1000000000, %250
  %252 = load %struct.pmagbbfb_par*, %struct.pmagbbfb_par** %3, align 8
  %253 = getelementptr inbounds %struct.pmagbbfb_par, %struct.pmagbbfb_par* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = sdiv i32 %251, %254
  br label %256

256:                                              ; preds = %246, %236
  %257 = phi i32 [ %245, %236 ], [ %255, %246 ]
  %258 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %259 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  store i32 %257, i32* %260, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @to_tc_dev(i32) #1

declare dso_local i32 @tc_get_speed(%struct.tc_bus*) #1

declare dso_local i32 @gp0_write(%struct.pmagbbfb_par*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @sfb_write(%struct.pmagbbfb_par*, i32, i32) #1

declare dso_local i64 @sfb_read(%struct.pmagbbfb_par*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
