; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_fetch_file_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_fetch_file_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { %struct.TYPE_6__, i32, i32, %struct.afs_vnode* }
%struct.TYPE_6__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_volsync = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_volsync*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@yfs_RXYFSFetchStatus_vnode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSFETCHSTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_fetch_file_status(%struct.afs_fs_cursor* %0, %struct.afs_status_cb* %1, %struct.afs_volsync* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_fs_cursor*, align 8
  %6 = alloca %struct.afs_status_cb*, align 8
  %7 = alloca %struct.afs_volsync*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.afs_call*, align 8
  %10 = alloca %struct.afs_net*, align 8
  %11 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %5, align 8
  store %struct.afs_status_cb* %1, %struct.afs_status_cb** %6, align 8
  store %struct.afs_volsync* %2, %struct.afs_volsync** %7, align 8
  %12 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %13 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %12, i32 0, i32 3
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  store %struct.afs_vnode* %14, %struct.afs_vnode** %8, align 8
  %15 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %16 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %15)
  store %struct.afs_net* %16, %struct.afs_net** %10, align 8
  %17 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %18 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @key_serial(i32 %19)
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %22 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %28)
  %30 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %31 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %30, i32* @yfs_RXYFSFetchStatus_vnode, i32 12, i32 12)
  store %struct.afs_call* %31, %struct.afs_call** %9, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %33 = icmp ne %struct.afs_call* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %38 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %90

42:                                               ; preds = %3
  %43 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %44 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %47 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %49 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 2
  store %struct.afs_status_cb* %48, %struct.afs_status_cb** %50, align 8
  %51 = load %struct.afs_volsync*, %struct.afs_volsync** %7, align 8
  %52 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %53 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %52, i32 0, i32 1
  store %struct.afs_volsync* %51, %struct.afs_volsync** %53, align 8
  %54 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* @YFSFETCHSTATUS, align 4
  %59 = call i32* @xdr_encode_u32(i32* %57, i32 %58)
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32* @xdr_encode_u32(i32* %60, i32 0)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %64 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %63, i32 0, i32 0
  %65 = call i32* @xdr_encode_YFSFid(i32* %62, %struct.TYPE_5__* %64)
  store i32* %65, i32** %11, align 8
  %66 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @yfs_check_req(%struct.afs_call* %66, i32* %67)
  %69 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %70 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %71 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @afs_use_fs_server(%struct.afs_call* %69, i32 %72)
  %74 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %75 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %76 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %75, i32 0, i32 0
  %77 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %74, %struct.TYPE_5__* %76)
  %78 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %79 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %80 = call i32 @afs_set_fc_call(%struct.afs_call* %78, %struct.afs_fs_cursor* %79)
  %81 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %82 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %81, i32 0, i32 0
  %83 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %84 = load i32, i32* @GFP_NOFS, align 4
  %85 = call i32 @afs_make_call(%struct.TYPE_6__* %82, %struct.afs_call* %83, i32 %84)
  %86 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %87 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %88 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %87, i32 0, i32 0
  %89 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %86, %struct.TYPE_6__* %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %42, %34
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_5__*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(%struct.TYPE_6__*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
