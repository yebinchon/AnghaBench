; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_sctp_connect_to_sock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_sctp_connect_to_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.connection = type { i64, {}*, i32, i32, i32*, i32 }
%struct.sockaddr_storage = type { i32, i32 }
%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* }
%struct.sockaddr = type { i32 }

@__const.sctp_connect_to_sock.tv = private unnamed_addr constant %struct.timeval { i32 5, i32 0 }, align 4
@.str = private unnamed_addr constant [33 x i8] c"attempt to connect sock 0 foiled\00", align 1
@MAX_CONNECT_RETRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"node %d already connected.\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"no address for nodeid %d\00", align 1
@init_net = common dso_local global i32 0, align 4
@dlm_local_addr = common dso_local global %struct.TYPE_5__** null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@receive_from_sock = common dso_local global i32 0, align 4
@dlm_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"connecting to %d\00", align 1
@SOL_SCTP = common dso_local global i32 0, align 4
@SCTP_NODELAY = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDTIMEO_OLD = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"connect %d try %d error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*)* @sctp_connect_to_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_connect_to_sock(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.sockaddr_storage, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.timeval, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  store i32 1, i32* %4, align 4
  %9 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.timeval* @__const.sctp_connect_to_sock.tv to i8*), i64 8, i1 false)
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %172

16:                                               ; preds = %1
  %17 = load %struct.connection*, %struct.connection** %2, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.connection*, %struct.connection** %2, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = sext i32 %22 to i64
  %25 = load i64, i64* @MAX_CONNECT_RETRIES, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %168

28:                                               ; preds = %16
  %29 = load %struct.connection*, %struct.connection** %2, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.connection*, %struct.connection** %2, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %168

38:                                               ; preds = %28
  %39 = bitcast %struct.sockaddr_storage* %3 to %struct.timeval*
  %40 = call i32 @memset(%struct.timeval* %39, i32 0, i32 8)
  %41 = load %struct.connection*, %struct.connection** %2, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = bitcast %struct.sockaddr_storage* %3 to %struct.timeval*
  %45 = call i32 @nodeid_to_addr(i64 %43, %struct.timeval* %44, i32* null, i32 1)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.connection*, %struct.connection** %2, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  br label %168

53:                                               ; preds = %38
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @dlm_local_addr, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SOCK_STREAM, align 4
  %60 = load i32, i32* @IPPROTO_SCTP, align 4
  %61 = call i32 @sock_create_kern(i32* @init_net, i32 %58, i32 %59, i32 %60, %struct.socket** %7)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %127

65:                                               ; preds = %53
  %66 = load i32, i32* @receive_from_sock, align 4
  %67 = load %struct.connection*, %struct.connection** %2, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.connection*, %struct.connection** %2, align 8
  %70 = getelementptr inbounds %struct.connection, %struct.connection* %69, i32 0, i32 1
  %71 = bitcast {}** %70 to void (%struct.connection*)**
  store void (%struct.connection*)* @sctp_connect_to_sock, void (%struct.connection*)** %71, align 8
  %72 = load %struct.socket*, %struct.socket** %7, align 8
  %73 = load %struct.connection*, %struct.connection** %2, align 8
  %74 = call i32 @add_sock(%struct.socket* %72, %struct.connection* %73)
  %75 = load %struct.connection*, %struct.connection** %2, align 8
  %76 = call i64 @sctp_bind_addrs(%struct.connection* %75, i32 0)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %122

79:                                               ; preds = %65
  %80 = bitcast %struct.sockaddr_storage* %3 to %struct.timeval*
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlm_config, i32 0, i32 0), align 4
  %82 = call i32 @make_sockaddr(%struct.timeval* %80, i32 %81, i32* %6)
  %83 = load %struct.connection*, %struct.connection** %2, align 8
  %84 = getelementptr inbounds %struct.connection, %struct.connection* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  %87 = load %struct.socket*, %struct.socket** %7, align 8
  %88 = load i32, i32* @SOL_SCTP, align 4
  %89 = load i32, i32* @SCTP_NODELAY, align 4
  %90 = bitcast i32* %4 to i8*
  %91 = call i32 @kernel_setsockopt(%struct.socket* %87, i32 %88, i32 %89, i8* %90, i32 4)
  %92 = load %struct.socket*, %struct.socket** %7, align 8
  %93 = load i32, i32* @SOL_SOCKET, align 4
  %94 = load i32, i32* @SO_SNDTIMEO_OLD, align 4
  %95 = bitcast %struct.timeval* %8 to i8*
  %96 = call i32 @kernel_setsockopt(%struct.socket* %92, i32 %93, i32 %94, i8* %95, i32 8)
  %97 = load %struct.socket*, %struct.socket** %7, align 8
  %98 = getelementptr inbounds %struct.socket, %struct.socket* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)** %100, align 8
  %102 = load %struct.socket*, %struct.socket** %7, align 8
  %103 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr*
  %104 = load i32, i32* %6, align 4
  %105 = call i32 %101(%struct.socket* %102, %struct.sockaddr* %103, i32 %104, i32 0)
  store i32 %105, i32* %5, align 4
  %106 = call i32 @memset(%struct.timeval* %8, i32 0, i32 8)
  %107 = load %struct.socket*, %struct.socket** %7, align 8
  %108 = load i32, i32* @SOL_SOCKET, align 4
  %109 = load i32, i32* @SO_SNDTIMEO_OLD, align 4
  %110 = bitcast %struct.timeval* %8 to i8*
  %111 = call i32 @kernel_setsockopt(%struct.socket* %107, i32 %108, i32 %109, i8* %110, i32 8)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @EINPROGRESS, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %79
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %79
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %168

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121, %78
  %123 = load %struct.connection*, %struct.connection** %2, align 8
  %124 = getelementptr inbounds %struct.connection, %struct.connection* %123, i32 0, i32 4
  store i32* null, i32** %124, align 8
  %125 = load %struct.socket*, %struct.socket** %7, align 8
  %126 = call i32 @sock_release(%struct.socket* %125)
  br label %127

127:                                              ; preds = %122, %64
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @EHOSTUNREACH, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %167

132:                                              ; preds = %127
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @ENETUNREACH, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %167

137:                                              ; preds = %132
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @ENETDOWN, align 4
  %140 = sub nsw i32 0, %139
  %141 = icmp ne i32 %138, %140
  br i1 %141, label %142, label %167

142:                                              ; preds = %137
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %167

147:                                              ; preds = %142
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @EPROTONOSUPPORT, align 4
  %150 = sub nsw i32 0, %149
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %147
  %153 = load %struct.connection*, %struct.connection** %2, align 8
  %154 = getelementptr inbounds %struct.connection, %struct.connection* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.connection*, %struct.connection** %2, align 8
  %157 = getelementptr inbounds %struct.connection, %struct.connection* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %155, i32 %158, i32 %159)
  %161 = load %struct.connection*, %struct.connection** %2, align 8
  %162 = getelementptr inbounds %struct.connection, %struct.connection* %161, i32 0, i32 2
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = call i32 @msleep(i32 1000)
  %165 = load %struct.connection*, %struct.connection** %2, align 8
  %166 = call i32 @lowcomms_connect_sock(%struct.connection* %165)
  br label %172

167:                                              ; preds = %147, %142, %137, %132, %127
  br label %168

168:                                              ; preds = %167, %120, %48, %33, %27
  %169 = load %struct.connection*, %struct.connection** %2, align 8
  %170 = getelementptr inbounds %struct.connection, %struct.connection* %169, i32 0, i32 2
  %171 = call i32 @mutex_unlock(i32* %170)
  br label %172

172:                                              ; preds = %168, %152, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @log_print(i8*, ...) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #2

declare dso_local i32 @nodeid_to_addr(i64, %struct.timeval*, i32*, i32) #2

declare dso_local i32 @sock_create_kern(i32*, i32, i32, i32, %struct.socket**) #2

declare dso_local i32 @add_sock(%struct.socket*, %struct.connection*) #2

declare dso_local i64 @sctp_bind_addrs(%struct.connection*, i32) #2

declare dso_local i32 @make_sockaddr(%struct.timeval*, i32, i32*) #2

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #2

declare dso_local i32 @sock_release(%struct.socket*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @lowcomms_connect_sock(%struct.connection*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
