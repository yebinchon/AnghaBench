; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.spi_mem_op = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32*, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.npcm_fiu_spi = type { i64, i32, i32, i64, %struct.npcm_fiu_chip* }
%struct.npcm_fiu_chip = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"cmd:%#x mode:%d.%d.%d.%d addr:%#llx len:%#x\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed setting %lu frequency, stay at %lu frequency\0A\00", align 1
@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @npcm_fiu_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_fiu_exec_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.npcm_fiu_spi*, align 8
  %7 = alloca %struct.npcm_fiu_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %13 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %14 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.npcm_fiu_spi* @spi_controller_get_devdata(i32 %17)
  store %struct.npcm_fiu_spi* %18, %struct.npcm_fiu_spi** %6, align 8
  %19 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %20 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %19, i32 0, i32 4
  %21 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %20, align 8
  %22 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %23 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %21, i64 %26
  store %struct.npcm_fiu_chip* %27, %struct.npcm_fiu_chip** %7, align 8
  store i32 0, i32* %8, align 4
  %28 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %29 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %32 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %40 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %44 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %48 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %52 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %56 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58)
  %60 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %61 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %2
  %65 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %66 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 4
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %2
  %71 = load i32, i32* @ENOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %263

73:                                               ; preds = %64
  %74 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %75 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %7, align 8
  %78 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %73
  %82 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %83 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %7, align 8
  %86 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @clk_set_rate(i32 %84, i64 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %81
  %92 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %93 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %7, align 8
  %96 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %99 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @dev_warn(i32 %94, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %97, i64 %100)
  br label %108

102:                                              ; preds = %81
  %103 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %7, align 8
  %104 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %107 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %91
  br label %109

109:                                              ; preds = %108, %73
  %110 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %111 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %145

116:                                              ; preds = %109
  %117 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %118 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %116
  %123 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %124 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %9, align 8
  %128 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %129 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %130 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %131 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %136 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @npcm_fiu_uma_read(%struct.spi_mem* %128, %struct.spi_mem_op* %129, i32 %133, i32 0, i32* %134, i32 %138)
  store i32 %139, i32* %8, align 4
  br label %144

140:                                              ; preds = %116
  %141 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %142 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %143 = call i32 @npcm_fiu_read(%struct.spi_mem* %141, %struct.spi_mem_op* %142)
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %140, %122
  br label %261

145:                                              ; preds = %109
  %146 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %147 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %165, label %151

151:                                              ; preds = %145
  %152 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %153 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %151
  %158 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %159 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %160 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %161 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @npcm_fiu_uma_write(%struct.spi_mem* %158, %struct.spi_mem_op* %159, i32 %163, i32 0, i32* null, i32 0)
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %157, %151, %145
  %166 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %167 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %214

171:                                              ; preds = %165
  %172 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %173 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %214, label %177

177:                                              ; preds = %171
  %178 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %179 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %12, align 4
  %182 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %183 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %198, %177
  %188 = load i32, i32* %10, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load i32, i32* %12, align 4
  %192 = and i32 %191, 255
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %194
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* %12, align 4
  %197 = ashr i32 %196, 8
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %10, align 4
  br label %187

201:                                              ; preds = %187
  %202 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %203 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %204 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %205 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %209 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %210 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @npcm_fiu_uma_write(%struct.spi_mem* %202, %struct.spi_mem_op* %203, i32 %207, i32 0, i32* %208, i32 %212)
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %201, %171, %165
  %215 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %216 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %244, label %220

220:                                              ; preds = %214
  %221 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %222 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %244

226:                                              ; preds = %220
  %227 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %228 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %229 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %230 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %234 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = inttoptr i64 %237 to i32*
  %239 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %240 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @npcm_fiu_uma_write(%struct.spi_mem* %227, %struct.spi_mem_op* %228, i32 %232, i32 0, i32* %238, i32 %242)
  store i32 %243, i32* %8, align 4
  br label %244

244:                                              ; preds = %226, %220, %214
  %245 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %246 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %244
  %251 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %252 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %258 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %259 = call i32 @npcm_fiu_manualwrite(%struct.spi_mem* %257, %struct.spi_mem_op* %258)
  store i32 %259, i32* %8, align 4
  br label %260

260:                                              ; preds = %256, %250, %244
  br label %261

261:                                              ; preds = %260, %144
  %262 = load i32, i32* %8, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %261, %70
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local %struct.npcm_fiu_spi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @npcm_fiu_uma_read(%struct.spi_mem*, %struct.spi_mem_op*, i32, i32, i32*, i32) #1

declare dso_local i32 @npcm_fiu_read(%struct.spi_mem*, %struct.spi_mem_op*) #1

declare dso_local i32 @npcm_fiu_uma_write(%struct.spi_mem*, %struct.spi_mem_op*, i32, i32, i32*, i32) #1

declare dso_local i32 @npcm_fiu_manualwrite(%struct.spi_mem*, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
