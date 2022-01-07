; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_transport = type { i32 (%struct.iscsi_cls_conn*, i32, i8*, i32)* }
%struct.iscsi_cls_conn = type opaque
%struct.iscsi_uevent = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.iscsi_cls_conn.0 = type { i32 }
%struct.iscsi_cls_session = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_transport*, %struct.iscsi_uevent*)* @iscsi_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_set_param(%struct.iscsi_transport* %0, %struct.iscsi_uevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_transport*, align 8
  %5 = alloca %struct.iscsi_uevent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iscsi_cls_conn.0*, align 8
  %8 = alloca %struct.iscsi_cls_session*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_transport* %0, %struct.iscsi_transport** %4, align 8
  store %struct.iscsi_uevent* %1, %struct.iscsi_uevent** %5, align 8
  %11 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %5, align 8
  %12 = bitcast %struct.iscsi_uevent* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 16
  store i8* %13, i8** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.iscsi_cls_session* @iscsi_session_lookup(i32 %18)
  store %struct.iscsi_cls_session* %19, %struct.iscsi_cls_session** %8, align 8
  %20 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.iscsi_cls_conn.0* @iscsi_conn_lookup(i32 %24, i32 %29)
  store %struct.iscsi_cls_conn.0* %30, %struct.iscsi_cls_conn.0** %7, align 8
  %31 = load %struct.iscsi_cls_conn.0*, %struct.iscsi_cls_conn.0** %7, align 8
  %32 = icmp ne %struct.iscsi_cls_conn.0* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %35 = icmp ne %struct.iscsi_cls_session* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %77

39:                                               ; preds = %33
  %40 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %57 [
    i32 128, label %45
  ]

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  %48 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %49 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %55 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %45
  br label %75

57:                                               ; preds = %39
  %58 = load %struct.iscsi_transport*, %struct.iscsi_transport** %4, align 8
  %59 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %58, i32 0, i32 0
  %60 = load i32 (%struct.iscsi_cls_conn*, i32, i8*, i32)*, i32 (%struct.iscsi_cls_conn*, i32, i8*, i32)** %59, align 8
  %61 = load %struct.iscsi_cls_conn.0*, %struct.iscsi_cls_conn.0** %7, align 8
  %62 = bitcast %struct.iscsi_cls_conn.0* %61 to %struct.iscsi_cls_conn*
  %63 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %5, align 8
  %64 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %5, align 8
  %70 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %60(%struct.iscsi_cls_conn* %62, i32 %67, i8* %68, i32 %73)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %57, %56
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %36
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.iscsi_cls_session* @iscsi_session_lookup(i32) #1

declare dso_local %struct.iscsi_cls_conn.0* @iscsi_conn_lookup(i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
