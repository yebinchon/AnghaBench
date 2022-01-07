; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_bw_filter_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_bw_filter_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i32, i32, i32, i32 }

@RF_CONTROL0 = common dso_local global i32 0, align 4
@RF_BYPASS0 = common dso_local global i32 0, align 4
@BBP4_BANDWIDTH = common dso_local global i32 0, align 4
@CONFIG_CHANNEL_HT40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32)* @rt2800_bw_filter_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_bw_filter_calibration(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2800_drv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %52 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %51, i32 0, i32 1
  %53 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %52, align 8
  store %struct.rt2800_drv_data* %53, %struct.rt2800_drv_data** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 9, i32* %10, align 4
  store i32 2, i32* %11, align 4
  store i32 39, i32* %12, align 4
  store i32 49, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = load i32, i32* @RF_CONTROL0, align 4
  %56 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %54, i32 %55)
  store i32 %56, i32* %49, align 4
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %58 = load i32, i32* @RF_BYPASS0, align 4
  %59 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %57, i32 %58)
  store i32 %59, i32* %50, align 4
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %60, i32 23)
  store i32 %61, i32* %48, align 4
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = call i32 @rt2800_bbp_dcoc_read(%struct.rt2x00_dev* %62, i32 0)
  store i32 %63, i32* %46, align 4
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %65 = call i32 @rt2800_bbp_dcoc_read(%struct.rt2x00_dev* %64, i32 2)
  store i32 %65, i32* %47, align 4
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %67 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %66, i32 5, i32 0)
  store i32 %67, i32* %22, align 4
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %69 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %68, i32 5, i32 1)
  store i32 %69, i32* %23, align 4
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %71 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %70, i32 5, i32 3)
  store i32 %71, i32* %24, align 4
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %73 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %72, i32 5, i32 4)
  store i32 %73, i32* %25, align 4
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %74, i32 5, i32 5)
  store i32 %75, i32* %26, align 4
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %77 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %76, i32 5, i32 6)
  store i32 %77, i32* %27, align 4
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %79 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %78, i32 5, i32 7)
  store i32 %79, i32* %28, align 4
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %81 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %80, i32 5, i32 8)
  store i32 %81, i32* %29, align 4
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %82, i32 5, i32 17)
  store i32 %83, i32* %30, align 4
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %85 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %84, i32 5, i32 18)
  store i32 %85, i32* %31, align 4
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %87 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %86, i32 5, i32 19)
  store i32 %87, i32* %32, align 4
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %89 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %88, i32 5, i32 20)
  store i32 %89, i32* %33, align 4
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %91 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %90, i32 5, i32 37)
  store i32 %91, i32* %34, align 4
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %92, i32 5, i32 38)
  store i32 %93, i32* %35, align 4
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %95 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %94, i32 5, i32 39)
  store i32 %95, i32* %36, align 4
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %97 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %96, i32 5, i32 40)
  store i32 %97, i32* %37, align 4
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %99 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %98, i32 5, i32 41)
  store i32 %99, i32* %38, align 4
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %101 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %100, i32 5, i32 42)
  store i32 %101, i32* %39, align 4
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %103 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %102, i32 5, i32 43)
  store i32 %103, i32* %40, align 4
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %105 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %104, i32 5, i32 44)
  store i32 %105, i32* %41, align 4
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %107 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %106, i32 5, i32 45)
  store i32 %107, i32* %42, align 4
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %109 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %108, i32 5, i32 46)
  store i32 %109, i32* %43, align 4
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %111 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %110, i32 5, i32 58)
  store i32 %111, i32* %44, align 4
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %113 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %112, i32 5, i32 59)
  store i32 %113, i32* %45, align 4
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %115 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %114, i32 5, i32 0)
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = or i32 %116, 3
  store i32 %117, i32* %18, align 4
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %118, i32 5, i32 0, i32 %119)
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %122 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %121, i32 5, i32 1)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = or i32 %123, 1
  store i32 %124, i32* %18, align 4
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %125, i32 5, i32 1, i32 %126)
  store i32 0, i32* %16, align 4
  br label %128

128:                                              ; preds = %142, %2
  %129 = call i32 @usleep_range(i32 500, i32 2000)
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %131 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %130, i32 5, i32 1)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %16, align 4
  %137 = icmp eq i32 %136, 40
  br i1 %137, label %138, label %139

138:                                              ; preds = %135, %128
  br label %145

139:                                              ; preds = %135
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %143, 40
  br i1 %144, label %128, label %145

145:                                              ; preds = %142, %138
  %146 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %147 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %146, i32 5, i32 0)
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %18, align 4
  %149 = and i32 %148, -4
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = or i32 %150, 1
  store i32 %151, i32* %18, align 4
  %152 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %153 = load i32, i32* %18, align 4
  %154 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %152, i32 5, i32 0, i32 %153)
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %156 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %155, i32 23)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = and i32 %157, -32
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = or i32 %159, 16
  store i32 %160, i32* %17, align 4
  %161 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %161, i32 23, i32 %162)
  br label %164

164:                                              ; preds = %391, %145
  %165 = load i32, i32* %14, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  store i32 0, i32* %15, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %9, align 4
  br label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %172, %170
  br label %183

175:                                              ; preds = %164
  store i32 1, i32* %15, align 4
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %9, align 4
  br label %182

180:                                              ; preds = %175
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %180, %178
  br label %183

183:                                              ; preds = %182, %174
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %185 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %184, i32 5, i32 8)
  store i32 %185, i32* %18, align 4
  %186 = load i32, i32* %18, align 4
  %187 = and i32 %186, -5
  store i32 %187, i32* %18, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %193

190:                                              ; preds = %183
  %191 = load i32, i32* %18, align 4
  %192 = or i32 %191, 4
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %190, %183
  %194 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %195 = load i32, i32* %18, align 4
  %196 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %194, i32 5, i32 8, i32 %195)
  %197 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %198 = load i32, i32* %15, align 4
  %199 = call i32 @rt2800_bbp_core_soft_reset(%struct.rt2x00_dev* %197, i32 1, i32 %198)
  %200 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %201 = load i32, i32* %4, align 4
  %202 = call i32 @rt2800_rf_lp_config(%struct.rt2x00_dev* %200, i32 %201)
  %203 = load i32, i32* %4, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %193
  store i32 0, i32* %6, align 4
  %206 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %207 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %206, i32 5, i32 58)
  store i32 %207, i32* %18, align 4
  %208 = load i32, i32* %18, align 4
  %209 = and i32 %208, -128
  store i32 %209, i32* %18, align 4
  %210 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %211 = load i32, i32* %18, align 4
  %212 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %210, i32 5, i32 58, i32 %211)
  %213 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %214 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %213, i32 5, i32 59)
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* %18, align 4
  %216 = and i32 %215, -128
  store i32 %216, i32* %18, align 4
  %217 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %218 = load i32, i32* %18, align 4
  %219 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %217, i32 5, i32 59, i32 %218)
  br label %235

220:                                              ; preds = %193
  store i32 0, i32* %7, align 4
  %221 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %222 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %221, i32 5, i32 6)
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %18, align 4
  %224 = and i32 %223, -128
  store i32 %224, i32* %18, align 4
  %225 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %226 = load i32, i32* %18, align 4
  %227 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %225, i32 5, i32 6, i32 %226)
  %228 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %229 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %228, i32 5, i32 7)
  store i32 %229, i32* %18, align 4
  %230 = load i32, i32* %18, align 4
  %231 = and i32 %230, -128
  store i32 %231, i32* %18, align 4
  %232 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %233 = load i32, i32* %18, align 4
  %234 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %232, i32 5, i32 7, i32 %233)
  br label %235

235:                                              ; preds = %220, %205
  %236 = call i32 @usleep_range(i32 1000, i32 2000)
  %237 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %238 = call i32 @rt2800_bbp_dcoc_read(%struct.rt2x00_dev* %237, i32 2)
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %17, align 4
  %240 = and i32 %239, -7
  store i32 %240, i32* %17, align 4
  %241 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %242 = load i32, i32* %17, align 4
  %243 = call i32 @rt2800_bbp_dcoc_write(%struct.rt2x00_dev* %241, i32 2, i32 %242)
  %244 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %245 = load i32, i32* %15, align 4
  %246 = call i32 @rt2800_bbp_core_soft_reset(%struct.rt2x00_dev* %244, i32 0, i32 %245)
  %247 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %248 = call signext i8 @rt2800_lp_tx_filter_bw_cal(%struct.rt2x00_dev* %247)
  store i8 %248, i8* %19, align 1
  %249 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %250 = call i32 @rt2800_bbp_dcoc_read(%struct.rt2x00_dev* %249, i32 2)
  store i32 %250, i32* %17, align 4
  %251 = load i32, i32* %17, align 4
  %252 = or i32 %251, 6
  store i32 %252, i32* %17, align 4
  %253 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %254 = load i32, i32* %17, align 4
  %255 = call i32 @rt2800_bbp_dcoc_write(%struct.rt2x00_dev* %253, i32 2, i32 %254)
  br label %256

256:                                              ; preds = %359, %235
  %257 = load i32, i32* %4, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %280

259:                                              ; preds = %256
  %260 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %261 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %260, i32 5, i32 58)
  store i32 %261, i32* %18, align 4
  %262 = load i32, i32* %18, align 4
  %263 = and i32 %262, -128
  store i32 %263, i32* %18, align 4
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* %18, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %18, align 4
  %267 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %268 = load i32, i32* %18, align 4
  %269 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %267, i32 5, i32 58, i32 %268)
  %270 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %271 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %270, i32 5, i32 59)
  store i32 %271, i32* %18, align 4
  %272 = load i32, i32* %18, align 4
  %273 = and i32 %272, -128
  store i32 %273, i32* %18, align 4
  %274 = load i32, i32* %6, align 4
  %275 = load i32, i32* %18, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %18, align 4
  %277 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %278 = load i32, i32* %18, align 4
  %279 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %277, i32 5, i32 59, i32 %278)
  br label %301

280:                                              ; preds = %256
  %281 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %282 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %281, i32 5, i32 6)
  store i32 %282, i32* %18, align 4
  %283 = load i32, i32* %18, align 4
  %284 = and i32 %283, -128
  store i32 %284, i32* %18, align 4
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* %18, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %18, align 4
  %288 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %289 = load i32, i32* %18, align 4
  %290 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %288, i32 5, i32 6, i32 %289)
  %291 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %292 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %291, i32 5, i32 7)
  store i32 %292, i32* %18, align 4
  %293 = load i32, i32* %18, align 4
  %294 = and i32 %293, -128
  store i32 %294, i32* %18, align 4
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* %18, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %18, align 4
  %298 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %299 = load i32, i32* %18, align 4
  %300 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %298, i32 5, i32 7, i32 %299)
  br label %301

301:                                              ; preds = %280, %259
  %302 = call i32 @usleep_range(i32 500, i32 1000)
  %303 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %304 = load i32, i32* %15, align 4
  %305 = call i32 @rt2800_bbp_core_soft_reset(%struct.rt2x00_dev* %303, i32 0, i32 %304)
  %306 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %307 = call signext i8 @rt2800_lp_tx_filter_bw_cal(%struct.rt2x00_dev* %306)
  store i8 %307, i8* %20, align 1
  %308 = load i8, i8* %19, align 1
  %309 = sext i8 %308 to i32
  %310 = load i8, i8* %20, align 1
  %311 = sext i8 %310 to i32
  %312 = sub nsw i32 %309, %311
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %21, align 1
  %314 = load i32, i32* %4, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %301
  %317 = load i32, i32* %6, align 4
  store i32 %317, i32* %8, align 4
  br label %320

318:                                              ; preds = %301
  %319 = load i32, i32* %7, align 4
  store i32 %319, i32* %8, align 4
  br label %320

320:                                              ; preds = %318, %316
  %321 = load i8, i8* %21, align 1
  %322 = sext i8 %321 to i32
  %323 = load i32, i32* %9, align 4
  %324 = icmp sgt i32 %322, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load i32, i32* %8, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %336, label %328

328:                                              ; preds = %325, %320
  %329 = load i8, i8* %21, align 1
  %330 = sext i8 %329 to i32
  %331 = load i32, i32* %9, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %342

333:                                              ; preds = %328
  %334 = load i32, i32* %8, align 4
  %335 = icmp eq i32 %334, 63
  br i1 %335, label %336, label %342

336:                                              ; preds = %333, %325
  %337 = load i32, i32* %4, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %336
  store i32 0, i32* %6, align 4
  br label %341

340:                                              ; preds = %336
  store i32 0, i32* %7, align 4
  br label %341

341:                                              ; preds = %340, %339
  br label %361

342:                                              ; preds = %333, %328
  %343 = load i8, i8* %21, align 1
  %344 = sext i8 %343 to i32
  %345 = load i32, i32* %9, align 4
  %346 = icmp sle i32 %344, %345
  br i1 %346, label %347, label %360

347:                                              ; preds = %342
  %348 = load i32, i32* %8, align 4
  %349 = icmp slt i32 %348, 63
  br i1 %349, label %350, label %360

350:                                              ; preds = %347
  %351 = load i32, i32* %4, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %350
  %354 = load i32, i32* %6, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %6, align 4
  br label %359

356:                                              ; preds = %350
  %357 = load i32, i32* %7, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %7, align 4
  br label %359

359:                                              ; preds = %356, %353
  br label %256

360:                                              ; preds = %347, %342
  br label %361

361:                                              ; preds = %360, %341
  %362 = load i32, i32* %4, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %376

364:                                              ; preds = %361
  %365 = load i32, i32* %14, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %364
  %368 = load i32, i32* %6, align 4
  %369 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %5, align 8
  %370 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %369, i32 0, i32 0
  store i32 %368, i32* %370, align 4
  br label %375

371:                                              ; preds = %364
  %372 = load i32, i32* %6, align 4
  %373 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %5, align 8
  %374 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %373, i32 0, i32 1
  store i32 %372, i32* %374, align 4
  br label %375

375:                                              ; preds = %371, %367
  br label %388

376:                                              ; preds = %361
  %377 = load i32, i32* %14, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %376
  %380 = load i32, i32* %7, align 4
  %381 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %5, align 8
  %382 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %381, i32 0, i32 2
  store i32 %380, i32* %382, align 4
  br label %387

383:                                              ; preds = %376
  %384 = load i32, i32* %7, align 4
  %385 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %5, align 8
  %386 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %385, i32 0, i32 3
  store i32 %384, i32* %386, align 4
  br label %387

387:                                              ; preds = %383, %379
  br label %388

388:                                              ; preds = %387, %375
  %389 = load i32, i32* %14, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %14, align 4
  br label %391

391:                                              ; preds = %388
  %392 = load i32, i32* %14, align 4
  %393 = icmp sle i32 %392, 1
  br i1 %393, label %164, label %394

394:                                              ; preds = %391
  %395 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %396 = load i32, i32* %22, align 4
  %397 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %395, i32 5, i32 0, i32 %396)
  %398 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %399 = load i32, i32* %23, align 4
  %400 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %398, i32 5, i32 1, i32 %399)
  %401 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %402 = load i32, i32* %24, align 4
  %403 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %401, i32 5, i32 3, i32 %402)
  %404 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %405 = load i32, i32* %25, align 4
  %406 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %404, i32 5, i32 4, i32 %405)
  %407 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %408 = load i32, i32* %26, align 4
  %409 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %407, i32 5, i32 5, i32 %408)
  %410 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %411 = load i32, i32* %27, align 4
  %412 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %410, i32 5, i32 6, i32 %411)
  %413 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %414 = load i32, i32* %28, align 4
  %415 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %413, i32 5, i32 7, i32 %414)
  %416 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %417 = load i32, i32* %29, align 4
  %418 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %416, i32 5, i32 8, i32 %417)
  %419 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %420 = load i32, i32* %30, align 4
  %421 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %419, i32 5, i32 17, i32 %420)
  %422 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %423 = load i32, i32* %31, align 4
  %424 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %422, i32 5, i32 18, i32 %423)
  %425 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %426 = load i32, i32* %32, align 4
  %427 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %425, i32 5, i32 19, i32 %426)
  %428 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %429 = load i32, i32* %33, align 4
  %430 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %428, i32 5, i32 20, i32 %429)
  %431 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %432 = load i32, i32* %34, align 4
  %433 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %431, i32 5, i32 37, i32 %432)
  %434 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %435 = load i32, i32* %35, align 4
  %436 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %434, i32 5, i32 38, i32 %435)
  %437 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %438 = load i32, i32* %36, align 4
  %439 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %437, i32 5, i32 39, i32 %438)
  %440 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %441 = load i32, i32* %37, align 4
  %442 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %440, i32 5, i32 40, i32 %441)
  %443 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %444 = load i32, i32* %38, align 4
  %445 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %443, i32 5, i32 41, i32 %444)
  %446 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %447 = load i32, i32* %39, align 4
  %448 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %446, i32 5, i32 42, i32 %447)
  %449 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %450 = load i32, i32* %40, align 4
  %451 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %449, i32 5, i32 43, i32 %450)
  %452 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %453 = load i32, i32* %41, align 4
  %454 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %452, i32 5, i32 44, i32 %453)
  %455 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %456 = load i32, i32* %42, align 4
  %457 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %455, i32 5, i32 45, i32 %456)
  %458 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %459 = load i32, i32* %43, align 4
  %460 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %458, i32 5, i32 46, i32 %459)
  %461 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %462 = load i32, i32* %44, align 4
  %463 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %461, i32 5, i32 58, i32 %462)
  %464 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %465 = load i32, i32* %45, align 4
  %466 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %464, i32 5, i32 59, i32 %465)
  %467 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %468 = load i32, i32* %48, align 4
  %469 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %467, i32 23, i32 %468)
  %470 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %471 = load i32, i32* %46, align 4
  %472 = call i32 @rt2800_bbp_dcoc_write(%struct.rt2x00_dev* %470, i32 0, i32 %471)
  %473 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %474 = load i32, i32* %47, align 4
  %475 = call i32 @rt2800_bbp_dcoc_write(%struct.rt2x00_dev* %473, i32 2, i32 %474)
  %476 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %477 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %476, i32 4)
  store i32 %477, i32* %17, align 4
  %478 = load i32, i32* @BBP4_BANDWIDTH, align 4
  %479 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %480 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %481 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %480, i32 0, i32 0
  %482 = call i32 @test_bit(i32 %479, i32* %481)
  %483 = mul nsw i32 2, %482
  %484 = call i32 @rt2x00_set_field8(i32* %17, i32 %478, i32 %483)
  %485 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %486 = load i32, i32* %17, align 4
  %487 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %485, i32 4, i32 %486)
  %488 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %489 = load i32, i32* @RF_CONTROL0, align 4
  %490 = load i32, i32* %49, align 4
  %491 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %488, i32 %489, i32 %490)
  %492 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %493 = load i32, i32* @RF_BYPASS0, align 4
  %494 = load i32, i32* %50, align 4
  %495 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %492, i32 %493, i32 %494)
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_dcoc_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_core_soft_reset(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rf_lp_config(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_dcoc_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local signext i8 @rt2800_lp_tx_filter_bw_cal(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
