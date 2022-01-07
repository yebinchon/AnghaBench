; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_set_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_set_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, %struct.afs_vnode*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@yfs_RXYFSSetLock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSSETLOCK = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_set_lock(%struct.afs_fs_cursor* %0, i32 %1, %struct.afs_status_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_fs_cursor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_status_cb*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.afs_call*, align 8
  %10 = alloca %struct.afs_net*, align 8
  %11 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.afs_status_cb* %2, %struct.afs_status_cb** %7, align 8
  %12 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %13 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %12, i32 0, i32 3
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  store %struct.afs_vnode* %14, %struct.afs_vnode** %8, align 8
  %15 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %16 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %15)
  store %struct.afs_net* %16, %struct.afs_net** %10, align 8
  %17 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %19 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %18, i32* @yfs_RXYFSSetLock, i32 16, i32 8)
  store %struct.afs_call* %19, %struct.afs_call** %9, align 8
  %20 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %21 = icmp ne %struct.afs_call* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %77

25:                                               ; preds = %3
  %26 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %27 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %30 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 2
  store %struct.afs_vnode* %31, %struct.afs_vnode** %33, align 8
  %34 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %35 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 1
  store %struct.afs_status_cb* %34, %struct.afs_status_cb** %36, align 8
  %37 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %38 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* @YFSSETLOCK, align 4
  %42 = call i32* @xdr_encode_u32(i32* %40, i32 %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @xdr_encode_u32(i32* %43, i32 0)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 0
  %48 = call i32* @xdr_encode_YFSFid(i32* %45, i32* %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32* @xdr_encode_u32(i32* %49, i32 %50)
  store i32* %51, i32** %11, align 8
  %52 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @yfs_check_req(%struct.afs_call* %52, i32* %53)
  %55 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %56 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %57 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @afs_use_fs_server(%struct.afs_call* %55, i32 %58)
  %60 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %61 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %62 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @trace_afs_make_fs_calli(%struct.afs_call* %60, i32* %62, i32 %63)
  %65 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %66 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %67 = call i32 @afs_set_fc_call(%struct.afs_call* %65, %struct.afs_fs_cursor* %66)
  %68 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %69 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %68, i32 0, i32 0
  %70 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %71 = load i32, i32* @GFP_NOFS, align 4
  %72 = call i32 @afs_make_call(i32* %69, %struct.afs_call* %70, i32 %71)
  %73 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %74 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %75 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %74, i32 0, i32 0
  %76 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %73, i32* %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %25, %22
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, i32*) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_calli(%struct.afs_call*, i32*, i32) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
