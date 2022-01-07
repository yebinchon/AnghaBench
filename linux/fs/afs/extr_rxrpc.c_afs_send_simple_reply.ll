; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_send_simple_reply.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_send_simple_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, %struct.afs_net* }
%struct.afs_net = type { i32 }
%struct.msghdr = type { i64, i64, i32*, i32, i64, i32* }
%struct.kvec = type { i64, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WRITE = common dso_local global i32 0, align 4
@afs_notify_end_reply_tx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" [replied]\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"oom\00", align 1
@RX_USER_ABORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"KOO\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" [error]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_send_simple_reply(%struct.afs_call* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.afs_call*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.afs_net*, align 8
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca [1 x %struct.kvec], align 16
  %10 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %12 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %11, i32 0, i32 1
  %13 = load %struct.afs_net*, %struct.afs_net** %12, align 8
  store %struct.afs_net* %13, %struct.afs_net** %7, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.afs_net*, %struct.afs_net** %7, align 8
  %16 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %19 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @rxrpc_kernel_set_tx_length(i32 %17, i32 %20, i64 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %9, i64 0, i64 0
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %9, i64 0, i64 0
  %28 = getelementptr inbounds %struct.kvec, %struct.kvec* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 16
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 3
  %32 = load i32, i32* @WRITE, align 4
  %33 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %9, i64 0, i64 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @iov_iter_kvec(i32* %31, i32 %32, %struct.kvec* %33, i32 1, i64 %34)
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.afs_net*, %struct.afs_net** %7, align 8
  %40 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %43 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @afs_notify_end_reply_tx, align 4
  %47 = call i32 @rxrpc_kernel_send_data(i32 %41, i32 %44, %struct.msghdr* %8, i64 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %3
  %51 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %71

52:                                               ; preds = %3
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = call i32 @_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.afs_net*, %struct.afs_net** %7, align 8
  %60 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %63 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @RX_USER_ABORT, align 4
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 @rxrpc_kernel_abort_call(i32 %61, i32 %64, i32 %65, i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %57, %52
  %70 = call i32 @_leave(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %50
  ret void
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @rxrpc_kernel_set_tx_length(i32, i32, i64) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @rxrpc_kernel_send_data(i32, i32, %struct.msghdr*, i64, i32) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @rxrpc_kernel_abort_call(i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
