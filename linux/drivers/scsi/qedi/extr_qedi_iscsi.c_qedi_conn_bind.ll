; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.qedi_conn* }
%struct.qedi_conn = type { i32, i32, i32, i64, i64, i32, i32, %struct.qedi_endpoint* }
%struct.qedi_endpoint = type { i64, i32, i32, %struct.qedi_conn* }
%struct.Scsi_Host = type { i32 }
%struct.qedi_ctx = type { i32 }
%struct.iscsi_endpoint = type { %struct.qedi_endpoint* }

@EINVAL = common dso_local global i32 0, align 4
@EP_STATE_TCP_FIN_RCVD = common dso_local global i64 0, align 8
@EP_STATE_TCP_RST_RCVD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i32, i32)* @qedi_conn_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_conn_bind(%struct.iscsi_cls_session* %0, %struct.iscsi_cls_conn* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.qedi_conn*, align 8
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.qedi_ctx*, align 8
  %14 = alloca %struct.qedi_endpoint*, align 8
  %15 = alloca %struct.iscsi_endpoint*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %6, align 8
  store %struct.iscsi_cls_conn* %1, %struct.iscsi_cls_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %17 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %16, i32 0, i32 0
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %10, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.qedi_conn*, %struct.qedi_conn** %20, align 8
  store %struct.qedi_conn* %21, %struct.qedi_conn** %11, align 8
  %22 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %23 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %22)
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %12, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %25 = call %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host* %24)
  store %struct.qedi_ctx* %25, %struct.qedi_ctx** %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32 %26)
  store %struct.iscsi_endpoint* %27, %struct.iscsi_endpoint** %15, align 8
  %28 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %29 = icmp ne %struct.iscsi_endpoint* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %98

33:                                               ; preds = %4
  %34 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %15, align 8
  %35 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %34, i32 0, i32 0
  %36 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %35, align 8
  store %struct.qedi_endpoint* %36, %struct.qedi_endpoint** %14, align 8
  %37 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %14, align 8
  %38 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EP_STATE_TCP_FIN_RCVD, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %33
  %43 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %14, align 8
  %44 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EP_STATE_TCP_RST_RCVD, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %33
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %98

51:                                               ; preds = %42
  %52 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %53 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @iscsi_conn_bind(%struct.iscsi_cls_session* %52, %struct.iscsi_cls_conn* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %98

60:                                               ; preds = %51
  %61 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %62 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %14, align 8
  %63 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %62, i32 0, i32 3
  store %struct.qedi_conn* %61, %struct.qedi_conn** %63, align 8
  %64 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %14, align 8
  %65 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %66 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %65, i32 0, i32 7
  store %struct.qedi_endpoint* %64, %struct.qedi_endpoint** %66, align 8
  %67 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %14, align 8
  %68 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %71 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %14, align 8
  %73 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %76 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %78 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %80 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.qedi_ctx*, %struct.qedi_ctx** %13, align 8
  %82 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %83 = call i64 @qedi_bind_conn_to_iscsi_cid(%struct.qedi_ctx* %81, %struct.qedi_conn* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %60
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %98

88:                                               ; preds = %60
  %89 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %90 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %89, i32 0, i32 2
  %91 = call i32 @spin_lock_init(i32* %90)
  %92 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %93 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %92, i32 0, i32 1
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  %95 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  %96 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %95, i32 0, i32 0
  %97 = call i32 @init_waitqueue_head(i32* %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %88, %85, %57, %48, %30
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local %struct.qedi_ctx* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32) #1

declare dso_local i64 @iscsi_conn_bind(%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i32) #1

declare dso_local i64 @qedi_bind_conn_to_iscsi_cid(%struct.qedi_ctx*, %struct.qedi_conn*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
