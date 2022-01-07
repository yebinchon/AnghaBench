; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_ctlr_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_get_ctlr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32, %struct.myrs_cmdblk }
%struct.TYPE_12__ = type { i16, i16, i16, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.myrs_cmdblk = type { i8, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %union.myrs_sgl, i32, i64, %struct.TYPE_7__, i32, i32 }
%union.myrs_sgl = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MYRS_STATUS_FAILED = common dso_local global i8 0, align 1
@MYRS_DCMD_TAG = common dso_local global i32 0, align 4
@MYRS_CMD_OP_IOCTL = common dso_local global i32 0, align 4
@MYRS_IOCTL_GET_CTLR_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Sending GetControllerInfo\0A\00", align 1
@MYRS_STATUS_SUCCESS = common dso_local global i8 0, align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Logical drive count changes (%d/%d/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.myrs_hba*)* @myrs_get_ctlr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myrs_get_ctlr_info(%struct.myrs_hba* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.myrs_hba*, align 8
  %4 = alloca %struct.myrs_cmdblk*, align 8
  %5 = alloca %union.myrs_cmd_mbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.myrs_sgl*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.myrs_hba* %0, %struct.myrs_hba** %3, align 8
  %12 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %13 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %12, i32 0, i32 5
  store %struct.myrs_cmdblk* %13, %struct.myrs_cmdblk** %4, align 8
  %14 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %4, align 8
  %15 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %14, i32 0, i32 1
  store %union.myrs_cmd_mbox* %15, %union.myrs_cmd_mbox** %5, align 8
  %16 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %17 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 8
  store i16 %20, i16* %9, align 2
  %21 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %22 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i16, i16* %24, align 2
  store i16 %25, i16* %10, align 2
  %26 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %27 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i16, i16* %29, align 4
  store i16 %30, i16* %11, align 2
  %31 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %32 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %31, i32 0, i32 3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %36 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @dma_map_single(i32* %34, %struct.TYPE_12__* %37, i32 4, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %41 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %40, i32 0, i32 3
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @dma_mapping_error(i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i8, i8* @MYRS_STATUS_FAILED, align 1
  store i8 %48, i8* %2, align 1
  br label %219

49:                                               ; preds = %1
  %50 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %51 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %50, i32 0, i32 4
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %4, align 8
  %54 = call i32 @myrs_reset_cmd(%struct.myrs_cmdblk* %53)
  %55 = load i32, i32* @MYRS_DCMD_TAG, align 4
  %56 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %5, align 8
  %57 = bitcast %union.myrs_cmd_mbox* %56 to %struct.TYPE_9__*
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 6
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @MYRS_CMD_OP_IOCTL, align 4
  %60 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %5, align 8
  %61 = bitcast %union.myrs_cmd_mbox* %60 to %struct.TYPE_9__*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 8
  %63 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %5, align 8
  %64 = bitcast %union.myrs_cmd_mbox* %63 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %5, align 8
  %68 = bitcast %union.myrs_cmd_mbox* %67 to %struct.TYPE_9__*
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %5, align 8
  %72 = bitcast %union.myrs_cmd_mbox* %71 to %struct.TYPE_9__*
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 4, i32* %73, align 8
  %74 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %5, align 8
  %75 = bitcast %union.myrs_cmd_mbox* %74 to %struct.TYPE_9__*
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @MYRS_IOCTL_GET_CTLR_INFO, align 4
  %78 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %5, align 8
  %79 = bitcast %union.myrs_cmd_mbox* %78 to %struct.TYPE_9__*
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %5, align 8
  %82 = bitcast %union.myrs_cmd_mbox* %81 to %struct.TYPE_9__*
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store %union.myrs_sgl* %83, %union.myrs_sgl** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %union.myrs_sgl*, %union.myrs_sgl** %7, align 8
  %86 = bitcast %union.myrs_sgl* %85 to %struct.TYPE_8__**
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 4
  %90 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %5, align 8
  %91 = bitcast %union.myrs_cmd_mbox* %90 to %struct.TYPE_9__*
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %union.myrs_sgl*, %union.myrs_sgl** %7, align 8
  %95 = bitcast %union.myrs_sgl* %94 to %struct.TYPE_8__**
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 4
  %99 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %100 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %99, i32 0, i32 2
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %105 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %4, align 8
  %106 = call i32 @myrs_exec_cmd(%struct.myrs_hba* %104, %struct.myrs_cmdblk* %105)
  %107 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %4, align 8
  %108 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %107, i32 0, i32 0
  %109 = load i8, i8* %108, align 8
  store i8 %109, i8* %8, align 1
  %110 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %111 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %110, i32 0, i32 4
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %114 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %113, i32 0, i32 3
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %119 = call i32 @dma_unmap_single(i32* %116, i32 %117, i32 4, i32 %118)
  %120 = load i8, i8* %8, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %217

125:                                              ; preds = %49
  %126 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %127 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %126, i32 0, i32 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %132 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %131, i32 0, i32 1
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %130, %135
  %137 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %138 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %136, %141
  %143 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %144 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %142, %147
  %149 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %150 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %148, %153
  %155 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %156 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %155, i32 0, i32 1
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %154, %159
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %125
  %163 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %164 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  br label %165

165:                                              ; preds = %162, %125
  %166 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %167 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %166, i32 0, i32 1
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i16, i16* %169, align 8
  %171 = zext i16 %170 to i32
  %172 = load i16, i16* %9, align 2
  %173 = zext i16 %172 to i32
  %174 = icmp ne i32 %171, %173
  br i1 %174, label %195, label %175

175:                                              ; preds = %165
  %176 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %177 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %176, i32 0, i32 1
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = load i16, i16* %179, align 2
  %181 = zext i16 %180 to i32
  %182 = load i16, i16* %10, align 2
  %183 = zext i16 %182 to i32
  %184 = icmp ne i32 %181, %183
  br i1 %184, label %195, label %185

185:                                              ; preds = %175
  %186 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %187 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %186, i32 0, i32 1
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = load i16, i16* %189, align 4
  %191 = zext i16 %190 to i32
  %192 = load i16, i16* %11, align 2
  %193 = zext i16 %192 to i32
  %194 = icmp ne i32 %191, %193
  br i1 %194, label %195, label %216

195:                                              ; preds = %185, %175, %165
  %196 = load i32, i32* @KERN_INFO, align 4
  %197 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %198 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %197, i32 0, i32 2
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %201 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %200, i32 0, i32 1
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  %204 = load i16, i16* %203, align 2
  %205 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %206 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %205, i32 0, i32 1
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 2
  %209 = load i16, i16* %208, align 4
  %210 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %211 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %210, i32 0, i32 1
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i16, i16* %213, align 8
  %215 = call i32 @shost_printk(i32 %196, %struct.TYPE_11__* %199, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %204, i16 zeroext %209, i16 zeroext %214)
  br label %216

216:                                              ; preds = %195, %185
  br label %217

217:                                              ; preds = %216, %49
  %218 = load i8, i8* %8, align 1
  store i8 %218, i8* %2, align 1
  br label %219

219:                                              ; preds = %217, %47
  %220 = load i8, i8* %2, align 1
  ret i8 %220
}

declare dso_local i32 @dma_map_single(i32*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @myrs_reset_cmd(%struct.myrs_cmdblk*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @myrs_exec_cmd(%struct.myrs_hba*, %struct.myrs_cmdblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.TYPE_11__*, i8*, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
