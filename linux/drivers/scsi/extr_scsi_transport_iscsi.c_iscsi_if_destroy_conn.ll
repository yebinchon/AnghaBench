; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_destroy_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_destroy_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_transport = type { i32 (%struct.iscsi_cls_conn*)* }
%struct.iscsi_cls_conn = type opaque
%struct.iscsi_uevent = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iscsi_cls_conn.0 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Destroying transport conn\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_transport*, %struct.iscsi_uevent*)* @iscsi_if_destroy_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_if_destroy_conn(%struct.iscsi_transport* %0, %struct.iscsi_uevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_transport*, align 8
  %5 = alloca %struct.iscsi_uevent*, align 8
  %6 = alloca %struct.iscsi_cls_conn.0*, align 8
  store %struct.iscsi_transport* %0, %struct.iscsi_transport** %4, align 8
  store %struct.iscsi_uevent* %1, %struct.iscsi_uevent** %5, align 8
  %7 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %5, align 8
  %8 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.iscsi_cls_conn.0* @iscsi_conn_lookup(i32 %11, i32 %16)
  store %struct.iscsi_cls_conn.0* %17, %struct.iscsi_cls_conn.0** %6, align 8
  %18 = load %struct.iscsi_cls_conn.0*, %struct.iscsi_cls_conn.0** %6, align 8
  %19 = icmp ne %struct.iscsi_cls_conn.0* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.iscsi_cls_conn.0*, %struct.iscsi_cls_conn.0** %6, align 8
  %25 = call i32 @ISCSI_DBG_TRANS_CONN(%struct.iscsi_cls_conn.0* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.iscsi_transport*, %struct.iscsi_transport** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %26, i32 0, i32 0
  %28 = load i32 (%struct.iscsi_cls_conn*)*, i32 (%struct.iscsi_cls_conn*)** %27, align 8
  %29 = icmp ne i32 (%struct.iscsi_cls_conn*)* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.iscsi_transport*, %struct.iscsi_transport** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %31, i32 0, i32 0
  %33 = load i32 (%struct.iscsi_cls_conn*)*, i32 (%struct.iscsi_cls_conn*)** %32, align 8
  %34 = load %struct.iscsi_cls_conn.0*, %struct.iscsi_cls_conn.0** %6, align 8
  %35 = bitcast %struct.iscsi_cls_conn.0* %34 to %struct.iscsi_cls_conn*
  %36 = call i32 %33(%struct.iscsi_cls_conn* %35)
  br label %37

37:                                               ; preds = %30, %23
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.iscsi_cls_conn.0* @iscsi_conn_lookup(i32, i32) #1

declare dso_local i32 @ISCSI_DBG_TRANS_CONN(%struct.iscsi_cls_conn.0*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
