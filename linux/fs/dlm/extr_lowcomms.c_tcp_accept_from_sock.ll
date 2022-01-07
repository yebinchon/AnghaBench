; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_tcp_accept_from_sock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_tcp_accept_from_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i8*, %struct.connection*, i64, i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }

@connections_lock = common dso_local global i32 0, align 4
@dlm_allow_conn = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"connect from non cluster node\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ss: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"got connection from %d\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@con_cache = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to allocate incoming socket\00", align 1
@receive_from_sock = common dso_local global i8* null, align 8
@process_send_sockets = common dso_local global i32 0, align 4
@process_recv_sockets = common dso_local global i32 0, align 4
@CF_IS_OTHERCON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Extra connection from node %d attempted\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CF_READ_PENDING = common dso_local global i32 0, align 4
@recv_workqueue = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"error accepting connection from node: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @tcp_accept_from_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_accept_from_sock(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca %struct.connection*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %13 = call i32 @mutex_lock(i32* @connections_lock)
  %14 = load i32, i32* @dlm_allow_conn, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @mutex_unlock(i32* @connections_lock)
  store i32 -1, i32* %2, align 4
  br label %214

18:                                               ; preds = %1
  %19 = call i32 @mutex_unlock(i32* @connections_lock)
  %20 = load %struct.connection*, %struct.connection** %3, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock_nested(i32* %21, i32 0)
  %23 = load %struct.connection*, %struct.connection** %3, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load %struct.connection*, %struct.connection** %3, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* @ENOTCONN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %214

33:                                               ; preds = %18
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @O_NONBLOCK, align 4
  %38 = call i32 @kernel_accept(i64 %36, %struct.socket** %6, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %195

42:                                               ; preds = %33
  %43 = call i32 @memset(%struct.sockaddr_storage* %5, i32 0, i32 4)
  %44 = load %struct.socket*, %struct.socket** %6, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %47, align 8
  %49 = load %struct.socket*, %struct.socket** %6, align 8
  %50 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %51 = call i32 %48(%struct.socket* %49, %struct.sockaddr* %50, i32 2)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @ECONNABORTED, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %195

57:                                               ; preds = %42
  %58 = call i32 @make_sockaddr(%struct.sockaddr_storage* %5, i32 0, i32* %7)
  %59 = call i64 @addr_to_nodeid(%struct.sockaddr_storage* %5, i32* %8)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = bitcast %struct.sockaddr_storage* %5 to i8*
  store i8* %62, i8** %11, align 8
  %63 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %65, i32 4)
  %67 = load %struct.socket*, %struct.socket** %6, align 8
  %68 = call i32 @sock_release(%struct.socket* %67)
  %69 = load %struct.connection*, %struct.connection** %3, align 8
  %70 = getelementptr inbounds %struct.connection, %struct.connection* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  store i32 -1, i32* %2, align 4
  br label %214

72:                                               ; preds = %57
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @GFP_NOFS, align 4
  %77 = call %struct.connection* @nodeid2con(i32 %75, i32 %76)
  store %struct.connection* %77, %struct.connection** %9, align 8
  %78 = load %struct.connection*, %struct.connection** %9, align 8
  %79 = icmp ne %struct.connection* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %195

83:                                               ; preds = %72
  %84 = load %struct.connection*, %struct.connection** %9, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 1
  %86 = call i32 @mutex_lock_nested(i32* %85, i32 1)
  %87 = load %struct.connection*, %struct.connection** %9, align 8
  %88 = getelementptr inbounds %struct.connection, %struct.connection* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %169

91:                                               ; preds = %83
  %92 = load %struct.connection*, %struct.connection** %9, align 8
  %93 = getelementptr inbounds %struct.connection, %struct.connection* %92, i32 0, i32 5
  %94 = load %struct.connection*, %struct.connection** %93, align 8
  store %struct.connection* %94, %struct.connection** %12, align 8
  %95 = load %struct.connection*, %struct.connection** %12, align 8
  %96 = icmp ne %struct.connection* %95, null
  br i1 %96, label %138, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @con_cache, align 4
  %99 = load i32, i32* @GFP_NOFS, align 4
  %100 = call %struct.connection* @kmem_cache_zalloc(i32 %98, i32 %99)
  store %struct.connection* %100, %struct.connection** %12, align 8
  %101 = load %struct.connection*, %struct.connection** %12, align 8
  %102 = icmp ne %struct.connection* %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %97
  %104 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.connection*, %struct.connection** %9, align 8
  %106 = getelementptr inbounds %struct.connection, %struct.connection* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %195

110:                                              ; preds = %97
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.connection*, %struct.connection** %12, align 8
  %113 = getelementptr inbounds %struct.connection, %struct.connection* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i8*, i8** @receive_from_sock, align 8
  %115 = load %struct.connection*, %struct.connection** %12, align 8
  %116 = getelementptr inbounds %struct.connection, %struct.connection* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load %struct.connection*, %struct.connection** %12, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 1
  %119 = call i32 @mutex_init(i32* %118)
  %120 = load %struct.connection*, %struct.connection** %12, align 8
  %121 = getelementptr inbounds %struct.connection, %struct.connection* %120, i32 0, i32 9
  %122 = call i32 @INIT_LIST_HEAD(i32* %121)
  %123 = load %struct.connection*, %struct.connection** %12, align 8
  %124 = getelementptr inbounds %struct.connection, %struct.connection* %123, i32 0, i32 8
  %125 = call i32 @spin_lock_init(i32* %124)
  %126 = load %struct.connection*, %struct.connection** %12, align 8
  %127 = getelementptr inbounds %struct.connection, %struct.connection* %126, i32 0, i32 7
  %128 = load i32, i32* @process_send_sockets, align 4
  %129 = call i32 @INIT_WORK(i32* %127, i32 %128)
  %130 = load %struct.connection*, %struct.connection** %12, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 2
  %132 = load i32, i32* @process_recv_sockets, align 4
  %133 = call i32 @INIT_WORK(i32* %131, i32 %132)
  %134 = load i32, i32* @CF_IS_OTHERCON, align 4
  %135 = load %struct.connection*, %struct.connection** %12, align 8
  %136 = getelementptr inbounds %struct.connection, %struct.connection* %135, i32 0, i32 3
  %137 = call i32 @set_bit(i32 %134, i32* %136)
  br label %138

138:                                              ; preds = %110, %91
  %139 = load %struct.connection*, %struct.connection** %12, align 8
  %140 = getelementptr inbounds %struct.connection, %struct.connection* %139, i32 0, i32 1
  %141 = call i32 @mutex_lock_nested(i32* %140, i32 2)
  %142 = load %struct.connection*, %struct.connection** %12, align 8
  %143 = getelementptr inbounds %struct.connection, %struct.connection* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %157, label %146

146:                                              ; preds = %138
  %147 = load %struct.connection*, %struct.connection** %12, align 8
  %148 = load %struct.connection*, %struct.connection** %9, align 8
  %149 = getelementptr inbounds %struct.connection, %struct.connection* %148, i32 0, i32 5
  store %struct.connection* %147, %struct.connection** %149, align 8
  %150 = load %struct.socket*, %struct.socket** %6, align 8
  %151 = load %struct.connection*, %struct.connection** %12, align 8
  %152 = call i32 @add_sock(%struct.socket* %150, %struct.connection* %151)
  %153 = load %struct.connection*, %struct.connection** %12, align 8
  store %struct.connection* %153, %struct.connection** %10, align 8
  %154 = load %struct.connection*, %struct.connection** %12, align 8
  %155 = getelementptr inbounds %struct.connection, %struct.connection* %154, i32 0, i32 1
  %156 = call i32 @mutex_unlock(i32* %155)
  br label %168

157:                                              ; preds = %138
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @EAGAIN, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  %162 = load %struct.connection*, %struct.connection** %12, align 8
  %163 = getelementptr inbounds %struct.connection, %struct.connection* %162, i32 0, i32 1
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load %struct.connection*, %struct.connection** %9, align 8
  %166 = getelementptr inbounds %struct.connection, %struct.connection* %165, i32 0, i32 1
  %167 = call i32 @mutex_unlock(i32* %166)
  br label %195

168:                                              ; preds = %146
  br label %177

169:                                              ; preds = %83
  %170 = load i8*, i8** @receive_from_sock, align 8
  %171 = load %struct.connection*, %struct.connection** %9, align 8
  %172 = getelementptr inbounds %struct.connection, %struct.connection* %171, i32 0, i32 4
  store i8* %170, i8** %172, align 8
  %173 = load %struct.socket*, %struct.socket** %6, align 8
  %174 = load %struct.connection*, %struct.connection** %9, align 8
  %175 = call i32 @add_sock(%struct.socket* %173, %struct.connection* %174)
  %176 = load %struct.connection*, %struct.connection** %9, align 8
  store %struct.connection* %176, %struct.connection** %10, align 8
  br label %177

177:                                              ; preds = %169, %168
  %178 = load %struct.connection*, %struct.connection** %9, align 8
  %179 = getelementptr inbounds %struct.connection, %struct.connection* %178, i32 0, i32 1
  %180 = call i32 @mutex_unlock(i32* %179)
  %181 = load i32, i32* @CF_READ_PENDING, align 4
  %182 = load %struct.connection*, %struct.connection** %10, align 8
  %183 = getelementptr inbounds %struct.connection, %struct.connection* %182, i32 0, i32 3
  %184 = call i32 @test_and_set_bit(i32 %181, i32* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %177
  %187 = load i32, i32* @recv_workqueue, align 4
  %188 = load %struct.connection*, %struct.connection** %10, align 8
  %189 = getelementptr inbounds %struct.connection, %struct.connection* %188, i32 0, i32 2
  %190 = call i32 @queue_work(i32 %187, i32* %189)
  br label %191

191:                                              ; preds = %186, %177
  %192 = load %struct.connection*, %struct.connection** %3, align 8
  %193 = getelementptr inbounds %struct.connection, %struct.connection* %192, i32 0, i32 1
  %194 = call i32 @mutex_unlock(i32* %193)
  store i32 0, i32* %2, align 4
  br label %214

195:                                              ; preds = %157, %103, %80, %54, %41
  %196 = load %struct.connection*, %struct.connection** %3, align 8
  %197 = getelementptr inbounds %struct.connection, %struct.connection* %196, i32 0, i32 1
  %198 = call i32 @mutex_unlock(i32* %197)
  %199 = load %struct.socket*, %struct.socket** %6, align 8
  %200 = icmp ne %struct.socket* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.socket*, %struct.socket** %6, align 8
  %203 = call i32 @sock_release(%struct.socket* %202)
  br label %204

204:                                              ; preds = %201, %195
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @EAGAIN, align 4
  %207 = sub nsw i32 0, %206
  %208 = icmp ne i32 %205, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i32, i32* %4, align 4
  %211 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %209, %204
  %213 = load i32, i32* %4, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %212, %191, %61, %27, %16
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @kernel_accept(i64, %struct.socket**, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @make_sockaddr(%struct.sockaddr_storage*, i32, i32*) #1

declare dso_local i64 @addr_to_nodeid(%struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @log_print(i8*, ...) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local %struct.connection* @nodeid2con(i32, i32) #1

declare dso_local %struct.connection* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @add_sock(%struct.socket*, %struct.connection*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
