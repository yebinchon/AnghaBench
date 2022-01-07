; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_create_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_create_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_transport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_session* @iscsi_create_session(%struct.Scsi_Host* %0, %struct.iscsi_transport* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.iscsi_transport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_cls_session*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %6, align 8
  store %struct.iscsi_transport* %1, %struct.iscsi_transport** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %12 = load %struct.iscsi_transport*, %struct.iscsi_transport** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.iscsi_cls_session* @iscsi_alloc_session(%struct.Scsi_Host* %11, %struct.iscsi_transport* %12, i32 %13)
  store %struct.iscsi_cls_session* %14, %struct.iscsi_cls_session** %10, align 8
  %15 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %10, align 8
  %16 = icmp ne %struct.iscsi_cls_session* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %28

18:                                               ; preds = %4
  %19 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @iscsi_add_session(%struct.iscsi_cls_session* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %10, align 8
  %25 = call i32 @iscsi_free_session(%struct.iscsi_cls_session* %24)
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %28

26:                                               ; preds = %18
  %27 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %10, align 8
  store %struct.iscsi_cls_session* %27, %struct.iscsi_cls_session** %5, align 8
  br label %28

28:                                               ; preds = %26, %23, %17
  %29 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  ret %struct.iscsi_cls_session* %29
}

declare dso_local %struct.iscsi_cls_session* @iscsi_alloc_session(%struct.Scsi_Host*, %struct.iscsi_transport*, i32) #1

declare dso_local i64 @iscsi_add_session(%struct.iscsi_cls_session*, i32) #1

declare dso_local i32 @iscsi_free_session(%struct.iscsi_cls_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
