; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_open_socket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_open_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32, %struct.socket*, i32 }
%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_rxrpc = type { i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AF_RXRPC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@CM_SERVICE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AFS_CM_PORT = common dso_local global i32 0, align 4
@RXRPC_SECURITY_ENCRYPT = common dso_local global i32 0, align 4
@SOL_RXRPC = common dso_local global i32 0, align 4
@RXRPC_MIN_SECURITY_LEVEL = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@YFS_CM_SERVICE = common dso_local global i32 0, align 4
@afs_rx_new_call = common dso_local global i32 0, align 4
@afs_rx_discard_new_call = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_open_socket(%struct.afs_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_net*, align 8
  %4 = alloca %struct.sockaddr_rxrpc, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.afs_net* %0, %struct.afs_net** %3, align 8
  %8 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %10 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AF_RXRPC, align 4
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  %14 = load i32, i32* @PF_INET6, align 4
  %15 = call i32 @sock_create_kern(i32 %11, i32 %12, i32 %13, i32 %14, %struct.socket** %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %101

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = call i32 @memset(%struct.sockaddr_rxrpc* %4, i32 0, i32 32)
  %26 = load i32, i32* @AF_RXRPC, align 4
  %27 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %4, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @CM_SERVICE, align 4
  %29 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %4, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @SOCK_DGRAM, align 4
  %31 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %4, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %4, i32 0, i32 0
  store i32 16, i32* %32, align 8
  %33 = load i32, i32* @AF_INET6, align 4
  %34 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %4, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @AFS_CM_PORT, align 4
  %38 = call i64 @htons(i32 %37)
  %39 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %4, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load i32, i32* @RXRPC_SECURITY_ENCRYPT, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.socket*, %struct.socket** %5, align 8
  %44 = load i32, i32* @SOL_RXRPC, align 4
  %45 = load i32, i32* @RXRPC_MIN_SECURITY_LEVEL, align 4
  %46 = bitcast i32* %6 to i8*
  %47 = call i32 @kernel_setsockopt(%struct.socket* %43, i32 %44, i32 %45, i8* %46, i32 4)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %19
  br label %98

51:                                               ; preds = %19
  %52 = load %struct.socket*, %struct.socket** %5, align 8
  %53 = bitcast %struct.sockaddr_rxrpc* %4 to %struct.sockaddr*
  %54 = call i32 @kernel_bind(%struct.socket* %52, %struct.sockaddr* %53, i32 32)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @EADDRINUSE, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %4, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.socket*, %struct.socket** %5, align 8
  %64 = bitcast %struct.sockaddr_rxrpc* %4 to %struct.sockaddr*
  %65 = call i32 @kernel_bind(%struct.socket* %63, %struct.sockaddr* %64, i32 32)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %59, %51
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %98

70:                                               ; preds = %66
  %71 = load i32, i32* @YFS_CM_SERVICE, align 4
  %72 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %4, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.socket*, %struct.socket** %5, align 8
  %74 = bitcast %struct.sockaddr_rxrpc* %4 to %struct.sockaddr*
  %75 = call i32 @kernel_bind(%struct.socket* %73, %struct.sockaddr* %74, i32 32)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %98

79:                                               ; preds = %70
  %80 = load %struct.socket*, %struct.socket** %5, align 8
  %81 = load i32, i32* @afs_rx_new_call, align 4
  %82 = load i32, i32* @afs_rx_discard_new_call, align 4
  %83 = call i32 @rxrpc_kernel_new_call_notification(%struct.socket* %80, i32 %81, i32 %82)
  %84 = load %struct.socket*, %struct.socket** %5, align 8
  %85 = load i32, i32* @INT_MAX, align 4
  %86 = call i32 @kernel_listen(%struct.socket* %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %98

90:                                               ; preds = %79
  %91 = load %struct.socket*, %struct.socket** %5, align 8
  %92 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %93 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %92, i32 0, i32 1
  store %struct.socket* %91, %struct.socket** %93, align 8
  %94 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %95 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %94, i32 0, i32 0
  %96 = call i32 @afs_charge_preallocation(i32* %95)
  %97 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %105

98:                                               ; preds = %89, %78, %69, %50
  %99 = load %struct.socket*, %struct.socket** %5, align 8
  %100 = call i32 @sock_release(%struct.socket* %99)
  br label %101

101:                                              ; preds = %98, %18
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %90
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @sock_create_kern(i32, i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @memset(%struct.sockaddr_rxrpc*, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @kernel_bind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @rxrpc_kernel_new_call_notification(%struct.socket*, i32, i32) #1

declare dso_local i32 @kernel_listen(%struct.socket*, i32) #1

declare dso_local i32 @afs_charge_preallocation(i32*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
