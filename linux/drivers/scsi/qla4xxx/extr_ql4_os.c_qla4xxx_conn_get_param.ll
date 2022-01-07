; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_conn_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_conn_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.qla_conn* }
%struct.qla_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_conn*, i32, i8*)* @qla4xxx_conn_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_conn_get_param(%struct.iscsi_cls_conn* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cls_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.qla_conn*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %11, i32 0, i32 0
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %8, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  %16 = load %struct.qla_conn*, %struct.qla_conn** %15, align 8
  store %struct.qla_conn* %16, %struct.qla_conn** %9, align 8
  %17 = load %struct.qla_conn*, %struct.qla_conn** %9, align 8
  %18 = getelementptr inbounds %struct.qla_conn, %struct.qla_conn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to %struct.sockaddr*
  store %struct.sockaddr* %21, %struct.sockaddr** %10, align 8
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %29 [
    i32 128, label %23
    i32 129, label %23
  ]

23:                                               ; preds = %3, %3
  %24 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_storage*
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage* %25, i32 %26, i8* %27)
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @iscsi_conn_get_param(%struct.iscsi_cls_conn* %30, i32 %31, i8* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %23
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage*, i32, i8*) #1

declare dso_local i32 @iscsi_conn_get_param(%struct.iscsi_cls_conn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
