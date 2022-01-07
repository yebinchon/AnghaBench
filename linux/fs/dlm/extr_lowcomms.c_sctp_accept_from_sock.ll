; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_sctp_accept_from_sock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_sctp_accept_from_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i8*, %struct.connection*, i64, i32, i32, i32 }
%struct.sctp_prim = type { i32 }
%struct.socket = type { i32 }

@connections_lock = common dso_local global i32 0, align 4
@dlm_allow_conn = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_PRIMARY_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"getsockopt/sctp_primary_addr failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"reject connect from unknown addr\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ss: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
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
@.str.5 = private unnamed_addr constant [16 x i8] c"connected to %d\00", align 1
@CF_READ_PENDING = common dso_local global i32 0, align 4
@recv_workqueue = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"error accepting connection from node: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @sctp_accept_from_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_accept_from_sock(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.sctp_prim, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca %struct.connection*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %14 = call i32 @mutex_lock(i32* @connections_lock)
  %15 = load i32, i32* @dlm_allow_conn, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 @mutex_unlock(i32* @connections_lock)
  store i32 -1, i32* %2, align 4
  br label %200

19:                                               ; preds = %1
  %20 = call i32 @mutex_unlock(i32* @connections_lock)
  %21 = load %struct.connection*, %struct.connection** %3, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock_nested(i32* %22, i32 0)
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @O_NONBLOCK, align 4
  %28 = call i32 @kernel_accept(i64 %26, %struct.socket** %11, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %181

32:                                               ; preds = %19
  %33 = call i32 @memset(%struct.sctp_prim* %4, i32 0, i32 4)
  store i32 4, i32* %6, align 4
  %34 = load %struct.socket*, %struct.socket** %11, align 8
  %35 = load i32, i32* @IPPROTO_SCTP, align 4
  %36 = load i32, i32* @SCTP_PRIMARY_ADDR, align 4
  %37 = bitcast %struct.sctp_prim* %4 to i8*
  %38 = call i32 @kernel_getsockopt(%struct.socket* %34, i32 %35, i32 %36, i8* %37, i32* %6)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %181

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.sctp_prim, %struct.sctp_prim* %4, i32 0, i32 0
  %46 = call i32 @make_sockaddr(i32* %45, i32 0, i32* %8)
  %47 = getelementptr inbounds %struct.sctp_prim, %struct.sctp_prim* %4, i32 0, i32 0
  %48 = call i32 @addr_to_nodeid(i32* %47, i32* %5)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.sctp_prim, %struct.sctp_prim* %4, i32 0, i32 0
  %53 = bitcast i32* %52 to i8*
  store i8* %53, i8** %12, align 8
  %54 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %55, i8* %56, i32 4)
  br label %181

58:                                               ; preds = %44
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @GFP_NOFS, align 4
  %61 = call %struct.connection* @nodeid2con(i32 %59, i32 %60)
  store %struct.connection* %61, %struct.connection** %9, align 8
  %62 = load %struct.connection*, %struct.connection** %9, align 8
  %63 = icmp ne %struct.connection* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %181

67:                                               ; preds = %58
  %68 = load %struct.connection*, %struct.connection** %9, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 1
  %70 = call i32 @mutex_lock_nested(i32* %69, i32 1)
  %71 = load %struct.connection*, %struct.connection** %9, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %153

75:                                               ; preds = %67
  %76 = load %struct.connection*, %struct.connection** %9, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 5
  %78 = load %struct.connection*, %struct.connection** %77, align 8
  store %struct.connection* %78, %struct.connection** %13, align 8
  %79 = load %struct.connection*, %struct.connection** %13, align 8
  %80 = icmp ne %struct.connection* %79, null
  br i1 %80, label %122, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @con_cache, align 4
  %83 = load i32, i32* @GFP_NOFS, align 4
  %84 = call %struct.connection* @kmem_cache_zalloc(i32 %82, i32 %83)
  store %struct.connection* %84, %struct.connection** %13, align 8
  %85 = load %struct.connection*, %struct.connection** %13, align 8
  %86 = icmp ne %struct.connection* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %81
  %88 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.connection*, %struct.connection** %9, align 8
  %90 = getelementptr inbounds %struct.connection, %struct.connection* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %181

94:                                               ; preds = %81
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.connection*, %struct.connection** %13, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i8*, i8** @receive_from_sock, align 8
  %99 = load %struct.connection*, %struct.connection** %13, align 8
  %100 = getelementptr inbounds %struct.connection, %struct.connection* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load %struct.connection*, %struct.connection** %13, align 8
  %102 = getelementptr inbounds %struct.connection, %struct.connection* %101, i32 0, i32 1
  %103 = call i32 @mutex_init(i32* %102)
  %104 = load %struct.connection*, %struct.connection** %13, align 8
  %105 = getelementptr inbounds %struct.connection, %struct.connection* %104, i32 0, i32 9
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.connection*, %struct.connection** %13, align 8
  %108 = getelementptr inbounds %struct.connection, %struct.connection* %107, i32 0, i32 8
  %109 = call i32 @spin_lock_init(i32* %108)
  %110 = load %struct.connection*, %struct.connection** %13, align 8
  %111 = getelementptr inbounds %struct.connection, %struct.connection* %110, i32 0, i32 7
  %112 = load i32, i32* @process_send_sockets, align 4
  %113 = call i32 @INIT_WORK(i32* %111, i32 %112)
  %114 = load %struct.connection*, %struct.connection** %13, align 8
  %115 = getelementptr inbounds %struct.connection, %struct.connection* %114, i32 0, i32 2
  %116 = load i32, i32* @process_recv_sockets, align 4
  %117 = call i32 @INIT_WORK(i32* %115, i32 %116)
  %118 = load i32, i32* @CF_IS_OTHERCON, align 4
  %119 = load %struct.connection*, %struct.connection** %13, align 8
  %120 = getelementptr inbounds %struct.connection, %struct.connection* %119, i32 0, i32 3
  %121 = call i32 @set_bit(i32 %118, i32* %120)
  br label %122

122:                                              ; preds = %94, %75
  %123 = load %struct.connection*, %struct.connection** %13, align 8
  %124 = getelementptr inbounds %struct.connection, %struct.connection* %123, i32 0, i32 1
  %125 = call i32 @mutex_lock_nested(i32* %124, i32 2)
  %126 = load %struct.connection*, %struct.connection** %13, align 8
  %127 = getelementptr inbounds %struct.connection, %struct.connection* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %122
  %131 = load %struct.connection*, %struct.connection** %13, align 8
  %132 = load %struct.connection*, %struct.connection** %9, align 8
  %133 = getelementptr inbounds %struct.connection, %struct.connection* %132, i32 0, i32 5
  store %struct.connection* %131, %struct.connection** %133, align 8
  %134 = load %struct.socket*, %struct.socket** %11, align 8
  %135 = load %struct.connection*, %struct.connection** %13, align 8
  %136 = call i32 @add_sock(%struct.socket* %134, %struct.connection* %135)
  %137 = load %struct.connection*, %struct.connection** %13, align 8
  store %struct.connection* %137, %struct.connection** %10, align 8
  %138 = load %struct.connection*, %struct.connection** %13, align 8
  %139 = getelementptr inbounds %struct.connection, %struct.connection* %138, i32 0, i32 1
  %140 = call i32 @mutex_unlock(i32* %139)
  br label %152

141:                                              ; preds = %122
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @EAGAIN, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %7, align 4
  %146 = load %struct.connection*, %struct.connection** %13, align 8
  %147 = getelementptr inbounds %struct.connection, %struct.connection* %146, i32 0, i32 1
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load %struct.connection*, %struct.connection** %9, align 8
  %150 = getelementptr inbounds %struct.connection, %struct.connection* %149, i32 0, i32 1
  %151 = call i32 @mutex_unlock(i32* %150)
  br label %181

152:                                              ; preds = %130
  br label %161

153:                                              ; preds = %67
  %154 = load i8*, i8** @receive_from_sock, align 8
  %155 = load %struct.connection*, %struct.connection** %9, align 8
  %156 = getelementptr inbounds %struct.connection, %struct.connection* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load %struct.socket*, %struct.socket** %11, align 8
  %158 = load %struct.connection*, %struct.connection** %9, align 8
  %159 = call i32 @add_sock(%struct.socket* %157, %struct.connection* %158)
  %160 = load %struct.connection*, %struct.connection** %9, align 8
  store %struct.connection* %160, %struct.connection** %10, align 8
  br label %161

161:                                              ; preds = %153, %152
  %162 = load i32, i32* %5, align 4
  %163 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  %164 = load %struct.connection*, %struct.connection** %9, align 8
  %165 = getelementptr inbounds %struct.connection, %struct.connection* %164, i32 0, i32 1
  %166 = call i32 @mutex_unlock(i32* %165)
  %167 = load i32, i32* @CF_READ_PENDING, align 4
  %168 = load %struct.connection*, %struct.connection** %10, align 8
  %169 = getelementptr inbounds %struct.connection, %struct.connection* %168, i32 0, i32 3
  %170 = call i32 @test_and_set_bit(i32 %167, i32* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %161
  %173 = load i32, i32* @recv_workqueue, align 4
  %174 = load %struct.connection*, %struct.connection** %10, align 8
  %175 = getelementptr inbounds %struct.connection, %struct.connection* %174, i32 0, i32 2
  %176 = call i32 @queue_work(i32 %173, i32* %175)
  br label %177

177:                                              ; preds = %172, %161
  %178 = load %struct.connection*, %struct.connection** %3, align 8
  %179 = getelementptr inbounds %struct.connection, %struct.connection* %178, i32 0, i32 1
  %180 = call i32 @mutex_unlock(i32* %179)
  store i32 0, i32* %2, align 4
  br label %200

181:                                              ; preds = %141, %87, %64, %51, %41, %31
  %182 = load %struct.connection*, %struct.connection** %3, align 8
  %183 = getelementptr inbounds %struct.connection, %struct.connection* %182, i32 0, i32 1
  %184 = call i32 @mutex_unlock(i32* %183)
  %185 = load %struct.socket*, %struct.socket** %11, align 8
  %186 = icmp ne %struct.socket* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load %struct.socket*, %struct.socket** %11, align 8
  %189 = call i32 @sock_release(%struct.socket* %188)
  br label %190

190:                                              ; preds = %187, %181
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @EAGAIN, align 4
  %193 = sub nsw i32 0, %192
  %194 = icmp ne i32 %191, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32, i32* %7, align 4
  %197 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %198, %177, %17
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @kernel_accept(i64, %struct.socket**, i32) #1

declare dso_local i32 @memset(%struct.sctp_prim*, i32, i32) #1

declare dso_local i32 @kernel_getsockopt(%struct.socket*, i32, i32, i8*, i32*) #1

declare dso_local i32 @log_print(i8*, ...) #1

declare dso_local i32 @make_sockaddr(i32*, i32, i32*) #1

declare dso_local i32 @addr_to_nodeid(i32*, i32*) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

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

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
