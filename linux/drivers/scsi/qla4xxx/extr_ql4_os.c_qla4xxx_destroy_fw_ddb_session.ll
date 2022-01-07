; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_destroy_fw_ddb_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_destroy_fw_ddb_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.scsi_qla_host = type { i32 }
%struct.ddb_entry = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MAX_DDB_ENTRIES = common dso_local global i32 0, align 4
@FLASH_DDB = common dso_local global i64 0, align 8
@qla4xxx_iscsi_transport = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla4xxx_destroy_fw_ddb_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_destroy_fw_ddb_session(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca %struct.ddb_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %41, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MAX_DDB_ENTRIES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %44

9:                                                ; preds = %5
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.ddb_entry* @qla4xxx_lookup_ddb_by_fw_index(%struct.scsi_qla_host* %10, i32 %11)
  store %struct.ddb_entry* %12, %struct.ddb_entry** %3, align 8
  %13 = load %struct.ddb_entry*, %struct.ddb_entry** %3, align 8
  %14 = icmp ne %struct.ddb_entry* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load %struct.ddb_entry*, %struct.ddb_entry** %3, align 8
  %17 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FLASH_DDB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %23 = load %struct.ddb_entry*, %struct.ddb_entry** %3, align 8
  %24 = call i32 @qla4xxx_destroy_ddb(%struct.scsi_qla_host* %22, %struct.ddb_entry* %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qla4xxx_iscsi_transport, i32 0, i32 0), align 4
  %26 = call i32 @try_module_get(i32 %25)
  %27 = load %struct.ddb_entry*, %struct.ddb_entry** %3, align 8
  %28 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iscsi_destroy_endpoint(i32 %31)
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %34 = load %struct.ddb_entry*, %struct.ddb_entry** %3, align 8
  %35 = call i32 @qla4xxx_free_ddb(%struct.scsi_qla_host* %33, %struct.ddb_entry* %34)
  %36 = load %struct.ddb_entry*, %struct.ddb_entry** %3, align 8
  %37 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @iscsi_session_teardown(i32 %38)
  br label %40

40:                                               ; preds = %21, %15, %9
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %5

44:                                               ; preds = %5
  ret void
}

declare dso_local %struct.ddb_entry* @qla4xxx_lookup_ddb_by_fw_index(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla4xxx_destroy_ddb(%struct.scsi_qla_host*, %struct.ddb_entry*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @iscsi_destroy_endpoint(i32) #1

declare dso_local i32 @qla4xxx_free_ddb(%struct.scsi_qla_host*, %struct.ddb_entry*) #1

declare dso_local i32 @iscsi_session_teardown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
