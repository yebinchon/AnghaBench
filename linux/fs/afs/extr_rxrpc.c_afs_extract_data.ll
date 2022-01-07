; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_extract_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_extract_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.iov_iter*, %struct.afs_net* }
%struct.TYPE_2__ = type { i32 }
%struct.iov_iter = type { i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"{%s,%zu},%d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AFS_CALL_CL_PROC_REPLY = common dso_local global i32 0, align 4
@AFS_CALL_SV_REPLYING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"prem complete %d\00", align 1
@afs_io_error_extract = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_extract_data(%struct.afs_call* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_call*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.afs_net*, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %12 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %11, i32 0, i32 6
  %13 = load %struct.afs_net*, %struct.afs_net** %12, align 8
  store %struct.afs_net* %13, %struct.afs_net** %6, align 8
  %14 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %15 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %14, i32 0, i32 5
  %16 = load %struct.iov_iter*, %struct.iov_iter** %15, align 8
  store %struct.iov_iter* %16, %struct.iov_iter** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %18 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %23 = call i32 @iov_iter_count(%struct.iov_iter* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23, i32 %24)
  %26 = load %struct.afs_net*, %struct.afs_net** %6, align 8
  %27 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %30 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %35 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %34, i32 0, i32 2
  %36 = call i32 @rxrpc_kernel_recv_data(i32 %28, i32 %31, %struct.iov_iter* %32, i32 %33, i32* %9, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %2
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %81

46:                                               ; preds = %39
  %47 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @READ_ONCE(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %73 [
    i32 130, label %55
    i32 128, label %60
    i32 129, label %65
  ]

55:                                               ; preds = %53
  %56 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @AFS_CALL_CL_PROC_REPLY, align 4
  %59 = call i32 @afs_set_call_state(%struct.afs_call* %56, i32 %57, i32 %58)
  br label %74

60:                                               ; preds = %53
  %61 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @AFS_CALL_SV_REPLYING, align 4
  %64 = call i32 @afs_set_call_state(%struct.afs_call* %61, i32 %62, i32 %63)
  br label %74

65:                                               ; preds = %53
  %66 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %67 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @kdebug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %71 = load i32, i32* @afs_io_error_extract, align 4
  %72 = call i32 @afs_io_error(%struct.afs_call* %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %81

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %60, %55
  store i32 0, i32* %3, align 4
  br label %81

75:                                               ; preds = %46
  %76 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @afs_set_call_complete(%struct.afs_call* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %74, %65, %44
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @rxrpc_kernel_recv_data(i32, i32, %struct.iov_iter*, i32, i32*, i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @afs_set_call_state(%struct.afs_call*, i32, i32) #1

declare dso_local i32 @kdebug(i8*, i32) #1

declare dso_local i32 @afs_io_error(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_set_call_complete(%struct.afs_call*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
