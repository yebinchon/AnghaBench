; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_exec_mem_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_exec_mem_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.zynq_qspi = type { i32*, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"cmd:%#x mode:%d.%d.%d.%d\0A\00", align 1
@ZYNQ_QSPI_FIFO_DEPTH = common dso_local global i32 0, align 4
@ZYNQ_QSPI_IEN_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_IXR_RXTX_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @zynq_qspi_exec_mem_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_qspi_exec_mem_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca %struct.spi_mem*, align 8
  %4 = alloca %struct.spi_mem_op*, align 8
  %5 = alloca %struct.zynq_qspi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.spi_mem* %0, %struct.spi_mem** %3, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %4, align 8
  %9 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %10 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.zynq_qspi* @spi_controller_get_devdata(i32 %13)
  store %struct.zynq_qspi* %14, %struct.zynq_qspi** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %16 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %23 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %27 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %31 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %35 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29, i32 %33, i32 %37)
  %39 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %40 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = call i32 @zynq_qspi_chipselect(%struct.TYPE_13__* %41, i32 1)
  %43 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %44 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %45 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = call i32 @zynq_qspi_config_op(%struct.zynq_qspi* %43, %struct.TYPE_13__* %46)
  %48 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %49 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %2
  %54 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %55 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %54, i32 0, i32 4
  %56 = call i32 @reinit_completion(i32* %55)
  %57 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %58 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %61 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %63 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %65 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %64, i32 0, i32 2
  store i32 4, i32* %65, align 8
  %66 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %67 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %66, i32 0, i32 3
  store i32 4, i32* %67, align 4
  %68 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %69 = load i32, i32* @ZYNQ_QSPI_FIFO_DEPTH, align 4
  %70 = call i32 @zynq_qspi_write_op(%struct.zynq_qspi* %68, i32 %69, i32 1)
  %71 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %72 = load i32, i32* @ZYNQ_QSPI_IEN_OFFSET, align 4
  %73 = load i32, i32* @ZYNQ_QSPI_IXR_RXTX_MASK, align 4
  %74 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %71, i32 %72, i32 %73)
  %75 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %76 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %75, i32 0, i32 4
  %77 = call i32 @msecs_to_jiffies(i32 1000)
  %78 = call i32 @wait_for_completion_interruptible_timeout(i32* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %53
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %53
  br label %84

84:                                               ; preds = %83, %2
  %85 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %86 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %155

90:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %118, %90
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %94 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %91
  %99 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %100 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %104 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  %110 = mul nsw i32 8, %109
  %111 = ashr i32 %102, %110
  %112 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %113 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  br label %118

118:                                              ; preds = %98
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %91

121:                                              ; preds = %91
  %122 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %123 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %122, i32 0, i32 4
  %124 = call i32 @reinit_completion(i32* %123)
  %125 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %126 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %125, i32 0, i32 1
  store i32* null, i32** %126, align 8
  %127 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %128 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %132 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %134 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %138 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %140 = load i32, i32* @ZYNQ_QSPI_FIFO_DEPTH, align 4
  %141 = call i32 @zynq_qspi_write_op(%struct.zynq_qspi* %139, i32 %140, i32 1)
  %142 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %143 = load i32, i32* @ZYNQ_QSPI_IEN_OFFSET, align 4
  %144 = load i32, i32* @ZYNQ_QSPI_IXR_RXTX_MASK, align 4
  %145 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %142, i32 %143, i32 %144)
  %146 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %147 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %146, i32 0, i32 4
  %148 = call i32 @msecs_to_jiffies(i32 1000)
  %149 = call i32 @wait_for_completion_interruptible_timeout(i32* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %121
  %152 = load i32, i32* @ETIMEDOUT, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %151, %121
  br label %155

155:                                              ; preds = %154, %84
  %156 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %157 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %212

161:                                              ; preds = %155
  %162 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %163 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call i32* @kzalloc(i32 %165, i32 %166)
  store i32* %167, i32** %8, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %170 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @memset(i32* %168, i32 255, i32 %172)
  %174 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %175 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %174, i32 0, i32 4
  %176 = call i32 @reinit_completion(i32* %175)
  %177 = load i32*, i32** %8, align 8
  %178 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %179 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %178, i32 0, i32 0
  store i32* %177, i32** %179, align 8
  %180 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %181 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %180, i32 0, i32 1
  store i32* null, i32** %181, align 8
  %182 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %183 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %187 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %189 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %193 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  %194 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %195 = load i32, i32* @ZYNQ_QSPI_FIFO_DEPTH, align 4
  %196 = call i32 @zynq_qspi_write_op(%struct.zynq_qspi* %194, i32 %195, i32 1)
  %197 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %198 = load i32, i32* @ZYNQ_QSPI_IEN_OFFSET, align 4
  %199 = load i32, i32* @ZYNQ_QSPI_IXR_RXTX_MASK, align 4
  %200 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %197, i32 %198, i32 %199)
  %201 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %202 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %201, i32 0, i32 4
  %203 = call i32 @msecs_to_jiffies(i32 1000)
  %204 = call i32 @wait_for_completion_interruptible_timeout(i32* %202, i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %161
  %207 = load i32, i32* @ETIMEDOUT, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %206, %161
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 @kfree(i32* %210)
  br label %212

212:                                              ; preds = %209, %155
  %213 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %214 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %291

218:                                              ; preds = %212
  %219 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %220 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %219, i32 0, i32 4
  %221 = call i32 @reinit_completion(i32* %220)
  %222 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %223 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %251

228:                                              ; preds = %218
  %229 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %230 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to i32*
  %235 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %236 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %235, i32 0, i32 0
  store i32* %234, i32** %236, align 8
  %237 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %238 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %242 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %244 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %243, i32 0, i32 1
  store i32* null, i32** %244, align 8
  %245 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %246 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %250 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 4
  br label %274

251:                                              ; preds = %218
  %252 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %253 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %252, i32 0, i32 0
  store i32* null, i32** %253, align 8
  %254 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %255 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = inttoptr i64 %258 to i32*
  %260 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %261 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %260, i32 0, i32 1
  store i32* %259, i32** %261, align 8
  %262 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %263 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %267 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 4
  %268 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %269 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %273 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 8
  br label %274

274:                                              ; preds = %251, %228
  %275 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %276 = load i32, i32* @ZYNQ_QSPI_FIFO_DEPTH, align 4
  %277 = call i32 @zynq_qspi_write_op(%struct.zynq_qspi* %275, i32 %276, i32 1)
  %278 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %279 = load i32, i32* @ZYNQ_QSPI_IEN_OFFSET, align 4
  %280 = load i32, i32* @ZYNQ_QSPI_IXR_RXTX_MASK, align 4
  %281 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %278, i32 %279, i32 %280)
  %282 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %283 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %282, i32 0, i32 4
  %284 = call i32 @msecs_to_jiffies(i32 1000)
  %285 = call i32 @wait_for_completion_interruptible_timeout(i32* %283, i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %274
  %288 = load i32, i32* @ETIMEDOUT, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %6, align 4
  br label %290

290:                                              ; preds = %287, %274
  br label %291

291:                                              ; preds = %290, %212
  %292 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %293 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %292, i32 0, i32 0
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %293, align 8
  %295 = call i32 @zynq_qspi_chipselect(%struct.TYPE_13__* %294, i32 0)
  %296 = load i32, i32* %6, align 4
  ret i32 %296
}

declare dso_local %struct.zynq_qspi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zynq_qspi_chipselect(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @zynq_qspi_config_op(%struct.zynq_qspi*, %struct.TYPE_13__*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @zynq_qspi_write_op(%struct.zynq_qspi*, i32, i32) #1

declare dso_local i32 @zynq_qspi_write(%struct.zynq_qspi*, i32, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
