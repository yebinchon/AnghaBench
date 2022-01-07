; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_open_inb_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_open_inb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i32, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32*, i32*, i32*, i64, i64, i64, i32, i32**, i64, i64, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@TSI721_IMSGD_MIN_RING_SIZE = common dso_local global i32 0, align 4
@TSI721_IMSGD_RING_SIZE = common dso_local global i32 0, align 4
@RIO_MAX_MBOX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mbox_sel = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TSI721_MSG_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate buffers for IB MBOX%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to allocate free queue for IB MBOX%d\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to allocate descriptor memory for IB MBOX%d\00", align 1
@TSI721_IMSGID_SET = common dso_local global i32 0, align 4
@TSI721_IB_DEVID = common dso_local global i64 0, align 8
@TSI721_IBDMAC_FQBL_MASK = common dso_local global i32 0, align 4
@TSI721_IBDMAC_DQBL_MASK = common dso_local global i64 0, align 8
@TSI721_IBDMAC_INT_ALL = common dso_local global i32 0, align 4
@TSI721_IBDMAC_CTL_INIT = common dso_local global i32 0, align 4
@IMSG = common dso_local global i32 0, align 4
@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@TSI721_VECT_IMB0_INT = common dso_local global i32 0, align 4
@TSI721_VECT_IMB0_RCV = common dso_local global i32 0, align 4
@tsi721_imsg_msix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i8*, i32, i32)* @tsi721_open_inb_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_open_inb_mbox(%struct.rio_mport* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tsi721_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %16 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %15, i32 0, i32 0
  %17 = load %struct.tsi721_device*, %struct.tsi721_device** %16, align 8
  store %struct.tsi721_device* %17, %struct.tsi721_device** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @TSI721_IMSGD_MIN_RING_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @TSI721_IMSGD_RING_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @is_power_of_2(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @RIO_MAX_MBOX, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27, %23, %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %14, align 4
  br label %518

38:                                               ; preds = %31
  %39 = load i32, i32* @mbox_sel, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %14, align 4
  br label %518

47:                                               ; preds = %38
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %50 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 12
  store i8* %48, i8** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %58 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 8
  %64 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %65 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 11
  store i64 0, i64* %70, align 8
  %71 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %72 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %71, i32 0, i32 2
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 10
  store i64 0, i64* %77, align 8
  %78 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %79 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %108, %47
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %88 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %86, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %85
  %97 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %98 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 9
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %85

111:                                              ; preds = %85
  %112 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %113 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %112, i32 0, i32 2
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 8
  %119 = call i32 @spin_lock_init(i32* %118)
  %120 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %121 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %120, i32 0, i32 3
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @TSI721_MSG_BUFFER_SIZE, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %128 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %127, i32 0, i32 2
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 5
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i8* @dma_alloc_coherent(i32* %123, i32 %126, i64* %133, i32 %134)
  %136 = bitcast i8* %135 to i32*
  %137 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %138 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %137, i32 0, i32 2
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  store i32* %136, i32** %143, align 8
  %144 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %145 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %144, i32 0, i32 2
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %111
  %154 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %155 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %154, i32 0, i32 3
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @tsi_err(i32* %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %14, align 4
  br label %518

162:                                              ; preds = %111
  %163 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %164 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %163, i32 0, i32 3
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %9, align 4
  %168 = mul nsw i32 %167, 8
  %169 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %170 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %169, i32 0, i32 2
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 6
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call i8* @dma_alloc_coherent(i32* %166, i32 %168, i64* %175, i32 %176)
  %178 = bitcast i8* %177 to i32*
  %179 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %180 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %179, i32 0, i32 2
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 3
  store i32* %178, i32** %185, align 8
  %186 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %187 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %186, i32 0, i32 2
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = icmp eq i32* %193, null
  br i1 %194, label %195, label %204

195:                                              ; preds = %162
  %196 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %197 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %196, i32 0, i32 3
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @tsi_err(i32* %199, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %14, align 4
  br label %479

204:                                              ; preds = %162
  %205 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %206 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %205, i32 0, i32 3
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 4
  %212 = trunc i64 %211 to i32
  %213 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %214 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %213, i32 0, i32 2
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 7
  %220 = load i32, i32* @GFP_KERNEL, align 4
  %221 = call i8* @dma_alloc_coherent(i32* %208, i32 %212, i64* %219, i32 %220)
  %222 = bitcast i8* %221 to i32*
  %223 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %224 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %223, i32 0, i32 2
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 4
  store i32* %222, i32** %229, align 8
  %230 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %231 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %230, i32 0, i32 2
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 4
  %237 = load i32*, i32** %236, align 8
  %238 = icmp eq i32* %237, null
  br i1 %238, label %239, label %248

239:                                              ; preds = %204
  %240 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %241 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %240, i32 0, i32 3
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @tsi_err(i32* %243, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* @ENOMEM, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %14, align 4
  br label %441

248:                                              ; preds = %204
  %249 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %250 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %249, i32 0, i32 2
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  store i32* %256, i32** %13, align 8
  store i32 0, i32* %12, align 4
  br label %257

257:                                              ; preds = %279, %248
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %282

261:                                              ; preds = %257
  %262 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %263 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %262, i32 0, i32 2
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = trunc i64 %269 to i32
  %271 = load i32, i32* %12, align 4
  %272 = mul nsw i32 %271, 4096
  %273 = add nsw i32 %270, %272
  %274 = call i32 @cpu_to_le64(i32 %273)
  %275 = load i32*, i32** %13, align 8
  %276 = load i32, i32* %12, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %274, i32* %278, align 4
  br label %279

279:                                              ; preds = %261
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %12, align 4
  br label %257

282:                                              ; preds = %257
  %283 = call i32 (...) @mb()
  %284 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %285 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @TSI721_IMSGID_SET, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %307, label %290

290:                                              ; preds = %282
  %291 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %292 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %291, i32 0, i32 6
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %297 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @TSI721_IB_DEVID, align 8
  %300 = add nsw i64 %298, %299
  %301 = call i32 @iowrite32(i32 %295, i64 %300)
  %302 = load i32, i32* @TSI721_IMSGID_SET, align 4
  %303 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %304 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %290, %282
  %308 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %309 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %308, i32 0, i32 2
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %309, align 8
  %311 = load i32, i32* %8, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 6
  %315 = load i64, i64* %314, align 8
  %316 = trunc i64 %315 to i32
  %317 = ashr i32 %316, 32
  %318 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %319 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = load i32, i32* %11, align 4
  %322 = call i64 @TSI721_IBDMAC_FQBH(i32 %321)
  %323 = add nsw i64 %320, %322
  %324 = call i32 @iowrite32(i32 %317, i64 %323)
  %325 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %326 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %325, i32 0, i32 2
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 6
  %332 = load i64, i64* %331, align 8
  %333 = trunc i64 %332 to i32
  %334 = load i32, i32* @TSI721_IBDMAC_FQBL_MASK, align 4
  %335 = and i32 %333, %334
  %336 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %337 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %336, i32 0, i32 4
  %338 = load i64, i64* %337, align 8
  %339 = load i32, i32* %11, align 4
  %340 = call i64 @TSI721_IBDMAC_FQBL(i32 %339)
  %341 = add nsw i64 %338, %340
  %342 = call i32 @iowrite32(i32 %335, i64 %341)
  %343 = load i32, i32* %9, align 4
  %344 = call i32 @TSI721_DMAC_DSSZ_SIZE(i32 %343)
  %345 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %346 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %345, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = load i32, i32* %11, align 4
  %349 = call i64 @TSI721_IBDMAC_FQSZ(i32 %348)
  %350 = add nsw i64 %347, %349
  %351 = call i32 @iowrite32(i32 %344, i64 %350)
  %352 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %353 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %352, i32 0, i32 2
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 7
  %359 = load i64, i64* %358, align 8
  %360 = trunc i64 %359 to i32
  %361 = ashr i32 %360, 32
  %362 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %363 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %362, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = load i32, i32* %11, align 4
  %366 = call i64 @TSI721_IBDMAC_DQBH(i32 %365)
  %367 = add nsw i64 %364, %366
  %368 = call i32 @iowrite32(i32 %361, i64 %367)
  %369 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %370 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %369, i32 0, i32 2
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %370, align 8
  %372 = load i32, i32* %8, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 7
  %376 = load i64, i64* %375, align 8
  %377 = trunc i64 %376 to i32
  %378 = load i64, i64* @TSI721_IBDMAC_DQBL_MASK, align 8
  %379 = trunc i64 %378 to i32
  %380 = and i32 %377, %379
  %381 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %382 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %381, i32 0, i32 4
  %383 = load i64, i64* %382, align 8
  %384 = load i32, i32* %11, align 4
  %385 = call i64 @TSI721_IBDMAC_DQBL(i32 %384)
  %386 = add nsw i64 %383, %385
  %387 = call i32 @iowrite32(i32 %380, i64 %386)
  %388 = load i32, i32* %9, align 4
  %389 = call i32 @TSI721_DMAC_DSSZ_SIZE(i32 %388)
  %390 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %391 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %390, i32 0, i32 4
  %392 = load i64, i64* %391, align 8
  %393 = load i32, i32* %11, align 4
  %394 = call i64 @TSI721_IBDMAC_DQSZ(i32 %393)
  %395 = add nsw i64 %392, %394
  %396 = call i32 @iowrite32(i32 %389, i64 %395)
  %397 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %398 = load i32, i32* %11, align 4
  %399 = load i32, i32* @TSI721_IBDMAC_INT_ALL, align 4
  %400 = call i32 @tsi721_imsg_interrupt_enable(%struct.tsi721_device* %397, i32 %398, i32 %399)
  %401 = load i32, i32* @TSI721_IBDMAC_CTL_INIT, align 4
  %402 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %403 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %402, i32 0, i32 4
  %404 = load i64, i64* %403, align 8
  %405 = load i32, i32* %11, align 4
  %406 = call i64 @TSI721_IBDMAC_CTL(i32 %405)
  %407 = add nsw i64 %404, %406
  %408 = call i32 @iowrite32(i32 %401, i64 %407)
  %409 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %410 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = load i32, i32* %11, align 4
  %413 = call i64 @TSI721_IBDMAC_CTL(i32 %412)
  %414 = add nsw i64 %411, %413
  %415 = call i32 @ioread32(i64 %414)
  %416 = call i32 @udelay(i32 10)
  %417 = load i32, i32* %9, align 4
  %418 = sub nsw i32 %417, 1
  %419 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %420 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %419, i32 0, i32 2
  %421 = load %struct.TYPE_7__*, %struct.TYPE_7__** %420, align 8
  %422 = load i32, i32* %8, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i32 0, i32 1
  store i32 %418, i32* %425, align 4
  %426 = load i32, i32* %9, align 4
  %427 = sub nsw i32 %426, 1
  %428 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %429 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %428, i32 0, i32 4
  %430 = load i64, i64* %429, align 8
  %431 = load i32, i32* %11, align 4
  %432 = call i64 @TSI721_IBDMAC_FQWP(i32 %431)
  %433 = add nsw i64 %430, %432
  %434 = call i32 @iowrite32(i32 %427, i64 %433)
  %435 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %436 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %8, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  store i32 1, i32* %440, align 4
  store i32 0, i32* %5, align 4
  br label %520

441:                                              ; preds = %239
  %442 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %443 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %442, i32 0, i32 3
  %444 = load %struct.TYPE_8__*, %struct.TYPE_8__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 0
  %446 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %447 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %446, i32 0, i32 2
  %448 = load %struct.TYPE_7__*, %struct.TYPE_7__** %447, align 8
  %449 = load i32, i32* %8, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = mul nsw i32 %453, 8
  %455 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %456 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %455, i32 0, i32 2
  %457 = load %struct.TYPE_7__*, %struct.TYPE_7__** %456, align 8
  %458 = load i32, i32* %8, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i32 0, i32 3
  %462 = load i32*, i32** %461, align 8
  %463 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %464 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %463, i32 0, i32 2
  %465 = load %struct.TYPE_7__*, %struct.TYPE_7__** %464, align 8
  %466 = load i32, i32* %8, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 6
  %470 = load i64, i64* %469, align 8
  %471 = call i32 @dma_free_coherent(i32* %445, i32 %454, i32* %462, i64 %470)
  %472 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %473 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %472, i32 0, i32 2
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %473, align 8
  %475 = load i32, i32* %8, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %477, i32 0, i32 3
  store i32* null, i32** %478, align 8
  br label %479

479:                                              ; preds = %441, %195
  %480 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %481 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %480, i32 0, i32 3
  %482 = load %struct.TYPE_8__*, %struct.TYPE_8__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 0
  %484 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %485 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %484, i32 0, i32 2
  %486 = load %struct.TYPE_7__*, %struct.TYPE_7__** %485, align 8
  %487 = load i32, i32* %8, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @TSI721_MSG_BUFFER_SIZE, align 4
  %493 = mul nsw i32 %491, %492
  %494 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %495 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %494, i32 0, i32 2
  %496 = load %struct.TYPE_7__*, %struct.TYPE_7__** %495, align 8
  %497 = load i32, i32* %8, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %499, i32 0, i32 2
  %501 = load i32*, i32** %500, align 8
  %502 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %503 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %502, i32 0, i32 2
  %504 = load %struct.TYPE_7__*, %struct.TYPE_7__** %503, align 8
  %505 = load i32, i32* %8, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %504, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %507, i32 0, i32 5
  %509 = load i64, i64* %508, align 8
  %510 = call i32 @dma_free_coherent(i32* %483, i32 %493, i32* %501, i64 %509)
  %511 = load %struct.tsi721_device*, %struct.tsi721_device** %10, align 8
  %512 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %511, i32 0, i32 2
  %513 = load %struct.TYPE_7__*, %struct.TYPE_7__** %512, align 8
  %514 = load i32, i32* %8, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %516, i32 0, i32 2
  store i32* null, i32** %517, align 8
  br label %518

518:                                              ; preds = %479, %153, %44, %35
  %519 = load i32, i32* %14, align 4
  store i32 %519, i32* %5, align 4
  br label %520

520:                                              ; preds = %518, %307
  %521 = load i32, i32* %5, align 4
  ret i32 %521
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @tsi_err(i32*, i8*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TSI721_IBDMAC_FQBH(i32) #1

declare dso_local i64 @TSI721_IBDMAC_FQBL(i32) #1

declare dso_local i32 @TSI721_DMAC_DSSZ_SIZE(i32) #1

declare dso_local i64 @TSI721_IBDMAC_FQSZ(i32) #1

declare dso_local i64 @TSI721_IBDMAC_DQBH(i32) #1

declare dso_local i64 @TSI721_IBDMAC_DQBL(i32) #1

declare dso_local i64 @TSI721_IBDMAC_DQSZ(i32) #1

declare dso_local i32 @tsi721_imsg_interrupt_enable(%struct.tsi721_device*, i32, i32) #1

declare dso_local i64 @TSI721_IBDMAC_CTL(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @TSI721_IBDMAC_FQWP(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
