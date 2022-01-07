; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_host_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_host_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_sw_tcp_host = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32, i8*)* @iscsi_sw_tcp_host_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_host_get_param(%struct.Scsi_Host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_sw_tcp_host*, align 8
  %9 = alloca %struct.iscsi_session*, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_tcp_conn*, align 8
  %12 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %13 = alloca %struct.sockaddr_in6, align 4
  %14 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %16 = call %struct.iscsi_sw_tcp_host* @iscsi_host_priv(%struct.Scsi_Host* %15)
  store %struct.iscsi_sw_tcp_host* %16, %struct.iscsi_sw_tcp_host** %8, align 8
  %17 = load %struct.iscsi_sw_tcp_host*, %struct.iscsi_sw_tcp_host** %8, align 8
  %18 = getelementptr inbounds %struct.iscsi_sw_tcp_host, %struct.iscsi_sw_tcp_host* %17, i32 0, i32 0
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %18, align 8
  store %struct.iscsi_session* %19, %struct.iscsi_session** %9, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %77 [
    i32 128, label %21
  ]

21:                                               ; preds = %3
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %23 = icmp ne %struct.iscsi_session* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOTCONN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %82

27:                                               ; preds = %21
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %29 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %32 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %31, i32 0, i32 1
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %32, align 8
  store %struct.iscsi_conn* %33, %struct.iscsi_conn** %10, align 8
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %35 = icmp ne %struct.iscsi_conn* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %27
  %37 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %38 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load i32, i32* @ENOTCONN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %82

42:                                               ; preds = %27
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %44 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %43, i32 0, i32 0
  %45 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %44, align 8
  store %struct.iscsi_tcp_conn* %45, %struct.iscsi_tcp_conn** %11, align 8
  %46 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  %47 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %46, i32 0, i32 0
  %48 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %47, align 8
  store %struct.iscsi_sw_tcp_conn* %48, %struct.iscsi_sw_tcp_conn** %12, align 8
  %49 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %12, align 8
  %50 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %42
  %54 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %55 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load i32, i32* @ENOTCONN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %82

59:                                               ; preds = %42
  %60 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %12, align 8
  %61 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %struct.sockaddr_in6* %13 to %struct.sockaddr*
  %64 = call i32 @kernel_getsockname(i32 %62, %struct.sockaddr* %63)
  store i32 %64, i32* %14, align 4
  %65 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %66 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_bh(i32* %66)
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %4, align 4
  br label %82

72:                                               ; preds = %59
  %73 = bitcast %struct.sockaddr_in6* %13 to %struct.sockaddr_storage*
  %74 = load i32, i32* %6, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage* %73, i32 %74, i8* %75)
  store i32 %76, i32* %4, align 4
  br label %82

77:                                               ; preds = %3
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @iscsi_host_get_param(%struct.Scsi_Host* %78, i32 %79, i8* %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %72, %70, %53, %36, %24
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.iscsi_sw_tcp_host* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kernel_getsockname(i32, %struct.sockaddr*) #1

declare dso_local i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage*, i32, i8*) #1

declare dso_local i32 @iscsi_host_get_param(%struct.Scsi_Host*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
