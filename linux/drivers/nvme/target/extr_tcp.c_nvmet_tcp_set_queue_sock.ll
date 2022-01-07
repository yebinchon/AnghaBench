; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_set_queue_sock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_set_queue_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linger = type { i32, i32 }
%struct.nvmet_tcp_queue = type { i32, i32, i32, i32, i32, %struct.socket* }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.nvmet_tcp_queue* }
%struct.inet_sock = type { i32 }
%struct.sockaddr = type { i32 }

@__const.nvmet_tcp_set_queue_sock.sol = private unnamed_addr constant %struct.linger { i32 1, i32 0 }, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@IP_TOS = common dso_local global i32 0, align 4
@nvmet_tcp_data_ready = common dso_local global i32 0, align 4
@nvmet_tcp_state_change = common dso_local global i32 0, align 4
@nvmet_tcp_write_space = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*)* @nvmet_tcp_set_queue_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_set_queue_sock(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.inet_sock*, align 8
  %6 = alloca %struct.linger, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %3, align 8
  %9 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %10 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %9, i32 0, i32 5
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %4, align 8
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call %struct.inet_sock* @inet_sk(%struct.TYPE_2__* %14)
  store %struct.inet_sock* %15, %struct.inet_sock** %5, align 8
  %16 = bitcast %struct.linger* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.linger* @__const.nvmet_tcp_set_queue_sock.sol to i8*), i64 8, i1 false)
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %19 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %18, i32 0, i32 4
  %20 = bitcast i32* %19 to %struct.sockaddr*
  %21 = call i32 @kernel_getsockname(%struct.socket* %17, %struct.sockaddr* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %117

26:                                               ; preds = %1
  %27 = load %struct.socket*, %struct.socket** %4, align 8
  %28 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %29 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %28, i32 0, i32 3
  %30 = bitcast i32* %29 to %struct.sockaddr*
  %31 = call i32 @kernel_getpeername(%struct.socket* %27, %struct.sockaddr* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %117

36:                                               ; preds = %26
  %37 = load %struct.socket*, %struct.socket** %4, align 8
  %38 = load i32, i32* @SOL_SOCKET, align 4
  %39 = load i32, i32* @SO_LINGER, align 4
  %40 = bitcast %struct.linger* %6 to i8*
  %41 = call i32 @kernel_setsockopt(%struct.socket* %37, i32 %38, i32 %39, i8* %40, i32 8)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %117

46:                                               ; preds = %36
  %47 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %48 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %53 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load %struct.socket*, %struct.socket** %4, align 8
  %56 = load i32, i32* @SOL_IP, align 4
  %57 = load i32, i32* @IP_TOS, align 4
  %58 = bitcast i32* %8 to i8*
  %59 = call i32 @kernel_setsockopt(%struct.socket* %55, i32 %56, i32 %57, i8* %58, i32 4)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %117

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %46
  %66 = load %struct.socket*, %struct.socket** %4, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @write_lock_bh(i32* %69)
  %71 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %72 = load %struct.socket*, %struct.socket** %4, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  store %struct.nvmet_tcp_queue* %71, %struct.nvmet_tcp_queue** %75, align 8
  %76 = load %struct.socket*, %struct.socket** %4, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %82 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @nvmet_tcp_data_ready, align 4
  %84 = load %struct.socket*, %struct.socket** %4, align 8
  %85 = getelementptr inbounds %struct.socket, %struct.socket* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i32 %83, i32* %87, align 4
  %88 = load %struct.socket*, %struct.socket** %4, align 8
  %89 = getelementptr inbounds %struct.socket, %struct.socket* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %94 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @nvmet_tcp_state_change, align 4
  %96 = load %struct.socket*, %struct.socket** %4, align 8
  %97 = getelementptr inbounds %struct.socket, %struct.socket* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 8
  %100 = load %struct.socket*, %struct.socket** %4, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %106 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @nvmet_tcp_write_space, align 4
  %108 = load %struct.socket*, %struct.socket** %4, align 8
  %109 = getelementptr inbounds %struct.socket, %struct.socket* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32 %107, i32* %111, align 4
  %112 = load %struct.socket*, %struct.socket** %4, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @write_unlock_bh(i32* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %65, %62, %44, %34, %24
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.TYPE_2__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kernel_getsockname(%struct.socket*, %struct.sockaddr*) #1

declare dso_local i32 @kernel_getpeername(%struct.socket*, %struct.sockaddr*) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
