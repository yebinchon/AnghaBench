; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_sess_conn_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_sess_conn_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.scsi_qla_host = type { i32, i32 }
%struct.dev_db_entry = type { i32 }
%struct.iscsi_cls_session = type { i32, %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.ddb_entry* }
%struct.ddb_entry = type { i32, %struct.iscsi_cls_conn*, i32, %struct.iscsi_cls_session* }
%struct.iscsi_cls_conn = type { %struct.iscsi_endpoint* }
%struct.iscsi_endpoint = type { %struct.iscsi_cls_conn* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@qla4xxx_iscsi_transport = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@INVALID_ENTRY = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@ql4xsess_recovery_tmo = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unable to get ep\0A\00", align 1
@RESET_ADAPTER = common dso_local global i32 0, align 4
@DPC_RELOGIN_DEVICE = common dso_local global i32 0, align 4
@DF_RELOGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.dev_db_entry*, i32, i32)* @qla4xxx_sess_conn_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_sess_conn_setup(%struct.scsi_qla_host* %0, %struct.dev_db_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.dev_db_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_cls_session*, align 8
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca %struct.iscsi_cls_conn*, align 8
  %12 = alloca %struct.iscsi_endpoint*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ddb_entry*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.dev_db_entry* %1, %struct.dev_db_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 32, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %18, i32* %16, align 4
  store %struct.ddb_entry* null, %struct.ddb_entry** %17, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @INVALID_ENTRY, align 4
  %25 = call %struct.iscsi_cls_session* @iscsi_session_setup(%struct.TYPE_3__* @qla4xxx_iscsi_transport, i32 %21, i32 %22, i32 32, i32 4, i32 %23, i32 %24)
  store %struct.iscsi_cls_session* %25, %struct.iscsi_cls_session** %9, align 8
  %26 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %9, align 8
  %27 = icmp ne %struct.iscsi_cls_session* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @QLA_ERROR, align 4
  store i32 %29, i32* %16, align 4
  br label %107

30:                                               ; preds = %4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @qla4xxx_iscsi_transport, i32 0, i32 0), align 4
  %32 = call i32 @module_put(i32 %31)
  %33 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %9, align 8
  %34 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %33, i32 0, i32 1
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %34, align 8
  store %struct.iscsi_session* %35, %struct.iscsi_session** %10, align 8
  %36 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %37 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %36, i32 0, i32 0
  %38 = load %struct.ddb_entry*, %struct.ddb_entry** %37, align 8
  store %struct.ddb_entry* %38, %struct.ddb_entry** %17, align 8
  %39 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %9, align 8
  %40 = load %struct.ddb_entry*, %struct.ddb_entry** %17, align 8
  %41 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %40, i32 0, i32 3
  store %struct.iscsi_cls_session* %39, %struct.iscsi_cls_session** %41, align 8
  %42 = load i32, i32* @ql4xsess_recovery_tmo, align 4
  %43 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %9, align 8
  %44 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ddb_entry*, %struct.ddb_entry** %17, align 8
  %46 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %45, i32 0, i32 2
  %47 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %48 = call i32 @memcpy(i32* %46, %struct.dev_db_entry* %47, i32 4)
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %50 = load %struct.ddb_entry*, %struct.ddb_entry** %17, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @qla4xxx_setup_flash_ddb_entry(%struct.scsi_qla_host* %49, %struct.ddb_entry* %50, i32 %51)
  %53 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %9, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session* %53, i32 4, i32 %54)
  store %struct.iscsi_cls_conn* %55, %struct.iscsi_cls_conn** %11, align 8
  %56 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %11, align 8
  %57 = icmp ne %struct.iscsi_cls_conn* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %30
  %59 = load i32, i32* @QLA_ERROR, align 4
  store i32 %59, i32* %16, align 4
  br label %107

60:                                               ; preds = %30
  %61 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %11, align 8
  %62 = load %struct.ddb_entry*, %struct.ddb_entry** %17, align 8
  %63 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %62, i32 0, i32 1
  store %struct.iscsi_cls_conn* %61, %struct.iscsi_cls_conn** %63, align 8
  %64 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %65 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %66 = call %struct.iscsi_endpoint* @qla4xxx_get_ep_fwdb(%struct.scsi_qla_host* %64, %struct.dev_db_entry* %65)
  store %struct.iscsi_endpoint* %66, %struct.iscsi_endpoint** %12, align 8
  %67 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %12, align 8
  %68 = icmp ne %struct.iscsi_endpoint* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %11, align 8
  %71 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %12, align 8
  %72 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %71, i32 0, i32 0
  store %struct.iscsi_cls_conn* %70, %struct.iscsi_cls_conn** %72, align 8
  %73 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %12, align 8
  %74 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %11, align 8
  %75 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %74, i32 0, i32 0
  store %struct.iscsi_endpoint* %73, %struct.iscsi_endpoint** %75, align 8
  br label %82

76:                                               ; preds = %60
  %77 = load i32, i32* @KERN_ERR, align 4
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %79 = call i32 @ql4_printk(i32 %77, %struct.scsi_qla_host* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %80 = call i32 @DEBUG2(i32 %79)
  %81 = load i32, i32* @QLA_ERROR, align 4
  store i32 %81, i32* %16, align 4
  br label %107

82:                                               ; preds = %69
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %84 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %85 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %9, align 8
  %86 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %11, align 8
  %87 = call i32 @qla4xxx_copy_fwddb_param(%struct.scsi_qla_host* %83, %struct.dev_db_entry* %84, %struct.iscsi_cls_session* %85, %struct.iscsi_cls_conn* %86)
  %88 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %89 = load %struct.ddb_entry*, %struct.ddb_entry** %17, align 8
  %90 = load %struct.dev_db_entry*, %struct.dev_db_entry** %6, align 8
  %91 = call i32 @qla4xxx_update_sess_disc_idx(%struct.scsi_qla_host* %88, %struct.ddb_entry* %89, %struct.dev_db_entry* %90)
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @RESET_ADAPTER, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %82
  %96 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %9, align 8
  %97 = call i32 @iscsi_block_session(%struct.iscsi_cls_session* %96)
  %98 = load i32, i32* @DPC_RELOGIN_DEVICE, align 4
  %99 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %100 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %99, i32 0, i32 0
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  %102 = load i32, i32* @DF_RELOGIN, align 4
  %103 = load %struct.ddb_entry*, %struct.ddb_entry** %17, align 8
  %104 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %103, i32 0, i32 0
  %105 = call i32 @set_bit(i32 %102, i32* %104)
  br label %106

106:                                              ; preds = %95, %82
  br label %107

107:                                              ; preds = %106, %76, %58, %28
  %108 = load i32, i32* %16, align 4
  ret i32 %108
}

declare dso_local %struct.iscsi_cls_session* @iscsi_session_setup(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.dev_db_entry*, i32) #1

declare dso_local i32 @qla4xxx_setup_flash_ddb_entry(%struct.scsi_qla_host*, %struct.ddb_entry*, i32) #1

declare dso_local %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session*, i32, i32) #1

declare dso_local %struct.iscsi_endpoint* @qla4xxx_get_ep_fwdb(%struct.scsi_qla_host*, %struct.dev_db_entry*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i32 @qla4xxx_copy_fwddb_param(%struct.scsi_qla_host*, %struct.dev_db_entry*, %struct.iscsi_cls_session*, %struct.iscsi_cls_conn*) #1

declare dso_local i32 @qla4xxx_update_sess_disc_idx(%struct.scsi_qla_host*, %struct.ddb_entry*, %struct.dev_db_entry*) #1

declare dso_local i32 @iscsi_block_session(%struct.iscsi_cls_session*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
