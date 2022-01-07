; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_mem_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxic.c_mxic_spi_mem_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.spi_mem_op = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mxic_spi = type { i64 }

@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@HC_CFG_TYPE_SPI_NOR = common dso_local global i32 0, align 4
@HC_CFG_MAN_CS_EN = common dso_local global i32 0, align 4
@HC_CFG = common dso_local global i64 0, align 8
@HC_EN_BIT = common dso_local global i32 0, align 4
@HC_EN = common dso_local global i64 0, align 8
@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@OP_READ = common dso_local global i32 0, align 4
@HC_CFG_MAN_CS_ASSERT = common dso_local global i32 0, align 4
@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @mxic_spi_mem_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxic_spi_mem_exec_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.mxic_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %12 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %13 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mxic_spi* @spi_master_get_devdata(i32 %16)
  store %struct.mxic_spi* %17, %struct.mxic_spi** %6, align 8
  store i32 1, i32* %7, align 4
  %18 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %19 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %20 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mxic_spi_set_freq(%struct.mxic_spi* %18, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %304

29:                                               ; preds = %2
  %30 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %31 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SPI_TX_QUAD, align 4
  %36 = load i32, i32* @SPI_RX_QUAD, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 4, i32* %7, align 4
  br label %54

41:                                               ; preds = %29
  %42 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %43 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SPI_TX_DUAL, align 4
  %48 = load i32, i32* @SPI_RX_DUAL, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 2, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @HC_CFG_NIO(i32 %55)
  %57 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %58 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HC_CFG_TYPE_SPI_NOR, align 4
  %63 = call i32 @HC_CFG_TYPE(i32 %61, i32 %62)
  %64 = or i32 %56, %63
  %65 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %66 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @HC_CFG_SLV_ACT(i32 %69)
  %71 = or i32 %64, %70
  %72 = call i32 @HC_CFG_IDLE_SIO_LVL(i32 1)
  %73 = or i32 %71, %72
  %74 = load i32, i32* @HC_CFG_MAN_CS_EN, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %77 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HC_CFG, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load i32, i32* @HC_EN_BIT, align 4
  %83 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %84 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @HC_EN, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = call i32 @OP_CMD_BYTES(i32 1)
  %90 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %91 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @fls(i32 %93)
  %95 = sub nsw i64 %94, 1
  %96 = call i32 @OP_CMD_BUSW(i64 %95)
  %97 = or i32 %89, %96
  store i32 %97, i32* %10, align 4
  %98 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %99 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %54
  %104 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %105 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @OP_ADDR_BYTES(i32 %107)
  %109 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %110 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @fls(i32 %112)
  %114 = sub nsw i64 %113, 1
  %115 = call i32 @OP_ADDR_BUSW(i64 %114)
  %116 = or i32 %108, %115
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %103, %54
  %120 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %121 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %127 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @OP_DUMMY_CYC(i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %125, %119
  %134 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %135 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %133
  %140 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %141 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @fls(i32 %143)
  %145 = sub nsw i64 %144, 1
  %146 = call i32 @OP_DATA_BUSW(i64 %145)
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %10, align 4
  %149 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %150 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %139
  %156 = load i32, i32* @OP_READ, align 4
  %157 = load i32, i32* %10, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %155, %139
  br label %160

160:                                              ; preds = %159, %133
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %163 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %166 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @SS_CTRL(i32 %169)
  %171 = add nsw i64 %164, %170
  %172 = call i32 @writel(i32 %161, i64 %171)
  %173 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %174 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @HC_CFG, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @readl(i64 %177)
  %179 = load i32, i32* @HC_CFG_MAN_CS_ASSERT, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %182 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @HC_CFG, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i32 %180, i64 %185)
  %187 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %188 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %189 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = call i32 @mxic_spi_data_xfer(%struct.mxic_spi* %187, i32* %190, i32* null, i32 1)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %160
  br label %281

195:                                              ; preds = %160
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %220, %195
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %199 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %197, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %196
  %204 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %205 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %209 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %8, align 4
  %213 = sub nsw i32 %211, %212
  %214 = sub nsw i32 %213, 1
  %215 = mul nsw i32 8, %214
  %216 = ashr i32 %207, %215
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %218
  store i32 %216, i32* %219, align 4
  br label %220

220:                                              ; preds = %203
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %196

223:                                              ; preds = %196
  %224 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %225 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %226 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %227 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @mxic_spi_data_xfer(%struct.mxic_spi* %224, i32* %225, i32* null, i32 %229)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %223
  br label %281

234:                                              ; preds = %223
  %235 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %236 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %237 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @mxic_spi_data_xfer(%struct.mxic_spi* %235, i32* null, i32* null, i32 %239)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %234
  br label %281

244:                                              ; preds = %234
  %245 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %246 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %247 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %244
  %253 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %254 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  br label %259

258:                                              ; preds = %244
  br label %259

259:                                              ; preds = %258, %252
  %260 = phi i32* [ %257, %252 ], [ null, %258 ]
  %261 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %262 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %259
  %268 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %269 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  br label %274

273:                                              ; preds = %259
  br label %274

274:                                              ; preds = %273, %267
  %275 = phi i32* [ %272, %267 ], [ null, %273 ]
  %276 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %277 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @mxic_spi_data_xfer(%struct.mxic_spi* %245, i32* %260, i32* %275, i32 %279)
  store i32 %280, i32* %9, align 4
  br label %281

281:                                              ; preds = %274, %243, %233, %194
  %282 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %283 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @HC_CFG, align 8
  %286 = add nsw i64 %284, %285
  %287 = call i32 @readl(i64 %286)
  %288 = load i32, i32* @HC_CFG_MAN_CS_ASSERT, align 4
  %289 = xor i32 %288, -1
  %290 = and i32 %287, %289
  %291 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %292 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @HC_CFG, align 8
  %295 = add nsw i64 %293, %294
  %296 = call i32 @writel(i32 %290, i64 %295)
  %297 = load %struct.mxic_spi*, %struct.mxic_spi** %6, align 8
  %298 = getelementptr inbounds %struct.mxic_spi, %struct.mxic_spi* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @HC_EN, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 @writel(i32 0, i64 %301)
  %303 = load i32, i32* %9, align 4
  store i32 %303, i32* %3, align 4
  br label %304

304:                                              ; preds = %281, %27
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local %struct.mxic_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @mxic_spi_set_freq(%struct.mxic_spi*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @HC_CFG_NIO(i32) #1

declare dso_local i32 @HC_CFG_TYPE(i32, i32) #1

declare dso_local i32 @HC_CFG_SLV_ACT(i32) #1

declare dso_local i32 @HC_CFG_IDLE_SIO_LVL(i32) #1

declare dso_local i32 @OP_CMD_BYTES(i32) #1

declare dso_local i32 @OP_CMD_BUSW(i64) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @OP_ADDR_BYTES(i32) #1

declare dso_local i32 @OP_ADDR_BUSW(i64) #1

declare dso_local i32 @OP_DUMMY_CYC(i32) #1

declare dso_local i32 @OP_DATA_BUSW(i64) #1

declare dso_local i64 @SS_CTRL(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mxic_spi_data_xfer(%struct.mxic_spi*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
