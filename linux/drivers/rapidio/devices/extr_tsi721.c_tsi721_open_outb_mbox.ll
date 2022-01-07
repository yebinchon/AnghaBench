; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_open_outb_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_open_outb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i32, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, %struct.tsi721_omsg_desc**, i64*, %struct.tsi721_omsg_desc*, i64, %struct.tsi721_omsg_desc*, i64, i64, i64, i32, i64, i8* }
%struct.tsi721_omsg_desc = type { i8*, i8*, i64, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@TSI721_OMSGD_MIN_RING_SIZE = common dso_local global i32 0, align 4
@TSI721_OMSGD_RING_SIZE = common dso_local global i32 0, align 4
@RIO_MAX_MBOX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mbox_sel = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TSI721_MSG_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@OMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ENOMEM for OB_MSG_%d data buffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ENOMEM for OB_MSG_%d descriptor memory\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ENOMEM for OB_MSG_%d status FIFO\00", align 1
@TSI721_OBDMAC_DPTRL_MASK = common dso_local global i32 0, align 4
@TSI721_OBDMAC_DSBL_MASK = common dso_local global i32 0, align 4
@TSI721_OBDMAC_INT_ALL = common dso_local global i32 0, align 4
@DTYPE5 = common dso_local global i32 0, align 4
@TSI721_OBDMAC_CTL_RETRY_THR = common dso_local global i32 0, align 4
@TSI721_OBDMAC_CTL_INIT = common dso_local global i32 0, align 4
@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@TSI721_VECT_OMB0_DONE = common dso_local global i32 0, align 4
@TSI721_VECT_OMB0_INT = common dso_local global i32 0, align 4
@tsi721_omsg_msix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i8*, i32, i32)* @tsi721_open_outb_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_open_outb_mbox(%struct.rio_mport* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tsi721_device*, align 8
  %11 = alloca %struct.tsi721_omsg_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %15 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %14, i32 0, i32 0
  %16 = load %struct.tsi721_device*, %struct.tsi721_device** %15, align 8
  store %struct.tsi721_device* %16, %struct.tsi721_device** %10, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @TSI721_OMSGD_MIN_RING_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @TSI721_OMSGD_RING_SIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_power_of_2(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @RIO_MAX_MBOX, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24, %20, %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %537

35:                                               ; preds = %28
  %36 = load i32, i32* @mbox_sel, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %13, align 4
  br label %537

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %47 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 12
  store i8* %45, i8** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %55 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %53, i32* %60, align 8
  %61 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %62 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 11
  store i64 0, i64* %67, align 8
  %68 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %69 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 10
  %75 = call i32 @spin_lock_init(i32* %74)
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %135, %44
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %138

80:                                               ; preds = %76
  %81 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %82 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %81, i32 0, i32 3
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* @TSI721_MSG_BUFFER_SIZE, align 4
  %86 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %87 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i8* @dma_alloc_coherent(i32* %84, i32 %85, i64* %96, i32 %97)
  %99 = bitcast i8* %98 to %struct.tsi721_omsg_desc*
  %100 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %101 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load %struct.tsi721_omsg_desc**, %struct.tsi721_omsg_desc*** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %107, i64 %109
  store %struct.tsi721_omsg_desc* %99, %struct.tsi721_omsg_desc** %110, align 8
  %111 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %112 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load %struct.tsi721_omsg_desc**, %struct.tsi721_omsg_desc*** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %118, i64 %120
  %122 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %121, align 8
  %123 = icmp eq %struct.tsi721_omsg_desc* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %80
  %125 = load i32, i32* @OMSG, align 4
  %126 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %127 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %126, i32 0, i32 3
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @tsi_debug(i32 %125, i32* %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %13, align 4
  br label %464

134:                                              ; preds = %80
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %76

138:                                              ; preds = %76
  %139 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %140 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 32
  %147 = trunc i64 %146 to i32
  %148 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %149 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %148, i32 0, i32 2
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 5
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i8* @dma_alloc_coherent(i32* %142, i32 %147, i64* %154, i32 %155)
  %157 = bitcast i8* %156 to %struct.tsi721_omsg_desc*
  %158 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %159 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %158, i32 0, i32 2
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 4
  store %struct.tsi721_omsg_desc* %157, %struct.tsi721_omsg_desc** %164, align 8
  %165 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %166 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %165, i32 0, i32 2
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 4
  %172 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %171, align 8
  %173 = icmp eq %struct.tsi721_omsg_desc* %172, null
  br i1 %173, label %174, label %184

174:                                              ; preds = %138
  %175 = load i32, i32* @OMSG, align 4
  %176 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %177 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %176, i32 0, i32 3
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @tsi_debug(i32 %175, i32* %179, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %13, align 4
  br label %464

184:                                              ; preds = %138
  %185 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %186 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %185, i32 0, i32 2
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 9
  store i64 0, i64* %191, align 8
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  %194 = call i32 @roundup_pow_of_two(i32 %193)
  %195 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %196 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %195, i32 0, i32 2
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  store i32 %194, i32* %201, align 4
  %202 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %203 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %202, i32 0, i32 3
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %207 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %206, i32 0, i32 2
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 4
  %216 = trunc i64 %215 to i32
  %217 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %218 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %217, i32 0, i32 2
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 7
  %224 = load i32, i32* @GFP_KERNEL, align 4
  %225 = call i8* @dma_alloc_coherent(i32* %205, i32 %216, i64* %223, i32 %224)
  %226 = bitcast i8* %225 to %struct.tsi721_omsg_desc*
  %227 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %228 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %227, i32 0, i32 2
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 6
  store %struct.tsi721_omsg_desc* %226, %struct.tsi721_omsg_desc** %233, align 8
  %234 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %235 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %234, i32 0, i32 2
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 6
  %241 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %240, align 8
  %242 = icmp eq %struct.tsi721_omsg_desc* %241, null
  br i1 %242, label %243, label %253

243:                                              ; preds = %184
  %244 = load i32, i32* @OMSG, align 4
  %245 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %246 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %245, i32 0, i32 3
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @tsi_debug(i32 %244, i32* %248, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* @ENOMEM, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %13, align 4
  br label %430

253:                                              ; preds = %184
  %254 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %255 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %254, i32 0, i32 2
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 5
  %261 = load i64, i64* %260, align 8
  %262 = trunc i64 %261 to i32
  %263 = ashr i32 %262, 32
  %264 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %265 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = call i64 @TSI721_OBDMAC_DPTRH(i32 %267)
  %269 = add nsw i64 %266, %268
  %270 = call i32 @iowrite32(i32 %263, i64 %269)
  %271 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %272 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %271, i32 0, i32 2
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %272, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 5
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = load i32, i32* @TSI721_OBDMAC_DPTRL_MASK, align 4
  %281 = and i32 %279, %280
  %282 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %283 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* %8, align 4
  %286 = call i64 @TSI721_OBDMAC_DPTRL(i32 %285)
  %287 = add nsw i64 %284, %286
  %288 = call i32 @iowrite32(i32 %281, i64 %287)
  %289 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %290 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %289, i32 0, i32 2
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 7
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = ashr i32 %297, 32
  %299 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %300 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = load i32, i32* %8, align 4
  %303 = call i64 @TSI721_OBDMAC_DSBH(i32 %302)
  %304 = add nsw i64 %301, %303
  %305 = call i32 @iowrite32(i32 %298, i64 %304)
  %306 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %307 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %306, i32 0, i32 2
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %307, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 7
  %313 = load i64, i64* %312, align 8
  %314 = trunc i64 %313 to i32
  %315 = load i32, i32* @TSI721_OBDMAC_DSBL_MASK, align 4
  %316 = and i32 %314, %315
  %317 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %318 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %317, i32 0, i32 4
  %319 = load i64, i64* %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = call i64 @TSI721_OBDMAC_DSBL(i32 %320)
  %322 = add nsw i64 %319, %321
  %323 = call i32 @iowrite32(i32 %316, i64 %322)
  %324 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %325 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %324, i32 0, i32 2
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %325, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @TSI721_DMAC_DSSZ_SIZE(i32 %331)
  %333 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %334 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %333, i32 0, i32 4
  %335 = load i64, i64* %334, align 8
  %336 = load i32, i32* %8, align 4
  %337 = call i64 @TSI721_OBDMAC_DSSZ(i32 %336)
  %338 = add nsw i64 %335, %337
  %339 = call i32 @iowrite32(i32 %332, i64 %338)
  %340 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %341 = load i32, i32* %8, align 4
  %342 = load i32, i32* @TSI721_OBDMAC_INT_ALL, align 4
  %343 = call i32 @tsi721_omsg_interrupt_enable(%struct.tsi721_device* %340, i32 %341, i32 %342)
  %344 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %345 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %344, i32 0, i32 2
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %345, align 8
  %347 = load i32, i32* %8, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 4
  %351 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %350, align 8
  store %struct.tsi721_omsg_desc* %351, %struct.tsi721_omsg_desc** %11, align 8
  %352 = load i32, i32* @DTYPE5, align 4
  %353 = shl i32 %352, 29
  %354 = call i8* @cpu_to_le32(i32 %353)
  %355 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %11, align 8
  %356 = load i32, i32* %9, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %355, i64 %357
  %359 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %358, i32 0, i32 3
  store i8* %354, i8** %359, align 8
  %360 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %11, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %360, i64 %362
  %364 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %363, i32 0, i32 2
  store i64 0, i64* %364, align 8
  %365 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %366 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %365, i32 0, i32 2
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %366, align 8
  %368 = load i32, i32* %8, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 5
  %372 = load i64, i64* %371, align 8
  %373 = trunc i64 %372 to i32
  %374 = load i32, i32* @TSI721_OBDMAC_DPTRL_MASK, align 4
  %375 = and i32 %373, %374
  %376 = call i8* @cpu_to_le32(i32 %375)
  %377 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %11, align 8
  %378 = load i32, i32* %9, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %377, i64 %379
  %381 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %380, i32 0, i32 1
  store i8* %376, i8** %381, align 8
  %382 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %383 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %382, i32 0, i32 2
  %384 = load %struct.TYPE_5__*, %struct.TYPE_5__** %383, align 8
  %385 = load i32, i32* %8, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 5
  %389 = load i64, i64* %388, align 8
  %390 = trunc i64 %389 to i32
  %391 = ashr i32 %390, 32
  %392 = call i8* @cpu_to_le32(i32 %391)
  %393 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %11, align 8
  %394 = load i32, i32* %9, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %393, i64 %395
  %397 = getelementptr inbounds %struct.tsi721_omsg_desc, %struct.tsi721_omsg_desc* %396, i32 0, i32 0
  store i8* %392, i8** %397, align 8
  %398 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %399 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %398, i32 0, i32 2
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %399, align 8
  %401 = load i32, i32* %8, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 8
  store i64 0, i64* %404, align 8
  %405 = call i32 (...) @mb()
  %406 = load i32, i32* @TSI721_OBDMAC_CTL_RETRY_THR, align 4
  %407 = load i32, i32* @TSI721_OBDMAC_CTL_INIT, align 4
  %408 = or i32 %406, %407
  %409 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %410 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = load i32, i32* %8, align 4
  %413 = call i64 @TSI721_OBDMAC_CTL(i32 %412)
  %414 = add nsw i64 %411, %413
  %415 = call i32 @iowrite32(i32 %408, i64 %414)
  %416 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %417 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %416, i32 0, i32 4
  %418 = load i64, i64* %417, align 8
  %419 = load i32, i32* %8, align 4
  %420 = call i64 @TSI721_OBDMAC_DWRCNT(i32 %419)
  %421 = add nsw i64 %418, %420
  %422 = call i32 @ioread32(i64 %421)
  %423 = call i32 @udelay(i32 10)
  %424 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %425 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %424, i32 0, i32 1
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %8, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  store i32 1, i32* %429, align 4
  store i32 0, i32* %5, align 4
  br label %539

430:                                              ; preds = %243
  %431 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %432 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %431, i32 0, i32 3
  %433 = load %struct.TYPE_6__*, %struct.TYPE_6__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 0
  %435 = load i32, i32* %9, align 4
  %436 = add nsw i32 %435, 1
  %437 = sext i32 %436 to i64
  %438 = mul i64 %437, 32
  %439 = trunc i64 %438 to i32
  %440 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %441 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %440, i32 0, i32 2
  %442 = load %struct.TYPE_5__*, %struct.TYPE_5__** %441, align 8
  %443 = load i32, i32* %8, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 4
  %447 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %446, align 8
  %448 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %449 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %448, i32 0, i32 2
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %449, align 8
  %451 = load i32, i32* %8, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i32 0, i32 5
  %455 = load i64, i64* %454, align 8
  %456 = call i32 @dma_free_coherent(i32* %434, i32 %439, %struct.tsi721_omsg_desc* %447, i64 %455)
  %457 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %458 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %457, i32 0, i32 2
  %459 = load %struct.TYPE_5__*, %struct.TYPE_5__** %458, align 8
  %460 = load i32, i32* %8, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 4
  store %struct.tsi721_omsg_desc* null, %struct.tsi721_omsg_desc** %463, align 8
  br label %464

464:                                              ; preds = %430, %174, %124
  store i32 0, i32* %12, align 4
  br label %465

465:                                              ; preds = %533, %464
  %466 = load i32, i32* %12, align 4
  %467 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %468 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %467, i32 0, i32 2
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** %468, align 8
  %470 = load i32, i32* %8, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = icmp slt i32 %466, %474
  br i1 %475, label %476, label %536

476:                                              ; preds = %465
  %477 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %478 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %477, i32 0, i32 2
  %479 = load %struct.TYPE_5__*, %struct.TYPE_5__** %478, align 8
  %480 = load i32, i32* %8, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %479, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 2
  %484 = load %struct.tsi721_omsg_desc**, %struct.tsi721_omsg_desc*** %483, align 8
  %485 = load i32, i32* %12, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %484, i64 %486
  %488 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %487, align 8
  %489 = icmp ne %struct.tsi721_omsg_desc* %488, null
  br i1 %489, label %490, label %532

490:                                              ; preds = %476
  %491 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %492 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %491, i32 0, i32 3
  %493 = load %struct.TYPE_6__*, %struct.TYPE_6__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 0
  %495 = load i32, i32* @TSI721_MSG_BUFFER_SIZE, align 4
  %496 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %497 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %496, i32 0, i32 2
  %498 = load %struct.TYPE_5__*, %struct.TYPE_5__** %497, align 8
  %499 = load i32, i32* %8, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %498, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %501, i32 0, i32 2
  %503 = load %struct.tsi721_omsg_desc**, %struct.tsi721_omsg_desc*** %502, align 8
  %504 = load i32, i32* %12, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %503, i64 %505
  %507 = load %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %506, align 8
  %508 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %509 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %508, i32 0, i32 2
  %510 = load %struct.TYPE_5__*, %struct.TYPE_5__** %509, align 8
  %511 = load i32, i32* %8, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %510, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %513, i32 0, i32 3
  %515 = load i64*, i64** %514, align 8
  %516 = load i32, i32* %12, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i64, i64* %515, i64 %517
  %519 = load i64, i64* %518, align 8
  %520 = call i32 @dma_free_coherent(i32* %494, i32 %495, %struct.tsi721_omsg_desc* %507, i64 %519)
  %521 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %522 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %521, i32 0, i32 2
  %523 = load %struct.TYPE_5__*, %struct.TYPE_5__** %522, align 8
  %524 = load i32, i32* %8, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %526, i32 0, i32 2
  %528 = load %struct.tsi721_omsg_desc**, %struct.tsi721_omsg_desc*** %527, align 8
  %529 = load i32, i32* %12, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.tsi721_omsg_desc*, %struct.tsi721_omsg_desc** %528, i64 %530
  store %struct.tsi721_omsg_desc* null, %struct.tsi721_omsg_desc** %531, align 8
  br label %532

532:                                              ; preds = %490, %476
  br label %533

533:                                              ; preds = %532
  %534 = load i32, i32* %12, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %12, align 4
  br label %465

536:                                              ; preds = %465
  br label %537

537:                                              ; preds = %536, %41, %32
  %538 = load i32, i32* %13, align 4
  store i32 %538, i32* %5, align 4
  br label %539

539:                                              ; preds = %537, %253
  %540 = load i32, i32* %5, align 4
  ret i32 %540
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TSI721_OBDMAC_DPTRH(i32) #1

declare dso_local i64 @TSI721_OBDMAC_DPTRL(i32) #1

declare dso_local i64 @TSI721_OBDMAC_DSBH(i32) #1

declare dso_local i64 @TSI721_OBDMAC_DSBL(i32) #1

declare dso_local i32 @TSI721_DMAC_DSSZ_SIZE(i32) #1

declare dso_local i64 @TSI721_OBDMAC_DSSZ(i32) #1

declare dso_local i32 @tsi721_omsg_interrupt_enable(%struct.tsi721_device*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @TSI721_OBDMAC_CTL(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @TSI721_OBDMAC_DWRCNT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.tsi721_omsg_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
