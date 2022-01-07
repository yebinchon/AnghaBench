; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_2__*, %struct.iscsi_tcp_conn* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_conn*, i32, i8*)* @iscsi_sw_tcp_conn_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_conn_get_param(%struct.iscsi_cls_conn* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cls_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.iscsi_tcp_conn*, align 8
  %10 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %11 = alloca %struct.sockaddr_in6, align 4
  %12 = alloca i32, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %13, i32 0, i32 0
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %8, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 1
  %18 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %17, align 8
  store %struct.iscsi_tcp_conn* %18, %struct.iscsi_tcp_conn** %9, align 8
  %19 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %20 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %19, i32 0, i32 0
  %21 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %20, align 8
  store %struct.iscsi_sw_tcp_conn* %21, %struct.iscsi_sw_tcp_conn** %10, align 8
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %74 [
    i32 129, label %23
    i32 130, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %3, %3, %3
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %10, align 8
  %30 = icmp ne %struct.iscsi_sw_tcp_conn* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %10, align 8
  %33 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31, %23
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %38 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load i32, i32* @ENOTCONN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %79

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %10, align 8
  %49 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = bitcast %struct.sockaddr_in6* %11 to %struct.sockaddr*
  %52 = call i32 @kernel_getsockname(i32 %50, %struct.sockaddr* %51)
  store i32 %52, i32* %12, align 4
  br label %59

53:                                               ; preds = %44
  %54 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %10, align 8
  %55 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %struct.sockaddr_in6* %11 to %struct.sockaddr*
  %58 = call i32 @kernel_getpeername(i32 %56, %struct.sockaddr* %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %61 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock_bh(i32* %63)
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %79

69:                                               ; preds = %59
  %70 = bitcast %struct.sockaddr_in6* %11 to %struct.sockaddr_storage*
  %71 = load i32, i32* %6, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage* %70, i32 %71, i8* %72)
  store i32 %73, i32* %4, align 4
  br label %79

74:                                               ; preds = %3
  %75 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @iscsi_conn_get_param(%struct.iscsi_cls_conn* %75, i32 %76, i8* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %69, %67, %36
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kernel_getsockname(i32, %struct.sockaddr*) #1

declare dso_local i32 @kernel_getpeername(i32, %struct.sockaddr*) #1

declare dso_local i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage*, i32, i8*) #1

declare dso_local i32 @iscsi_conn_get_param(%struct.iscsi_cls_conn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
