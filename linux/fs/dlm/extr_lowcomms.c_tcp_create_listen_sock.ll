; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_tcp_create_listen_sock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_tcp_create_listen_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.socket = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, i32)* }
%struct.sockaddr = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.connection* }
%struct.connection = type { i32*, i32, i32 }
%struct.sockaddr_storage = type { i32 }

@dlm_local_addr = common dso_local global %struct.TYPE_7__** null, align 8
@AF_INET = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Can't create listening comms socket\00", align 1
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to set SO_REUSEADDR on socket: %d\00", align 1
@tcp_accept_from_sock = common dso_local global i32 0, align 4
@tcp_connect_to_sock = common dso_local global i32 0, align 4
@dlm_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't bind to port %d\00", align 1
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Set keepalive failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Can't listen on port %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.connection*, %struct.sockaddr_storage*)* @tcp_create_listen_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @tcp_create_listen_sock(%struct.connection* %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %4, align 8
  store %struct.socket* null, %struct.socket** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dlm_local_addr, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %9, i64 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %18

17:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dlm_local_addr, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %19, i64 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = load i32, i32* @IPPROTO_TCP, align 4
  %26 = call i32 @sock_create_kern(i32* @init_net, i64 %23, i32 %24, i32 %25, %struct.socket** %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %120

31:                                               ; preds = %18
  %32 = load %struct.socket*, %struct.socket** %5, align 8
  %33 = load i32, i32* @SOL_TCP, align 4
  %34 = load i32, i32* @TCP_NODELAY, align 4
  %35 = bitcast i32* %7 to i8*
  %36 = call i32 @kernel_setsockopt(%struct.socket* %32, i32 %33, i32 %34, i8* %35, i32 4)
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = load i32, i32* @SOL_SOCKET, align 4
  %39 = load i32, i32* @SO_REUSEADDR, align 4
  %40 = bitcast i32* %7 to i8*
  %41 = call i32 @kernel_setsockopt(%struct.socket* %37, i32 %38, i32 %39, i8* %40, i32 4)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %31
  %48 = load %struct.socket*, %struct.socket** %5, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @write_lock_bh(i32* %51)
  %53 = load %struct.connection*, %struct.connection** %3, align 8
  %54 = load %struct.socket*, %struct.socket** %5, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store %struct.connection* %53, %struct.connection** %57, align 8
  %58 = load %struct.socket*, %struct.socket** %5, align 8
  %59 = call i32 @save_listen_callbacks(%struct.socket* %58)
  %60 = load i32, i32* @tcp_accept_from_sock, align 4
  %61 = load %struct.connection*, %struct.connection** %3, align 8
  %62 = getelementptr inbounds %struct.connection, %struct.connection* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @tcp_connect_to_sock, align 4
  %64 = load %struct.connection*, %struct.connection** %3, align 8
  %65 = getelementptr inbounds %struct.connection, %struct.connection* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.socket*, %struct.socket** %5, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = call i32 @write_unlock_bh(i32* %69)
  %71 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlm_config, i32 0, i32 0), align 4
  %73 = call i32 @make_sockaddr(%struct.sockaddr_storage* %71, i32 %72, i32* %8)
  %74 = load %struct.socket*, %struct.socket** %5, align 8
  %75 = getelementptr inbounds %struct.socket, %struct.socket* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %77, align 8
  %79 = load %struct.socket*, %struct.socket** %5, align 8
  %80 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %81 = bitcast %struct.sockaddr_storage* %80 to %struct.sockaddr*
  %82 = load i32, i32* %8, align 4
  %83 = call i32 %78(%struct.socket* %79, %struct.sockaddr* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %47
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlm_config, i32 0, i32 0), align 4
  %88 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.socket*, %struct.socket** %5, align 8
  %90 = call i32 @sock_release(%struct.socket* %89)
  store %struct.socket* null, %struct.socket** %5, align 8
  %91 = load %struct.connection*, %struct.connection** %3, align 8
  %92 = getelementptr inbounds %struct.connection, %struct.connection* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %120

93:                                               ; preds = %47
  %94 = load %struct.socket*, %struct.socket** %5, align 8
  %95 = load i32, i32* @SOL_SOCKET, align 4
  %96 = load i32, i32* @SO_KEEPALIVE, align 4
  %97 = bitcast i32* %7 to i8*
  %98 = call i32 @kernel_setsockopt(%struct.socket* %94, i32 %95, i32 %96, i8* %97, i32 4)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %101, %93
  %105 = load %struct.socket*, %struct.socket** %5, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %108, align 8
  %110 = load %struct.socket*, %struct.socket** %5, align 8
  %111 = call i32 %109(%struct.socket* %110, i32 5)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlm_config, i32 0, i32 0), align 4
  %116 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load %struct.socket*, %struct.socket** %5, align 8
  %118 = call i32 @sock_release(%struct.socket* %117)
  store %struct.socket* null, %struct.socket** %5, align 8
  br label %120

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %114, %86, %29
  %121 = load %struct.socket*, %struct.socket** %5, align 8
  ret %struct.socket* %121
}

declare dso_local i32 @sock_create_kern(i32*, i64, i32, i32, %struct.socket**) #1

declare dso_local i32 @log_print(i8*, ...) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @save_listen_callbacks(%struct.socket*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @make_sockaddr(%struct.sockaddr_storage*, i32, i32*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
