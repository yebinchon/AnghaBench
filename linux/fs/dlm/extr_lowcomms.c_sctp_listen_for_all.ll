; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_sctp_listen_for_all.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_sctp_listen_for_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.socket = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.socket*, i32)* }
%struct.TYPE_5__ = type { i32, i32, %struct.connection* }
%struct.connection = type { %struct.socket*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@NEEDED_RMEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Using SCTP for communications\00", align 1
@init_net = common dso_local global i32 0, align 4
@dlm_local_addr = common dso_local global %struct.TYPE_7__** null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Can't create comms socket, check SCTP is loaded\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUFFORCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Error increasing buffer space on socket %d\00", align 1
@SOL_SCTP = common dso_local global i32 0, align 4
@SCTP_NODELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Could not set SCTP NODELAY error %d\0A\00", align 1
@lowcomms_data_ready = common dso_local global i32 0, align 4
@sctp_accept_from_sock = common dso_local global i32 0, align 4
@sctp_connect_to_sock = common dso_local global i32 0, align 4
@dlm_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't set socket listening\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sctp_listen_for_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_listen_for_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.socket* null, %struct.socket** %2, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.connection* @nodeid2con(i32 0, i32 %9)
  store %struct.connection* %10, %struct.connection** %4, align 8
  %11 = load i32, i32* @NEEDED_RMEM, align 4
  store i32 %11, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = icmp ne %struct.connection* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %112

17:                                               ; preds = %0
  %18 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dlm_local_addr, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %19, i64 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = load i32, i32* @IPPROTO_SCTP, align 4
  %26 = call i32 @sock_create_kern(i32* @init_net, i32 %23, i32 %24, i32 %25, %struct.socket** %2)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %110

31:                                               ; preds = %17
  %32 = load %struct.socket*, %struct.socket** %2, align 8
  %33 = load i32, i32* @SOL_SOCKET, align 4
  %34 = load i32, i32* @SO_RCVBUFFORCE, align 4
  %35 = bitcast i32* %5 to i8*
  %36 = call i32 @kernel_setsockopt(%struct.socket* %32, i32 %33, i32 %34, i8* %35, i32 4)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.socket*, %struct.socket** %2, align 8
  %44 = load i32, i32* @SOL_SCTP, align 4
  %45 = load i32, i32* @SCTP_NODELAY, align 4
  %46 = bitcast i32* %6 to i8*
  %47 = call i32 @kernel_setsockopt(%struct.socket* %43, i32 %44, i32 %45, i8* %46, i32 4)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.socket*, %struct.socket** %2, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @write_lock_bh(i32* %57)
  %59 = load %struct.connection*, %struct.connection** %4, align 8
  %60 = load %struct.socket*, %struct.socket** %2, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store %struct.connection* %59, %struct.connection** %63, align 8
  %64 = load %struct.socket*, %struct.socket** %2, align 8
  %65 = call i32 @save_listen_callbacks(%struct.socket* %64)
  %66 = load %struct.socket*, %struct.socket** %2, align 8
  %67 = load %struct.connection*, %struct.connection** %4, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 0
  store %struct.socket* %66, %struct.socket** %68, align 8
  %69 = load i32, i32* @lowcomms_data_ready, align 4
  %70 = load %struct.connection*, %struct.connection** %4, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 0
  %72 = load %struct.socket*, %struct.socket** %71, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* @sctp_accept_from_sock, align 4
  %77 = load %struct.connection*, %struct.connection** %4, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @sctp_connect_to_sock, align 4
  %80 = load %struct.connection*, %struct.connection** %4, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.socket*, %struct.socket** %2, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @write_unlock_bh(i32* %85)
  %87 = load %struct.connection*, %struct.connection** %4, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dlm_config, i32 0, i32 0), align 4
  %89 = call i64 @sctp_bind_addrs(%struct.connection* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %53
  br label %105

92:                                               ; preds = %53
  %93 = load %struct.socket*, %struct.socket** %2, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %96, align 8
  %98 = load %struct.socket*, %struct.socket** %2, align 8
  %99 = call i32 %97(%struct.socket* %98, i32 5)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %105

104:                                              ; preds = %92
  store i32 0, i32* %1, align 4
  br label %112

105:                                              ; preds = %102, %91
  %106 = load %struct.socket*, %struct.socket** %2, align 8
  %107 = call i32 @sock_release(%struct.socket* %106)
  %108 = load %struct.connection*, %struct.connection** %4, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 0
  store %struct.socket* null, %struct.socket** %109, align 8
  br label %110

110:                                              ; preds = %105, %29
  %111 = load i32, i32* %3, align 4
  store i32 %111, i32* %1, align 4
  br label %112

112:                                              ; preds = %110, %104, %14
  %113 = load i32, i32* %1, align 4
  ret i32 %113
}

declare dso_local %struct.connection* @nodeid2con(i32, i32) #1

declare dso_local i32 @log_print(i8*, ...) #1

declare dso_local i32 @sock_create_kern(i32*, i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @save_listen_callbacks(%struct.socket*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i64 @sctp_bind_addrs(%struct.connection*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
