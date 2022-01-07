; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_relogin_flash_ddb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_relogin_flash_ddb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.ddb_entry* }
%struct.ddb_entry = type { i32, i32, i32, %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }

@RELOGIN_TOV = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"scsi%ld: Relogin index [%d]. TOV=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_session*)* @qla4xxx_relogin_flash_ddb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_relogin_flash_ddb(%struct.iscsi_cls_session* %0) #0 {
  %2 = alloca %struct.iscsi_cls_session*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.ddb_entry*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %2, align 8
  %7 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %7, i32 0, i32 0
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  store %struct.iscsi_session* %9, %struct.iscsi_session** %4, align 8
  %10 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %10, i32 0, i32 0
  %12 = load %struct.ddb_entry*, %struct.ddb_entry** %11, align 8
  store %struct.ddb_entry* %12, %struct.ddb_entry** %5, align 8
  %13 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %14 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %13, i32 0, i32 3
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  store %struct.scsi_qla_host* %15, %struct.scsi_qla_host** %6, align 8
  %16 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %17 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* @RELOGIN_TOV, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @max(i32 %18, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %23 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @atomic_set(i32* %23, i32 %24)
  %26 = load i32, i32* @KERN_INFO, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %32 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ql4_printk(i32 %26, %struct.scsi_qla_host* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %34)
  %36 = call i32 @DEBUG2(i32 %35)
  %37 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %38 = call i32 @qla4xxx_login_flash_ddb(%struct.iscsi_cls_session* %37)
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i32, i32, i32) #1

declare dso_local i32 @qla4xxx_login_flash_ddb(%struct.iscsi_cls_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
