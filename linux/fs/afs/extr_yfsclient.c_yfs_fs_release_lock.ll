; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_release_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_release_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, %struct.afs_vnode*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@yfs_RXYFSReleaseLock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSRELEASELOCK = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_release_lock(%struct.afs_fs_cursor* %0, %struct.afs_status_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_fs_cursor*, align 8
  %5 = alloca %struct.afs_status_cb*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.afs_call*, align 8
  %8 = alloca %struct.afs_net*, align 8
  %9 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %4, align 8
  store %struct.afs_status_cb* %1, %struct.afs_status_cb** %5, align 8
  %10 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %11 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %10, i32 0, i32 3
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  store %struct.afs_vnode* %12, %struct.afs_vnode** %6, align 8
  %13 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %14 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %13)
  store %struct.afs_net* %14, %struct.afs_net** %8, align 8
  %15 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.afs_net*, %struct.afs_net** %8, align 8
  %17 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %16, i32* @yfs_RXYFSReleaseLock, i32 12, i32 8)
  store %struct.afs_call* %17, %struct.afs_call** %7, align 8
  %18 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %19 = icmp ne %struct.afs_call* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %25 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %28 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %30 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %31 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %30, i32 0, i32 2
  store %struct.afs_vnode* %29, %struct.afs_vnode** %31, align 8
  %32 = load %struct.afs_status_cb*, %struct.afs_status_cb** %5, align 8
  %33 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %34 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %33, i32 0, i32 1
  store %struct.afs_status_cb* %32, %struct.afs_status_cb** %34, align 8
  %35 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @YFSRELEASELOCK, align 4
  %40 = call i32* @xdr_encode_u32(i32* %38, i32 %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32* @xdr_encode_u32(i32* %41, i32 0)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %45 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %44, i32 0, i32 0
  %46 = call i32* @xdr_encode_YFSFid(i32* %43, i32* %45)
  store i32* %46, i32** %9, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @yfs_check_req(%struct.afs_call* %47, i32* %48)
  %50 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %51 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %52 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @afs_use_fs_server(%struct.afs_call* %50, i32 %53)
  %55 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %56 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %57 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %56, i32 0, i32 0
  %58 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %55, i32* %57)
  %59 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %60 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %61 = call i32 @afs_set_fc_call(%struct.afs_call* %59, %struct.afs_fs_cursor* %60)
  %62 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %63 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %62, i32 0, i32 0
  %64 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %65 = load i32, i32* @GFP_NOFS, align 4
  %66 = call i32 @afs_make_call(i32* %63, %struct.afs_call* %64, i32 %65)
  %67 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %68 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %69 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %68, i32 0, i32 0
  %70 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %67, i32* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %23, %20
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, i32*) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
