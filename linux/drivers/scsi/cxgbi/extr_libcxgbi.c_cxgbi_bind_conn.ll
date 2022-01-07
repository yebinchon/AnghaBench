; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_bind_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_bind_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_5__*, %struct.iscsi_tcp_conn* }
%struct.TYPE_5__ = type { i64 }
%struct.iscsi_tcp_conn = type { %struct.cxgbi_conn* }
%struct.cxgbi_conn = type { %struct.cxgbi_endpoint*, i32, i64 }
%struct.cxgbi_endpoint = type { %struct.cxgbi_conn*, i32, %struct.cxgbi_sock* }
%struct.cxgbi_sock = type { i32, %struct.iscsi_conn*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.cxgbi_sock*, i32, i32)*, %struct.cxgbi_ppm* (%struct.TYPE_6__*)* }
%struct.cxgbi_ppm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_endpoint = type { %struct.cxgbi_endpoint* }

@EINVAL = common dso_local global i32 0, align 4
@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cls 0x%p,0x%p, ep 0x%p, cconn 0x%p, csk 0x%p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_bind_conn(%struct.iscsi_cls_session* %0, %struct.iscsi_cls_conn* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_tcp_conn*, align 8
  %12 = alloca %struct.cxgbi_conn*, align 8
  %13 = alloca %struct.cxgbi_ppm*, align 8
  %14 = alloca %struct.iscsi_endpoint*, align 8
  %15 = alloca %struct.cxgbi_endpoint*, align 8
  %16 = alloca %struct.cxgbi_sock*, align 8
  %17 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %6, align 8
  store %struct.iscsi_cls_conn* %1, %struct.iscsi_cls_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %19 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %18, i32 0, i32 0
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %19, align 8
  store %struct.iscsi_conn* %20, %struct.iscsi_conn** %10, align 8
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 1
  %23 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %22, align 8
  store %struct.iscsi_tcp_conn* %23, %struct.iscsi_tcp_conn** %11, align 8
  %24 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  %25 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %24, i32 0, i32 0
  %26 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %25, align 8
  store %struct.cxgbi_conn* %26, %struct.cxgbi_conn** %12, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32 %27)
  store %struct.iscsi_endpoint* %28, %struct.iscsi_endpoint** %14, align 8
  %29 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %14, align 8
  %30 = icmp ne %struct.iscsi_endpoint* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %123

34:                                               ; preds = %4
  %35 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %14, align 8
  %36 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %35, i32 0, i32 0
  %37 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %36, align 8
  store %struct.cxgbi_endpoint* %37, %struct.cxgbi_endpoint** %15, align 8
  %38 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %15, align 8
  %39 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %38, i32 0, i32 2
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %39, align 8
  store %struct.cxgbi_sock* %40, %struct.cxgbi_sock** %16, align 8
  %41 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %16, align 8
  %42 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %41, i32 0, i32 3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.cxgbi_ppm* (%struct.TYPE_6__*)*, %struct.cxgbi_ppm* (%struct.TYPE_6__*)** %44, align 8
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %16, align 8
  %47 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %46, i32 0, i32 3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = call %struct.cxgbi_ppm* %45(%struct.TYPE_6__* %48)
  store %struct.cxgbi_ppm* %49, %struct.cxgbi_ppm** %13, align 8
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %16, align 8
  %51 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (%struct.cxgbi_sock*, i32, i32)*, i32 (%struct.cxgbi_sock*, i32, i32)** %53, align 8
  %55 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %16, align 8
  %56 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %16, align 8
  %57 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %13, align 8
  %60 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 %54(%struct.cxgbi_sock* %55, i32 %58, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %34
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %5, align 4
  br label %123

68:                                               ; preds = %34
  %69 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %70 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @iscsi_conn_bind(%struct.iscsi_cls_session* %69, %struct.iscsi_cls_conn* %70, i32 %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %123

78:                                               ; preds = %68
  %79 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %80 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 1
  %85 = call i64 @__ilog2_u32(i64 %84)
  %86 = add nsw i64 %85, 1
  %87 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %88 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %16, align 8
  %90 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %89, i32 0, i32 0
  %91 = call i32 @write_lock_bh(i32* %90)
  %92 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %93 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %16, align 8
  %94 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %93, i32 0, i32 1
  store %struct.iscsi_conn* %92, %struct.iscsi_conn** %94, align 8
  %95 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %15, align 8
  %96 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %99 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %15, align 8
  %101 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %102 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %101, i32 0, i32 0
  store %struct.cxgbi_endpoint* %100, %struct.cxgbi_endpoint** %102, align 8
  %103 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %104 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %15, align 8
  %105 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %104, i32 0, i32 0
  store %struct.cxgbi_conn* %103, %struct.cxgbi_conn** %105, align 8
  %106 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %16, align 8
  %107 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %106, i32 0, i32 0
  %108 = call i32 @write_unlock_bh(i32* %107)
  %109 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %110 = call i32 @cxgbi_conn_max_xmit_dlength(%struct.iscsi_conn* %109)
  %111 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %112 = call i32 @cxgbi_conn_max_recv_dlength(%struct.iscsi_conn* %111)
  %113 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %114 = shl i32 1, %113
  %115 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %116 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %117 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %14, align 8
  %118 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %119 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %16, align 8
  %120 = call i32 @log_debug(i32 %114, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.iscsi_cls_session* %115, %struct.iscsi_cls_conn* %116, %struct.iscsi_endpoint* %117, %struct.cxgbi_conn* %118, %struct.cxgbi_sock* %119)
  %121 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  %122 = call i32 @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn* %121)
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %78, %75, %66, %31
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32) #1

declare dso_local i32 @iscsi_conn_bind(%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i32) #1

declare dso_local i64 @__ilog2_u32(i64) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_conn_max_xmit_dlength(%struct.iscsi_conn*) #1

declare dso_local i32 @cxgbi_conn_max_recv_dlength(%struct.iscsi_conn*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, %struct.iscsi_endpoint*, %struct.cxgbi_conn*, %struct.cxgbi_sock*) #1

declare dso_local i32 @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
