; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_create_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_create_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_internal = type { %struct.iscsi_transport* }
%struct.iscsi_transport = type { %struct.iscsi_cls_session* (%struct.iscsi_endpoint*, i32, i32, i32)* }
%struct.iscsi_cls_session = type { i32, i32 }
%struct.iscsi_endpoint = type opaque
%struct.iscsi_endpoint.0 = type { i32 }
%struct.iscsi_uevent = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.Scsi_Host = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Completed creating transport session\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_internal*, %struct.iscsi_endpoint.0*, %struct.iscsi_uevent*, i32, i32, i32, i32)* @iscsi_if_create_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_if_create_session(%struct.iscsi_internal* %0, %struct.iscsi_endpoint.0* %1, %struct.iscsi_uevent* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_internal*, align 8
  %10 = alloca %struct.iscsi_endpoint.0*, align 8
  %11 = alloca %struct.iscsi_uevent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iscsi_transport*, align 8
  %17 = alloca %struct.iscsi_cls_session*, align 8
  %18 = alloca %struct.Scsi_Host*, align 8
  store %struct.iscsi_internal* %0, %struct.iscsi_internal** %9, align 8
  store %struct.iscsi_endpoint.0* %1, %struct.iscsi_endpoint.0** %10, align 8
  store %struct.iscsi_uevent* %2, %struct.iscsi_uevent** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.iscsi_internal*, %struct.iscsi_internal** %9, align 8
  %20 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %19, i32 0, i32 0
  %21 = load %struct.iscsi_transport*, %struct.iscsi_transport** %20, align 8
  store %struct.iscsi_transport* %21, %struct.iscsi_transport** %16, align 8
  %22 = load %struct.iscsi_transport*, %struct.iscsi_transport** %16, align 8
  %23 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %22, i32 0, i32 0
  %24 = load %struct.iscsi_cls_session* (%struct.iscsi_endpoint*, i32, i32, i32)*, %struct.iscsi_cls_session* (%struct.iscsi_endpoint*, i32, i32, i32)** %23, align 8
  %25 = load %struct.iscsi_endpoint.0*, %struct.iscsi_endpoint.0** %10, align 8
  %26 = bitcast %struct.iscsi_endpoint.0* %25 to %struct.iscsi_endpoint*
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call %struct.iscsi_cls_session* %24(%struct.iscsi_endpoint* %26, i32 %27, i32 %28, i32 %29)
  store %struct.iscsi_cls_session* %30, %struct.iscsi_cls_session** %17, align 8
  %31 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %17, align 8
  %32 = icmp ne %struct.iscsi_cls_session* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %58

36:                                               ; preds = %7
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %17, align 8
  %39 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %17, align 8
  %41 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %40)
  store %struct.Scsi_Host* %41, %struct.Scsi_Host** %18, align 8
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %18, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %11, align 8
  %46 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %17, align 8
  %50 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %11, align 8
  %53 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %17, align 8
  %57 = call i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session* %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %36, %33
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
