; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_internal_abort_task_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_internal_abort_task_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.TYPE_2__*, %struct.hisi_sas_cmd_hdr**, %struct.hisi_sas_slot*, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_sas_dq*)* }
%struct.hisi_sas_cmd_hdr = type { i32 }
%struct.hisi_sas_slot = type { i32, i32, i32, i32, i32, %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_port*, %struct.sas_task*, i32, i32, i32 }
%struct.hisi_sas_port = type { i32 }
%struct.device = type { i32 }
%struct.sas_task = type { i32, i32, %struct.hisi_sas_slot*, %struct.domain_device* }
%struct.domain_device = type { %struct.asd_sas_port*, %struct.hisi_sas_device* }
%struct.asd_sas_port = type { i32 }
%struct.hisi_sas_device = type { i32, i32, i32 }
%struct.hisi_sas_dq = type { i32, i32, i32, i32 }

@HISI_SAS_REJECT_CMD_BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HISI_SAS_QUEUE_SLOTS = common dso_local global i32 0, align 4
@HISI_SAS_COMMAND_TABLE_SZ = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"internal abort task prep: failed[%d]!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, i32, %struct.sas_task*, i32, i32, %struct.hisi_sas_dq*)* @hisi_sas_internal_abort_task_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_internal_abort_task_exec(%struct.hisi_hba* %0, i32 %1, %struct.sas_task* %2, i32 %3, i32 %4, %struct.hisi_sas_dq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hisi_hba*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sas_task*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hisi_sas_dq*, align 8
  %14 = alloca %struct.domain_device*, align 8
  %15 = alloca %struct.hisi_sas_device*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.hisi_sas_port*, align 8
  %18 = alloca %struct.hisi_sas_slot*, align 8
  %19 = alloca %struct.asd_sas_port*, align 8
  %20 = alloca %struct.hisi_sas_cmd_hdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.sas_task* %2, %struct.sas_task** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.hisi_sas_dq* %5, %struct.hisi_sas_dq** %13, align 8
  %28 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  %29 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %28, i32 0, i32 3
  %30 = load %struct.domain_device*, %struct.domain_device** %29, align 8
  store %struct.domain_device* %30, %struct.domain_device** %14, align 8
  %31 = load %struct.domain_device*, %struct.domain_device** %14, align 8
  %32 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %31, i32 0, i32 1
  %33 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %32, align 8
  store %struct.hisi_sas_device* %33, %struct.hisi_sas_device** %15, align 8
  %34 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %35 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %34, i32 0, i32 4
  %36 = load %struct.device*, %struct.device** %35, align 8
  store %struct.device* %36, %struct.device** %16, align 8
  %37 = load %struct.domain_device*, %struct.domain_device** %14, align 8
  %38 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %37, i32 0, i32 0
  %39 = load %struct.asd_sas_port*, %struct.asd_sas_port** %38, align 8
  store %struct.asd_sas_port* %39, %struct.asd_sas_port** %19, align 8
  store i32 0, i32* %23, align 4
  %40 = load i32, i32* @HISI_SAS_REJECT_CMD_BIT, align 4
  %41 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %42 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %41, i32 0, i32 3
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %6
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %204

49:                                               ; preds = %6
  %50 = load %struct.domain_device*, %struct.domain_device** %14, align 8
  %51 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %50, i32 0, i32 0
  %52 = load %struct.asd_sas_port*, %struct.asd_sas_port** %51, align 8
  %53 = icmp ne %struct.asd_sas_port* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 -1, i32* %7, align 4
  br label %204

55:                                               ; preds = %49
  %56 = load %struct.asd_sas_port*, %struct.asd_sas_port** %19, align 8
  %57 = call %struct.hisi_sas_port* @to_hisi_sas_port(%struct.asd_sas_port* %56)
  store %struct.hisi_sas_port* %57, %struct.hisi_sas_port** %17, align 8
  %58 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %59 = call i32 @hisi_sas_slot_index_alloc(%struct.hisi_hba* %58, i32* null)
  store i32 %59, i32* %24, align 4
  %60 = load i32, i32* %24, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %199

63:                                               ; preds = %55
  %64 = load i32, i32* %24, align 4
  store i32 %64, i32* %25, align 4
  %65 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %66 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %65, i32 0, i32 2
  %67 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %66, align 8
  %68 = load i32, i32* %25, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %67, i64 %69
  store %struct.hisi_sas_slot* %70, %struct.hisi_sas_slot** %18, align 8
  %71 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %13, align 8
  %72 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %71, i32 0, i32 2
  %73 = load i64, i64* %26, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %13, align 8
  %76 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %27, align 4
  %78 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %13, align 8
  %79 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* @HISI_SAS_QUEUE_SLOTS, align 4
  %83 = srem i32 %81, %82
  %84 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %13, align 8
  %85 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %87 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %86, i32 0, i32 10
  %88 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %13, align 8
  %89 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %88, i32 0, i32 3
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  %91 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %13, align 8
  %92 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %91, i32 0, i32 2
  %93 = load i64, i64* %26, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %15, align 8
  %96 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %95, i32 0, i32 1
  %97 = load i64, i64* %26, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %100 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %99, i32 0, i32 9
  %101 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %15, align 8
  %102 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %101, i32 0, i32 2
  %103 = call i32 @list_add_tail(i32* %100, i32* %102)
  %104 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %15, align 8
  %105 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %104, i32 0, i32 1
  %106 = load i64, i64* %26, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %13, align 8
  %109 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %22, align 4
  %111 = load i32, i32* %27, align 4
  store i32 %111, i32* %21, align 4
  %112 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %15, align 8
  %113 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %116 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %23, align 4
  %118 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %119 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %22, align 4
  %121 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %122 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %21, align 4
  %124 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %125 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %127 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %126, i32 0, i32 1
  %128 = load %struct.hisi_sas_cmd_hdr**, %struct.hisi_sas_cmd_hdr*** %127, align 8
  %129 = load i32, i32* %22, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %128, i64 %130
  %132 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %131, align 8
  store %struct.hisi_sas_cmd_hdr* %132, %struct.hisi_sas_cmd_hdr** %20, align 8
  %133 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %20, align 8
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.hisi_sas_cmd_hdr, %struct.hisi_sas_cmd_hdr* %133, i64 %135
  %137 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %138 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %137, i32 0, i32 5
  store %struct.hisi_sas_cmd_hdr* %136, %struct.hisi_sas_cmd_hdr** %138, align 8
  %139 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  %140 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %141 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %140, i32 0, i32 7
  store %struct.sas_task* %139, %struct.sas_task** %141, align 8
  %142 = load %struct.hisi_sas_port*, %struct.hisi_sas_port** %17, align 8
  %143 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %144 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %143, i32 0, i32 6
  store %struct.hisi_sas_port* %142, %struct.hisi_sas_port** %144, align 8
  %145 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %146 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %145, i32 0, i32 3
  store i32 1, i32* %146, align 4
  %147 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %148 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  %149 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %148, i32 0, i32 2
  store %struct.hisi_sas_slot* %147, %struct.hisi_sas_slot** %149, align 8
  %150 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %151 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %150, i32 0, i32 5
  %152 = load %struct.hisi_sas_cmd_hdr*, %struct.hisi_sas_cmd_hdr** %151, align 8
  %153 = call i32 @memset(%struct.hisi_sas_cmd_hdr* %152, i32 0, i32 4)
  %154 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %155 = call %struct.hisi_sas_cmd_hdr* @hisi_sas_cmd_hdr_addr_mem(%struct.hisi_sas_slot* %154)
  %156 = load i32, i32* @HISI_SAS_COMMAND_TABLE_SZ, align 4
  %157 = call i32 @memset(%struct.hisi_sas_cmd_hdr* %155, i32 0, i32 %156)
  %158 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %159 = call %struct.hisi_sas_cmd_hdr* @hisi_sas_status_buf_addr_mem(%struct.hisi_sas_slot* %158)
  %160 = call i32 @memset(%struct.hisi_sas_cmd_hdr* %159, i32 0, i32 4)
  %161 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %162 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @hisi_sas_task_prep_abort(%struct.hisi_hba* %161, %struct.hisi_sas_slot* %162, i32 %163, i32 %164, i32 %165)
  %167 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  %168 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %167, i32 0, i32 0
  %169 = load i64, i64* %26, align 8
  %170 = call i32 @spin_lock_irqsave(i32* %168, i64 %169)
  %171 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %172 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  %173 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.sas_task*, %struct.sas_task** %10, align 8
  %177 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %176, i32 0, i32 0
  %178 = load i64, i64* %26, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  %180 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %181 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @WRITE_ONCE(i32 %182, i32 1)
  %184 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %13, align 8
  %185 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %184, i32 0, i32 2
  %186 = load i64, i64* %26, align 8
  %187 = call i32 @spin_lock_irqsave(i32* %185, i64 %186)
  %188 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %189 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32 (%struct.hisi_sas_dq*)*, i32 (%struct.hisi_sas_dq*)** %191, align 8
  %193 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %13, align 8
  %194 = call i32 %192(%struct.hisi_sas_dq* %193)
  %195 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %13, align 8
  %196 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %195, i32 0, i32 2
  %197 = load i64, i64* %26, align 8
  %198 = call i32 @spin_unlock_irqrestore(i32* %196, i64 %197)
  store i32 0, i32* %7, align 4
  br label %204

199:                                              ; preds = %62
  %200 = load %struct.device*, %struct.device** %16, align 8
  %201 = load i32, i32* %24, align 4
  %202 = call i32 @dev_err(%struct.device* %200, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* %24, align 4
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %199, %63, %54, %46
  %205 = load i32, i32* %7, align 4
  ret i32 %205
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.hisi_sas_port* @to_hisi_sas_port(%struct.asd_sas_port*) #1

declare dso_local i32 @hisi_sas_slot_index_alloc(%struct.hisi_hba*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.hisi_sas_cmd_hdr*, i32, i32) #1

declare dso_local %struct.hisi_sas_cmd_hdr* @hisi_sas_cmd_hdr_addr_mem(%struct.hisi_sas_slot*) #1

declare dso_local %struct.hisi_sas_cmd_hdr* @hisi_sas_status_buf_addr_mem(%struct.hisi_sas_slot*) #1

declare dso_local i32 @hisi_sas_task_prep_abort(%struct.hisi_hba*, %struct.hisi_sas_slot*, i32, i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
