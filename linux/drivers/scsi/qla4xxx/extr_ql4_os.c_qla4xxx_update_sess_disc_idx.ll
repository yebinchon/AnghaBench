; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_update_sess_disc_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_update_sess_disc_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.ddb_entry = type { %struct.iscsi_cls_session* }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i64 }
%struct.dev_db_entry = type { i32 }

@MAX_DEV_DB_ENTRIES_40XX = common dso_local global i64 0, align 8
@MAX_DEV_DB_ENTRIES = common dso_local global i64 0, align 8
@DDB_NO_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.ddb_entry*, %struct.dev_db_entry*)* @qla4xxx_update_sess_disc_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_update_sess_disc_idx(%struct.scsi_qla_host* %0, %struct.ddb_entry* %1, %struct.dev_db_entry* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.ddb_entry*, align 8
  %6 = alloca %struct.dev_db_entry*, align 8
  %7 = alloca %struct.iscsi_cls_session*, align 8
  %8 = alloca %struct.iscsi_session*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.ddb_entry* %1, %struct.ddb_entry** %5, align 8
  store %struct.dev_db_entry* %2, %struct.dev_db_entry** %6, align 8
  store i64 0, i64* %9, align 8
  store i64 -1, i64* %10, align 8
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %12 = call i64 @is_qla40XX(%struct.scsi_qla_host* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @MAX_DEV_DB_ENTRIES_40XX, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @MAX_DEV_DB_ENTRIES, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %9, align 8
  %20 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %21 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %20, i32 0, i32 0
  %22 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %21, align 8
  store %struct.iscsi_cls_session* %22, %struct.iscsi_cls_session** %7, align 8
  %23 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %7, align 8
  %24 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %23, i32 0, i32 0
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %24, align 8
  store %struct.iscsi_session* %25, %struct.iscsi_session** %8, align 8
  %26 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %27 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le16_to_cpu(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %36 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %41

37:                                               ; preds = %18
  %38 = load i64, i64* @DDB_NO_LINK, align 8
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %40 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  ret void
}

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
