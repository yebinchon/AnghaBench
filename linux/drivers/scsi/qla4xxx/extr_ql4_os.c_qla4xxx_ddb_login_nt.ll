; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_ddb_login_nt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_ddb_login_nt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.dev_db_entry = type { i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@RESET_ADAPTER = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.dev_db_entry*, i32)* @qla4xxx_ddb_login_nt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_ddb_login_nt(%struct.scsi_qla_host* %0, %struct.dev_db_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.dev_db_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.dev_db_entry* %1, %struct.dev_db_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @QLA_ERROR, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %10 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %11 = call i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host* %9, %struct.dev_db_entry* %10, i32* null)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @QLA_SUCCESS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %17 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %18 = load i32, i32* @RESET_ADAPTER, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host* %16, %struct.dev_db_entry* %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @qla4xxx_is_session_exists(%struct.scsi_qla_host*, %struct.dev_db_entry*, i32*) #1

declare dso_local i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host*, %struct.dev_db_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
