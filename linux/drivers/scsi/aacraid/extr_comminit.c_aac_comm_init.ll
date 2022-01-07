; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_comminit.c_aac_comm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_comminit.c_aac_comm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, %struct.aac_queue_block* }
%struct.aac_queue_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.aac_entry* }
%struct.aac_entry = type { i32 }

@NUMBER_OF_COMM_QUEUES = common dso_local global i32 0, align 4
@TOTAL_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@QUEUE_ALIGNMENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HostNormCmdQueue = common dso_local global i64 0, align 8
@HOST_NORM_CMD_ENTRIES = common dso_local global i32 0, align 4
@HostHighCmdQueue = common dso_local global i64 0, align 8
@HOST_HIGH_CMD_ENTRIES = common dso_local global i32 0, align 4
@AdapNormCmdQueue = common dso_local global i64 0, align 8
@ADAP_NORM_CMD_ENTRIES = common dso_local global i32 0, align 4
@AdapHighCmdQueue = common dso_local global i64 0, align 8
@ADAP_HIGH_CMD_ENTRIES = common dso_local global i32 0, align 4
@HostNormRespQueue = common dso_local global i64 0, align 8
@HOST_NORM_RESP_ENTRIES = common dso_local global i32 0, align 4
@HostHighRespQueue = common dso_local global i64 0, align 8
@HOST_HIGH_RESP_ENTRIES = common dso_local global i32 0, align 4
@AdapNormRespQueue = common dso_local global i64 0, align 8
@ADAP_NORM_RESP_ENTRIES = common dso_local global i32 0, align 4
@AdapHighRespQueue = common dso_local global i64 0, align 8
@ADAP_HIGH_RESP_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*)* @aac_comm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_comm_init(%struct.aac_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aac_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.aac_queue_block*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  %10 = load i32, i32* @NUMBER_OF_COMM_QUEUES, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = mul i64 %12, 2
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @TOTAL_QUEUE_ENTRIES, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  store i64 %16, i64* %5, align 8
  %17 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %18 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %17, i32 0, i32 1
  %19 = load %struct.aac_queue_block*, %struct.aac_queue_block** %18, align 8
  store %struct.aac_queue_block* %19, %struct.aac_queue_block** %9, align 8
  %20 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %21 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %8, align 8
  %26 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %27 = bitcast i32** %6 to i8**
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @QUEUE_ALIGNMENT, align 4
  %30 = call i32 @aac_alloc_comm(%struct.aac_dev* %26, i8** %27, i64 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %263

35:                                               ; preds = %1
  %36 = load i32*, i32** %6, align 8
  %37 = ptrtoint i32* %36 to i64
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %37, %38
  %40 = inttoptr i64 %39 to %struct.aac_entry*
  store %struct.aac_entry* %40, %struct.aac_entry** %7, align 8
  %41 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %42 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %43 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* @HostNormCmdQueue, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.aac_entry* %41, %struct.aac_entry** %47, align 8
  %48 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %49 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %50 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* @HostNormCmdQueue, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @HOST_NORM_CMD_ENTRIES, align 4
  %56 = call i32 @aac_queue_init(%struct.aac_dev* %48, %struct.TYPE_2__* %53, i32* %54, i32 %55)
  %57 = load i32, i32* @HOST_NORM_CMD_ENTRIES, align 4
  %58 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %58, i64 %59
  store %struct.aac_entry* %60, %struct.aac_entry** %7, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32* %62, i32** %6, align 8
  %63 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %64 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %65 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* @HostHighCmdQueue, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store %struct.aac_entry* %63, %struct.aac_entry** %69, align 8
  %70 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %71 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %72 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* @HostHighCmdQueue, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @HOST_HIGH_CMD_ENTRIES, align 4
  %78 = call i32 @aac_queue_init(%struct.aac_dev* %70, %struct.TYPE_2__* %75, i32* %76, i32 %77)
  %79 = load i32, i32* @HOST_HIGH_CMD_ENTRIES, align 4
  %80 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %80, i64 %81
  store %struct.aac_entry* %82, %struct.aac_entry** %7, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32* %84, i32** %6, align 8
  %85 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %86 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %87 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i64, i64* @AdapNormCmdQueue, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store %struct.aac_entry* %85, %struct.aac_entry** %91, align 8
  %92 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %93 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %94 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i64, i64* @AdapNormCmdQueue, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %96
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* @ADAP_NORM_CMD_ENTRIES, align 4
  %100 = call i32 @aac_queue_init(%struct.aac_dev* %92, %struct.TYPE_2__* %97, i32* %98, i32 %99)
  %101 = load i32, i32* @ADAP_NORM_CMD_ENTRIES, align 4
  %102 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %102, i64 %103
  store %struct.aac_entry* %104, %struct.aac_entry** %7, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32* %106, i32** %6, align 8
  %107 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %108 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %109 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* @AdapHighCmdQueue, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store %struct.aac_entry* %107, %struct.aac_entry** %113, align 8
  %114 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %115 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %116 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i64, i64* @AdapHighCmdQueue, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %118
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* @ADAP_HIGH_CMD_ENTRIES, align 4
  %122 = call i32 @aac_queue_init(%struct.aac_dev* %114, %struct.TYPE_2__* %119, i32* %120, i32 %121)
  %123 = load i32, i32* @ADAP_HIGH_CMD_ENTRIES, align 4
  %124 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %124, i64 %125
  store %struct.aac_entry* %126, %struct.aac_entry** %7, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32* %128, i32** %6, align 8
  %129 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %130 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %131 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i64, i64* @HostNormRespQueue, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  store %struct.aac_entry* %129, %struct.aac_entry** %135, align 8
  %136 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %137 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %138 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i64, i64* @HostNormRespQueue, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %140
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* @HOST_NORM_RESP_ENTRIES, align 4
  %144 = call i32 @aac_queue_init(%struct.aac_dev* %136, %struct.TYPE_2__* %141, i32* %142, i32 %143)
  %145 = load i32, i32* @HOST_NORM_RESP_ENTRIES, align 4
  %146 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %146, i64 %147
  store %struct.aac_entry* %148, %struct.aac_entry** %7, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32* %150, i32** %6, align 8
  %151 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %152 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %153 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i64, i64* @HostHighRespQueue, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  store %struct.aac_entry* %151, %struct.aac_entry** %157, align 8
  %158 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %159 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %160 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i64, i64* @HostHighRespQueue, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %162
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @HOST_HIGH_RESP_ENTRIES, align 4
  %166 = call i32 @aac_queue_init(%struct.aac_dev* %158, %struct.TYPE_2__* %163, i32* %164, i32 %165)
  %167 = load i32, i32* @HOST_HIGH_RESP_ENTRIES, align 4
  %168 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %168, i64 %169
  store %struct.aac_entry* %170, %struct.aac_entry** %7, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32* %172, i32** %6, align 8
  %173 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %174 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %175 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = load i64, i64* @AdapNormRespQueue, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  store %struct.aac_entry* %173, %struct.aac_entry** %179, align 8
  %180 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %181 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %182 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %181, i32 0, i32 0
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = load i64, i64* @AdapNormRespQueue, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %184
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* @ADAP_NORM_RESP_ENTRIES, align 4
  %188 = call i32 @aac_queue_init(%struct.aac_dev* %180, %struct.TYPE_2__* %185, i32* %186, i32 %187)
  %189 = load i32, i32* @ADAP_NORM_RESP_ENTRIES, align 4
  %190 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds %struct.aac_entry, %struct.aac_entry* %190, i64 %191
  store %struct.aac_entry* %192, %struct.aac_entry** %7, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  store i32* %194, i32** %6, align 8
  %195 = load %struct.aac_entry*, %struct.aac_entry** %7, align 8
  %196 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %197 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %196, i32 0, i32 0
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = load i64, i64* @AdapHighRespQueue, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  store %struct.aac_entry* %195, %struct.aac_entry** %201, align 8
  %202 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %203 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %204 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %203, i32 0, i32 0
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = load i64, i64* @AdapHighRespQueue, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %206
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* @ADAP_HIGH_RESP_ENTRIES, align 4
  %210 = call i32 @aac_queue_init(%struct.aac_dev* %202, %struct.TYPE_2__* %207, i32* %208, i32 %209)
  %211 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %212 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %211, i32 0, i32 0
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = load i64, i64* @HostNormRespQueue, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %219 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %218, i32 0, i32 0
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = load i64, i64* @AdapNormCmdQueue, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  store i32 %217, i32* %223, align 8
  %224 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %225 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %224, i32 0, i32 0
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = load i64, i64* @HostHighRespQueue, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %232 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %231, i32 0, i32 0
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = load i64, i64* @AdapHighCmdQueue, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  store i32 %230, i32* %236, align 8
  %237 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %238 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %237, i32 0, i32 0
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = load i64, i64* @HostNormCmdQueue, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %245 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %244, i32 0, i32 0
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = load i64, i64* @AdapNormRespQueue, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  store i32 %243, i32* %249, align 8
  %250 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %251 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %250, i32 0, i32 0
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = load i64, i64* @HostHighCmdQueue, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.aac_queue_block*, %struct.aac_queue_block** %9, align 8
  %258 = getelementptr inbounds %struct.aac_queue_block, %struct.aac_queue_block* %257, i32 0, i32 0
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = load i64, i64* @AdapHighRespQueue, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  store i32 %256, i32* %262, align 8
  store i32 0, i32* %2, align 4
  br label %263

263:                                              ; preds = %35, %32
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @aac_alloc_comm(%struct.aac_dev*, i8**, i64, i32) #1

declare dso_local i32 @aac_queue_init(%struct.aac_dev*, %struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
