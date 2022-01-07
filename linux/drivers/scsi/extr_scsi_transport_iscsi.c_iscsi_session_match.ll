; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_session_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_session_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.attribute_container = type { i32* }
%struct.device = type { i32 }
%struct.iscsi_cls_session = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_internal = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.attribute_container }

@iscsi_session_class = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute_container*, %struct.device*)* @iscsi_session_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_session_match(%struct.attribute_container* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.iscsi_internal*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i32 @iscsi_is_session_dev(%struct.device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.iscsi_cls_session* @iscsi_dev_to_session(%struct.device* %14)
  store %struct.iscsi_cls_session* %15, %struct.iscsi_cls_session** %6, align 8
  %16 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %17 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %7, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %42

23:                                               ; preds = %13
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.iscsi_internal* @to_iscsi_internal(i32 %26)
  store %struct.iscsi_internal* %27, %struct.iscsi_internal** %8, align 8
  %28 = load %struct.iscsi_internal*, %struct.iscsi_internal** %8, align 8
  %29 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iscsi_session_class, i32 0, i32 0)
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %42

35:                                               ; preds = %23
  %36 = load %struct.iscsi_internal*, %struct.iscsi_internal** %8, align 8
  %37 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %40 = icmp eq %struct.attribute_container* %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %34, %22, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @iscsi_is_session_dev(%struct.device*) #1

declare dso_local %struct.iscsi_cls_session* @iscsi_dev_to_session(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local %struct.iscsi_internal* @to_iscsi_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
