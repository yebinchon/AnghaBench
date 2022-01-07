; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_create_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_create_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.cxgbi_conn* }
%struct.cxgbi_conn = type { %struct.iscsi_conn* }
%struct.iscsi_cls_session = type { i32 }

@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"cid %u(0x%x), cls 0x%p,0x%p, conn 0x%p,0x%p,0x%p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_conn* @cxgbi_create_conn(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_conn*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_tcp_conn*, align 8
  %9 = alloca %struct.cxgbi_conn*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.iscsi_cls_conn* @iscsi_tcp_conn_setup(%struct.iscsi_cls_session* %10, i32 8, i32 %11)
  store %struct.iscsi_cls_conn* %12, %struct.iscsi_cls_conn** %6, align 8
  %13 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %14 = icmp ne %struct.iscsi_cls_conn* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %17, i32 0, i32 0
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %18, align 8
  store %struct.iscsi_conn* %19, %struct.iscsi_conn** %7, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %21, align 8
  store %struct.iscsi_tcp_conn* %22, %struct.iscsi_tcp_conn** %8, align 8
  %23 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  %24 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %23, i32 0, i32 0
  %25 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %24, align 8
  store %struct.cxgbi_conn* %25, %struct.cxgbi_conn** %9, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %27 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %9, align 8
  %28 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %27, i32 0, i32 0
  store %struct.iscsi_conn* %26, %struct.iscsi_conn** %28, align 8
  %29 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %34 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %36 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  %37 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %9, align 8
  %38 = call i32 @log_debug(i32 %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, %struct.iscsi_cls_session* %33, %struct.iscsi_cls_conn* %34, %struct.iscsi_conn* %35, %struct.iscsi_tcp_conn* %36, %struct.cxgbi_conn* %37)
  %39 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  store %struct.iscsi_cls_conn* %39, %struct.iscsi_cls_conn** %3, align 8
  br label %40

40:                                               ; preds = %16, %15
  %41 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  ret %struct.iscsi_cls_conn* %41
}

declare dso_local %struct.iscsi_cls_conn* @iscsi_tcp_conn_setup(%struct.iscsi_cls_session*, i32, i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32, i32, %struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, %struct.iscsi_conn*, %struct.iscsi_tcp_conn*, %struct.cxgbi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
