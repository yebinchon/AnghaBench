; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_send_passthru0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_iocb.c_qla4xxx_send_passthru0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, i32, %struct.ql4_task_data*, %struct.TYPE_8__* }
%struct.ql4_task_data = type { i32, i64, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.ddb_entry* }
%struct.ddb_entry = type { i32, %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32, i32, i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32 (%struct.scsi_qla_host*)* }
%struct.passthru0 = type { i8*, %struct.TYPE_13__, %struct.TYPE_11__, i8*, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@ET_PASSTHRU0 = common dso_local global i32 0, align 4
@SD_ISCSI_PDU = common dso_local global i32 0, align 4
@PT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@PT_FLAG_SEND_BUFFER = common dso_local global i32 0, align 4
@PT_FLAG_ISCSI_PDU = common dso_local global i32 0, align 4
@PT_FLAG_WAIT_4_RESPONSE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_send_passthru0(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.passthru0*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.ddb_entry*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca %struct.ql4_task_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %11, i32 0, i32 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %14, align 8
  store %struct.iscsi_session* %15, %struct.iscsi_session** %4, align 8
  %16 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %16, i32 0, i32 0
  %18 = load %struct.ddb_entry*, %struct.ddb_entry** %17, align 8
  store %struct.ddb_entry* %18, %struct.ddb_entry** %5, align 8
  %19 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %20 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %19, i32 0, i32 1
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %20, align 8
  store %struct.scsi_qla_host* %21, %struct.scsi_qla_host** %6, align 8
  %22 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %23 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %22, i32 0, i32 3
  %24 = load %struct.ql4_task_data*, %struct.ql4_task_data** %23, align 8
  store %struct.ql4_task_data* %24, %struct.ql4_task_data** %7, align 8
  store i32 0, i32* %8, align 4
  %25 = load i32, i32* @QLA_ERROR, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 2
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %31 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %33 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %34 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @qla4xxx_space_in_req_ring(%struct.scsi_qla_host* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  br label %188

39:                                               ; preds = %1
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.passthru0*
  store %struct.passthru0* %43, %struct.passthru0** %3, align 8
  %44 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %45 = call i32 @memset(%struct.passthru0* %44, i32 0, i32 88)
  %46 = load i32, i32* @ET_PASSTHRU0, align 4
  %47 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %48 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @SD_ISCSI_PDU, align 4
  %51 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %52 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %55 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %58 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %61 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %64 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %66 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %70 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @PT_DEFAULT_TIMEOUT, align 4
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %74 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %76 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %122

79:                                               ; preds = %39
  %80 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %81 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %86 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %89 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @memcpy(i32* %84, i32 %87, i32 %90)
  %92 = load i32, i32* @PT_FLAG_SEND_BUFFER, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %96 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @LSDW(i32 %97)
  %99 = call i8* @cpu_to_le32(i64 %98)
  %100 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %101 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i8* %99, i8** %103, align 8
  %104 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %105 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @MSDW(i32 %106)
  %108 = call i8* @cpu_to_le32(i64 %107)
  %109 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %110 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i8* %108, i8** %112, align 8
  %113 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %114 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, 4
  %118 = call i8* @cpu_to_le32(i64 %117)
  %119 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %120 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  br label %122

122:                                              ; preds = %79, %39
  %123 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %124 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %153

127:                                              ; preds = %122
  %128 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %129 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @LSDW(i32 %130)
  %132 = call i8* @cpu_to_le32(i64 %131)
  %133 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %134 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  store i8* %132, i8** %136, align 8
  %137 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %138 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @MSDW(i32 %139)
  %141 = call i8* @cpu_to_le32(i64 %140)
  %142 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %143 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store i8* %141, i8** %145, align 8
  %146 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %147 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i8* @cpu_to_le32(i64 %148)
  %150 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %151 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i8* %149, i8** %152, align 8
  br label %153

153:                                              ; preds = %127, %122
  %154 = load i32, i32* @PT_FLAG_ISCSI_PDU, align 4
  %155 = load i32, i32* @PT_FLAG_WAIT_4_RESPONSE, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i8* @cpu_to_le16(i32 %159)
  %161 = load %struct.passthru0*, %struct.passthru0** %3, align 8
  %162 = getelementptr inbounds %struct.passthru0, %struct.passthru0* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %164 = call i32 @qla4xxx_advance_req_ring_ptr(%struct.scsi_qla_host* %163)
  %165 = call i32 (...) @wmb()
  %166 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %167 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %170 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.ql4_task_data*, %struct.ql4_task_data** %7, align 8
  %174 = getelementptr inbounds %struct.ql4_task_data, %struct.ql4_task_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %177 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %181 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %180, i32 0, i32 3
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i32 (%struct.scsi_qla_host*)*, i32 (%struct.scsi_qla_host*)** %183, align 8
  %185 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %186 = call i32 %184(%struct.scsi_qla_host* %185)
  %187 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %153, %38
  %189 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %190 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %189, i32 0, i32 2
  %191 = load i64, i64* %9, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  %193 = load i32, i32* %10, align 4
  ret i32 %193
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qla4xxx_space_in_req_ring(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @memset(%struct.passthru0*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @LSDW(i32) #1

declare dso_local i64 @MSDW(i32) #1

declare dso_local i32 @qla4xxx_advance_req_ring_ptr(%struct.scsi_qla_host*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
