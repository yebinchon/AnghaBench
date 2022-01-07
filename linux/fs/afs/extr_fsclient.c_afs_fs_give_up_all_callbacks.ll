; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_give_up_all_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_give_up_all_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32 }
%struct.afs_server = type { i32 }
%struct.afs_addr_cursor = type { i32 }
%struct.key = type { i32 }
%struct.afs_call = type { i32*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSGiveUpAllCallBacks = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSGIVEUPALLCALLBACKS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_give_up_all_callbacks(%struct.afs_net* %0, %struct.afs_server* %1, %struct.afs_addr_cursor* %2, %struct.key* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.afs_net*, align 8
  %7 = alloca %struct.afs_server*, align 8
  %8 = alloca %struct.afs_addr_cursor*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.afs_call*, align 8
  %11 = alloca i32*, align 8
  store %struct.afs_net* %0, %struct.afs_net** %6, align 8
  store %struct.afs_server* %1, %struct.afs_server** %7, align 8
  store %struct.afs_addr_cursor* %2, %struct.afs_addr_cursor** %8, align 8
  store %struct.key* %3, %struct.key** %9, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.afs_net*, %struct.afs_net** %6, align 8
  %14 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %13, i32* @afs_RXFSGiveUpAllCallBacks, i32 4, i32 0)
  store %struct.afs_call* %14, %struct.afs_call** %10, align 8
  %15 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %16 = icmp ne %struct.afs_call* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %38

20:                                               ; preds = %4
  %21 = load %struct.key*, %struct.key** %9, align 8
  %22 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %23 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %22, i32 0, i32 1
  store %struct.key* %21, %struct.key** %23, align 8
  %24 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %25 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  %27 = load i32, i32* @FSGIVEUPALLCALLBACKS, align 4
  %28 = call i32 @htonl(i32 %27)
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %11, align 8
  store i32 %28, i32* %29, align 4
  %31 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %8, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call i32 @afs_make_call(%struct.afs_addr_cursor* %31, %struct.afs_call* %32, i32 %33)
  %35 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %36 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %8, align 8
  %37 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %35, %struct.afs_addr_cursor* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %20, %17
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @afs_make_call(%struct.afs_addr_cursor*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.afs_addr_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
