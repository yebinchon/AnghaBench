; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.qedi_conn* }
%struct.qedi_conn = type { i32, i32, i64, i32*, %struct.qedi_ctx*, %struct.iscsi_cls_conn* }
%struct.qedi_ctx = type { i32 }
%struct.iscsi_cls_session = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"conn_new: iscsi conn setup failed, cid=0x%x, cls_sess=%p!\0A\00", align 1
@KERN_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"conn_new: login resc alloc failed, cid=0x%x, cls_sess=%p!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_cls_conn* (%struct.iscsi_cls_session*, i32)* @qedi_conn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_cls_conn* @qedi_conn_create(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.qedi_ctx*, align 8
  %8 = alloca %struct.iscsi_cls_conn*, align 8
  %9 = alloca %struct.qedi_conn*, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %12 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %6, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %14 = call %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host* %13)
  store %struct.qedi_ctx* %14, %struct.qedi_ctx** %7, align 8
  %15 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session* %15, i32 40, i32 %16)
  store %struct.iscsi_cls_conn* %17, %struct.iscsi_cls_conn** %8, align 8
  %18 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %19 = icmp ne %struct.iscsi_cls_conn* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %25 = call i32 @QEDI_ERR(i32* %22, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.iscsi_cls_session* %24)
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %64

26:                                               ; preds = %2
  %27 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %28 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %27, i32 0, i32 0
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %28, align 8
  store %struct.iscsi_conn* %29, %struct.iscsi_conn** %10, align 8
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 0
  %32 = load %struct.qedi_conn*, %struct.qedi_conn** %31, align 8
  store %struct.qedi_conn* %32, %struct.qedi_conn** %9, align 8
  %33 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %34 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %35 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %34, i32 0, i32 5
  store %struct.iscsi_cls_conn* %33, %struct.iscsi_cls_conn** %35, align 8
  %36 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %37 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %38 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %37, i32 0, i32 4
  store %struct.qedi_ctx* %36, %struct.qedi_ctx** %38, align 8
  %39 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %40 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %42 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %44 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %43, i32 0, i32 1
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %47 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %46, i32 0, i32 0
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %50 = load %struct.qedi_conn*, %struct.qedi_conn** %9, align 8
  %51 = call i64 @qedi_conn_alloc_login_resources(%struct.qedi_ctx* %49, %struct.qedi_conn* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %26
  %54 = load i32, i32* @KERN_ALERT, align 4
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %58 = call i32 @iscsi_conn_printk(i32 %54, %struct.iscsi_conn* %55, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %56, %struct.iscsi_cls_session* %57)
  br label %61

59:                                               ; preds = %26
  %60 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  store %struct.iscsi_cls_conn* %60, %struct.iscsi_cls_conn** %3, align 8
  br label %64

61:                                               ; preds = %53
  %62 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %8, align 8
  %63 = call i32 @iscsi_conn_teardown(%struct.iscsi_cls_conn* %62)
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %64

64:                                               ; preds = %61, %59, %20
  %65 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  ret %struct.iscsi_cls_conn* %65
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session*, i32, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*, i32, %struct.iscsi_cls_session*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @qedi_conn_alloc_login_resources(%struct.qedi_ctx*, %struct.qedi_conn*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i32, %struct.iscsi_cls_session*) #1

declare dso_local i32 @iscsi_conn_teardown(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
