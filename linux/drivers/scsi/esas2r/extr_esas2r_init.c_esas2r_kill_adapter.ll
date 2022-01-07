; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_kill_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_kill_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*, i32*, i64, i64, i32, %struct.workqueue_struct*, i32*, i32*, i64, i64, i32*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.workqueue_struct = type { i32 }

@esas2r_adapters = common dso_local global %struct.esas2r_adapter** null, align 8
@.str = private unnamed_addr constant [25 x i8] c"killing adapter %p [%d] \00", align 1
@esas2r_buffered_ioctl = common dso_local global i32* null, align 8
@esas2r_buffered_ioctl_pcid = common dso_local global %struct.TYPE_9__* null, align 8
@esas2r_buffered_ioctl_size = common dso_local global i64 0, align 8
@esas2r_buffered_ioctl_addr = common dso_local global i32 0, align 4
@VDA_MAX_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"uncached area freed\00", align 1
@ESAS2R_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"pci_disable_device() called.  msix_enabled: %d msi_enabled: %d irq: %d pin: %d\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"before pci_disable_device() enable_cnt: %d\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"after pci_disable_device() enable_cnt: %d\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"pci_set_drv_data(%p, NULL) called\00", align 1
@AF2_INIT_DONE = common dso_local global i32 0, align 4
@AF_DEGRADED_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"scsi_remove_host() called\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"scsi_host_put() called\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_kill_adapter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.workqueue_struct*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.esas2r_adapter**, %struct.esas2r_adapter*** @esas2r_adapters, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, i64 %8
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %9, align 8
  store %struct.esas2r_adapter* %10, %struct.esas2r_adapter** %3, align 8
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %12 = icmp ne %struct.esas2r_adapter* %11, null
  br i1 %12, label %13, label %238

13:                                               ; preds = %1
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 (i8*, ...) @esas2r_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.esas2r_adapter* %14, i32 %15)
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %18 = call i32 @esas2r_fw_event_off(%struct.esas2r_adapter* %17)
  %19 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %20 = call i32 @esas2r_adapter_power_down(%struct.esas2r_adapter* %19, i32 0)
  %21 = load i32*, i32** @esas2r_buffered_ioctl, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %13
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @esas2r_buffered_ioctl_pcid, align 8
  %28 = icmp eq %struct.TYPE_9__* %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %30, i32 0, i32 3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* @esas2r_buffered_ioctl_size, align 8
  %35 = load i32*, i32** @esas2r_buffered_ioctl, align 8
  %36 = load i32, i32* @esas2r_buffered_ioctl_addr, align 4
  %37 = call i32 @dma_free_coherent(i32* %33, i64 %34, i32* %35, i32 %36)
  store i32* null, i32** @esas2r_buffered_ioctl, align 8
  br label %38

38:                                               ; preds = %29, %23, %13
  %39 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %39, i32 0, i32 13
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %44, i32 0, i32 3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* @VDA_MAX_BUFFER_SIZE, align 8
  %49 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %49, i32 0, i32 13
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %52, i32 0, i32 14
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @dma_free_coherent(i32* %47, i64 %48, i32* %51, i32 %55)
  %57 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %57, i32 0, i32 13
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %43, %38
  %60 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %60, i32 0, i32 10
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %65, i32 0, i32 3
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %69, i32 0, i32 12
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %72, i32 0, i32 10
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %75, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @dma_free_coherent(i32* %68, i64 %71, i32* %74, i32 %78)
  %80 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %80, i32 0, i32 10
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %64, %59
  %83 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %83, i32 0, i32 9
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %87, i32 0, i32 9
  store i32* null, i32** %88, align 8
  %89 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %89, i32 0, i32 7
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %93, i32 0, i32 8
  %95 = load %struct.workqueue_struct*, %struct.workqueue_struct** %94, align 8
  store %struct.workqueue_struct* %95, %struct.workqueue_struct** %5, align 8
  %96 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %96, i32 0, i32 8
  store %struct.workqueue_struct* null, %struct.workqueue_struct** %97, align 8
  %98 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %98, i32 0, i32 7
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %103 = icmp ne %struct.workqueue_struct* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %82
  %105 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %106 = call i32 @destroy_workqueue(%struct.workqueue_struct* %105)
  br label %107

107:                                              ; preds = %104, %82
  %108 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %131

112:                                              ; preds = %107
  %113 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %113, i32 0, i32 3
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @dma_free_coherent(i32* %116, i64 %119, i32* %122, i32 %126)
  %128 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %128, i32 0, i32 4
  store i32* null, i32** %129, align 8
  %130 = call i32 (i8*, ...) @esas2r_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %112, %107
  %132 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %133 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %133, i32 0, i32 3
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %138 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %137, i32 0, i32 3
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %142, i32 0, i32 3
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %147, i32 0, i32 3
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %152, i32 0, i32 3
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %132, i32* %136, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %146, i32 %151, i32 %156)
  %158 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %159 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %160 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %159, i32 0, i32 3
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %164 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %163, i32 0, i32 3
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %158, i32* %162, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  %170 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %171 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %170, i32 0, i32 3
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = call i32 @pci_disable_device(%struct.TYPE_9__* %172)
  %174 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %175 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %176 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %175, i32 0, i32 3
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %180 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %179, i32 0, i32 3
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %174, i32* %178, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %187 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %188 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %187, i32 0, i32 3
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %192 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %191, i32 0, i32 3
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %186, i32* %190, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_9__* %193)
  %195 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %195, i32 0, i32 3
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = call i32 @pci_set_drvdata(%struct.TYPE_9__* %197, i32* null)
  %199 = load %struct.esas2r_adapter**, %struct.esas2r_adapter*** @esas2r_adapters, align 8
  %200 = load i32, i32* %2, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.esas2r_adapter*, %struct.esas2r_adapter** %199, i64 %201
  store %struct.esas2r_adapter* null, %struct.esas2r_adapter** %202, align 8
  %203 = load i32, i32* @AF2_INIT_DONE, align 4
  %204 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %205 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %204, i32 0, i32 2
  %206 = call i64 @test_bit(i32 %203, i32* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %237

208:                                              ; preds = %131
  %209 = load i32, i32* @AF2_INIT_DONE, align 4
  %210 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %211 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %210, i32 0, i32 2
  %212 = call i32 @clear_bit(i32 %209, i32* %211)
  %213 = load i32, i32* @AF_DEGRADED_MODE, align 4
  %214 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %215 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %214, i32 0, i32 1
  %216 = call i32 @set_bit(i32 %213, i32* %215)
  %217 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %218 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %219 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %218, i32 0, i32 0
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %217, i32* %221, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %223 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %224 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %223, i32 0, i32 0
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = call i32 @scsi_remove_host(%struct.TYPE_8__* %225)
  %227 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %228 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %229 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %228, i32 0, i32 0
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %227, i32* %231, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %233 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %234 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %233, i32 0, i32 0
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = call i32 @scsi_host_put(%struct.TYPE_8__* %235)
  br label %237

237:                                              ; preds = %208, %131
  br label %238

238:                                              ; preds = %237, %1
  ret void
}

declare dso_local i32 @esas2r_debug(i8*, ...) #1

declare dso_local i32 @esas2r_fw_event_off(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_adapter_power_down(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

declare dso_local i32 @esas2r_log_dev(i32, i32*, i8*, ...) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @scsi_remove_host(%struct.TYPE_8__*) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
