; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_conn_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_conn_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.attribute_container = type { i32* }
%struct.device = type { i32 }
%struct.iscsi_cls_session = type { i32 }
%struct.iscsi_cls_conn = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_internal = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.attribute_container }

@iscsi_connection_class = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute_container*, %struct.device*)* @iscsi_conn_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_conn_match(%struct.attribute_container* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.iscsi_internal*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i32 @iscsi_is_conn_dev(%struct.device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.iscsi_cls_conn* @iscsi_dev_to_conn(%struct.device* %15)
  store %struct.iscsi_cls_conn* %16, %struct.iscsi_cls_conn** %7, align 8
  %17 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %18 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.iscsi_cls_session* @iscsi_dev_to_session(i32 %20)
  store %struct.iscsi_cls_session* %21, %struct.iscsi_cls_session** %6, align 8
  %22 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %23 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %22)
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %8, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %48

29:                                               ; preds = %14
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.iscsi_internal* @to_iscsi_internal(i32 %32)
  store %struct.iscsi_internal* %33, %struct.iscsi_internal** %9, align 8
  %34 = load %struct.iscsi_internal*, %struct.iscsi_internal** %9, align 8
  %35 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iscsi_connection_class, i32 0, i32 0)
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load %struct.iscsi_internal*, %struct.iscsi_internal** %9, align 8
  %43 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %46 = icmp eq %struct.attribute_container* %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %40, %28, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @iscsi_is_conn_dev(%struct.device*) #1

declare dso_local %struct.iscsi_cls_conn* @iscsi_dev_to_conn(%struct.device*) #1

declare dso_local %struct.iscsi_cls_session* @iscsi_dev_to_session(i32) #1

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local %struct.iscsi_internal* @to_iscsi_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
