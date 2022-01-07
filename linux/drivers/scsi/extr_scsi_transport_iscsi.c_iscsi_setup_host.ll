; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_setup_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_setup_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport_container = type { i32 }
%struct.device = type { i32 }
%struct.Scsi_Host = type { %struct.iscsi_cls_host* }
%struct.iscsi_cls_host = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport_container*, %struct.device*, %struct.device*)* @iscsi_setup_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_setup_host(%struct.transport_container* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.transport_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.iscsi_cls_host*, align 8
  store %struct.transport_container* %0, %struct.transport_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %7, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %12, align 8
  store %struct.iscsi_cls_host* %13, %struct.iscsi_cls_host** %8, align 8
  %14 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %8, align 8
  %15 = call i32 @memset(%struct.iscsi_cls_host* %14, i32 0, i32 8)
  %16 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %8, align 8
  %17 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %16, i32 0, i32 1
  %18 = call i32 @atomic_set(i32* %17, i32 0)
  %19 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %8, align 8
  %20 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %19, i32 0, i32 0
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %23 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %8, align 8
  %24 = call i32 @iscsi_bsg_host_add(%struct.Scsi_Host* %22, %struct.iscsi_cls_host* %23)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local i32 @memset(%struct.iscsi_cls_host*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iscsi_bsg_host_add(%struct.Scsi_Host*, %struct.iscsi_cls_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
