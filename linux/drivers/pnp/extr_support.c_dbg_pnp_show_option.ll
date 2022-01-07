; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_support.c_dbg_pnp_show_option.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_support.c_dbg_pnp_show_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_option = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pnp_dma, %struct.pnp_irq, %struct.pnp_mem, %struct.pnp_port }
%struct.pnp_dma = type { i32, i32 }
%struct.pnp_irq = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pnp_mem = type { i32, i64, i64, i64, i64 }
%struct.pnp_port = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"  dependent set %d (%s) \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  independent \00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"io  min %#llx max %#llx align %lld size %lld flags %#x\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"mem min %#llx max %#llx align %lld size %lld flags %#x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@PNP_IRQ_NR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" <none>\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" flags %#x\00", align 1
@IORESOURCE_IRQ_OPTIONAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c" (optional)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c" (bitmask %#x) flags %#x\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_pnp_show_option(%struct.pnp_dev* %0, %struct.pnp_option* %1) #0 {
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca %struct.pnp_option*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pnp_port*, align 8
  %9 = alloca %struct.pnp_mem*, align 8
  %10 = alloca %struct.pnp_irq*, align 8
  %11 = alloca %struct.pnp_dma*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  store %struct.pnp_option* %1, %struct.pnp_option** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.pnp_option*, %struct.pnp_option** %4, align 8
  %13 = call i64 @pnp_option_is_dependent(%struct.pnp_option* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 128, %21
  %23 = trunc i64 %22 to i32
  %24 = load %struct.pnp_option*, %struct.pnp_option** %4, align 8
  %25 = call i32 @pnp_option_set(%struct.pnp_option* %24)
  %26 = load %struct.pnp_option*, %struct.pnp_option** %4, align 8
  %27 = call i32 @pnp_option_priority_name(%struct.pnp_option* %26)
  %28 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %19, i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  br label %47

33:                                               ; preds = %2
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 128, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %37, i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %33, %15
  %48 = load %struct.pnp_option*, %struct.pnp_option** %4, align 8
  %49 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %311 [
    i32 130, label %51
    i32 128, label %83
    i32 129, label %115
    i32 131, label %224
  ]

51:                                               ; preds = %47
  %52 = load %struct.pnp_option*, %struct.pnp_option** %4, align 8
  %53 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store %struct.pnp_port* %54, %struct.pnp_port** %8, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 128, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.pnp_port*, %struct.pnp_port** %8, align 8
  %64 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pnp_port*, %struct.pnp_port** %8, align 8
  %67 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pnp_port*, %struct.pnp_port** %8, align 8
  %70 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.pnp_port*, %struct.pnp_port** %8, align 8
  %73 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pnp_port*, %struct.pnp_port** %8, align 8
  %76 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %58, i32 %62, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %65, i64 %68, i64 %71, i64 %74, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  br label %311

83:                                               ; preds = %47
  %84 = load %struct.pnp_option*, %struct.pnp_option** %4, align 8
  %85 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store %struct.pnp_mem* %86, %struct.pnp_mem** %9, align 8
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 128, %92
  %94 = trunc i64 %93 to i32
  %95 = load %struct.pnp_mem*, %struct.pnp_mem** %9, align 8
  %96 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.pnp_mem*, %struct.pnp_mem** %9, align 8
  %99 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.pnp_mem*, %struct.pnp_mem** %9, align 8
  %102 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.pnp_mem*, %struct.pnp_mem** %9, align 8
  %105 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.pnp_mem*, %struct.pnp_mem** %9, align 8
  %108 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %90, i32 %94, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %97, i64 %100, i64 %103, i64 %106, i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %6, align 4
  br label %311

115:                                              ; preds = %47
  %116 = load %struct.pnp_option*, %struct.pnp_option** %4, align 8
  %117 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store %struct.pnp_irq* %118, %struct.pnp_irq** %10, align 8
  %119 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = sub i64 128, %124
  %126 = trunc i64 %125 to i32
  %127 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %122, i32 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %6, align 4
  %132 = load %struct.pnp_irq*, %struct.pnp_irq** %10, align 8
  %133 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PNP_IRQ_NR, align 4
  %137 = call i32 @bitmap_empty(i32 %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %115
  %140 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = sub i64 128, %145
  %147 = trunc i64 %146 to i32
  %148 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %143, i32 %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %6, align 4
  br label %186

153:                                              ; preds = %115
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %182, %153
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @PNP_IRQ_NR, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %154
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.pnp_irq*, %struct.pnp_irq** %10, align 8
  %161 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @test_bit(i32 %159, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %158
  %167 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = sub i64 128, %172
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %7, align 4
  %176 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %170, i32 %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %166, %158
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %154

185:                                              ; preds = %154
  br label %186

186:                                              ; preds = %185, %139
  %187 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = sub i64 128, %192
  %194 = trunc i64 %193 to i32
  %195 = load %struct.pnp_irq*, %struct.pnp_irq** %10, align 8
  %196 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %190, i32 %194, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %6, align 4
  %203 = load %struct.pnp_irq*, %struct.pnp_irq** %10, align 8
  %204 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @IORESOURCE_IRQ_OPTIONAL, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %186
  %210 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = sub i64 128, %215
  %217 = trunc i64 %216 to i32
  %218 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %213, i32 %217, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %218
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %6, align 4
  br label %223

223:                                              ; preds = %209, %186
  br label %311

224:                                              ; preds = %47
  %225 = load %struct.pnp_option*, %struct.pnp_option** %4, align 8
  %226 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  store %struct.pnp_dma* %227, %struct.pnp_dma** %11, align 8
  %228 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = sub i64 128, %233
  %235 = trunc i64 %234 to i32
  %236 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %231, i32 %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %236
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %6, align 4
  %241 = load %struct.pnp_dma*, %struct.pnp_dma** %11, align 8
  %242 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %259, label %245

245:                                              ; preds = %224
  %246 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = sub i64 128, %251
  %253 = trunc i64 %252 to i32
  %254 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %249, i32 %253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %256, %254
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %6, align 4
  br label %291

259:                                              ; preds = %224
  store i32 0, i32* %7, align 4
  br label %260

260:                                              ; preds = %287, %259
  %261 = load i32, i32* %7, align 4
  %262 = icmp slt i32 %261, 8
  br i1 %262, label %263, label %290

263:                                              ; preds = %260
  %264 = load %struct.pnp_dma*, %struct.pnp_dma** %11, align 8
  %265 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %7, align 4
  %268 = shl i32 1, %267
  %269 = and i32 %266, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %286

271:                                              ; preds = %263
  %272 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = sub i64 128, %277
  %279 = trunc i64 %278 to i32
  %280 = load i32, i32* %7, align 4
  %281 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %275, i32 %279, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = add nsw i64 %283, %281
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %271, %263
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %7, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %7, align 4
  br label %260

290:                                              ; preds = %260
  br label %291

291:                                              ; preds = %290, %245
  %292 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = sub i64 128, %297
  %299 = trunc i64 %298 to i32
  %300 = load %struct.pnp_dma*, %struct.pnp_dma** %11, align 8
  %301 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.pnp_dma*, %struct.pnp_dma** %11, align 8
  %304 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %295, i32 %299, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %302, i32 %305)
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %308, %306
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %6, align 4
  br label %311

311:                                              ; preds = %47, %291, %223, %83, %51
  %312 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %313 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %312, i32 0, i32 0
  %314 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %315 = call i32 @pnp_dbg(i32* %313, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %314)
  ret void
}

declare dso_local i64 @pnp_option_is_dependent(%struct.pnp_option*) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @pnp_option_set(%struct.pnp_option*) #1

declare dso_local i32 @pnp_option_priority_name(%struct.pnp_option*) #1

declare dso_local i32 @bitmap_empty(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
