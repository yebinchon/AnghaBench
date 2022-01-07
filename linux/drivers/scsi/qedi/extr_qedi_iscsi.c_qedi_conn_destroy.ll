; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.qedi_conn* }
%struct.qedi_conn = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.qedi_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_conn*)* @qedi_conn_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_conn_destroy(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca %struct.iscsi_cls_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.qedi_conn*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.qedi_ctx*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %2, align 8
  %7 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %7, i32 0, i32 0
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %3, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  store %struct.qedi_conn* %12, %struct.qedi_conn** %4, align 8
  %13 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %14 = call i32 @iscsi_conn_to_session(%struct.iscsi_cls_conn* %13)
  %15 = call %struct.Scsi_Host* @iscsi_session_to_shost(i32 %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %5, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %17 = call %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host* %16)
  store %struct.qedi_ctx* %17, %struct.qedi_ctx** %6, align 8
  %18 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  %19 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %20 = call i32 @qedi_conn_free_login_resources(%struct.qedi_ctx* %18, %struct.qedi_conn* %19)
  %21 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %22 = call i32 @iscsi_conn_teardown(%struct.iscsi_cls_conn* %21)
  ret void
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(i32) #1

declare dso_local i32 @iscsi_conn_to_session(%struct.iscsi_cls_conn*) #1

declare dso_local %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @qedi_conn_free_login_resources(%struct.qedi_ctx*, %struct.qedi_conn*) #1

declare dso_local i32 @iscsi_conn_teardown(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
