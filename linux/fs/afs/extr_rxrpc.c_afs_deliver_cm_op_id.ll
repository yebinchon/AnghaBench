; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_deliver_cm_op_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_deliver_cm_op_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [6 x i8] c"{%zu}\00", align 1
@AFS_CALL_SV_AWAIT_OP_ID = common dso_local global i32 0, align 4
@AFS_CALL_SV_AWAIT_REQUEST = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_cm_op_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_cm_op_id(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %5 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %6 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @iov_iter_count(i32 %7)
  %9 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %11 = call i32 @afs_extract_data(%struct.afs_call* %10, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %18 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ntohl(i32 %19)
  %21 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %22 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %24 = load i32, i32* @AFS_CALL_SV_AWAIT_OP_ID, align 4
  %25 = load i32, i32* @AFS_CALL_SV_AWAIT_REQUEST, align 4
  %26 = call i32 @afs_set_call_state(%struct.afs_call* %23, i32 %24, i32 %25)
  %27 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %28 = call i32 @afs_cm_incoming_call(%struct.afs_call* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = load i32, i32* @ENOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %44

33:                                               ; preds = %16
  %34 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %35 = call i32 @trace_afs_cb_call(%struct.afs_call* %34)
  %36 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %37 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.afs_call*)**
  %41 = load i32 (%struct.afs_call*)*, i32 (%struct.afs_call*)** %40, align 8
  %42 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %43 = call i32 %41(%struct.afs_call* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %33, %30, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @iov_iter_count(i32) #1

declare dso_local i32 @afs_extract_data(%struct.afs_call*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @afs_set_call_state(%struct.afs_call*, i32, i32) #1

declare dso_local i32 @afs_cm_incoming_call(%struct.afs_call*) #1

declare dso_local i32 @trace_afs_cb_call(%struct.afs_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
