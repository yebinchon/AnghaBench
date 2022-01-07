; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_fetch_opaque_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_fetch_opaque_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { %struct.TYPE_6__, i32, i32, %struct.afs_vnode* }
%struct.TYPE_6__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.yfs_acl = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, i32*, %struct.afs_status_cb*, %struct.yfs_acl*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@yfs_RXYFSFetchOpaqueACL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSFETCHOPAQUEACL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.yfs_acl* @yfs_fs_fetch_opaque_acl(%struct.afs_fs_cursor* %0, %struct.yfs_acl* %1, %struct.afs_status_cb* %2) #0 {
  %4 = alloca %struct.yfs_acl*, align 8
  %5 = alloca %struct.afs_fs_cursor*, align 8
  %6 = alloca %struct.yfs_acl*, align 8
  %7 = alloca %struct.afs_status_cb*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.afs_call*, align 8
  %10 = alloca %struct.afs_net*, align 8
  %11 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %5, align 8
  store %struct.yfs_acl* %1, %struct.yfs_acl** %6, align 8
  store %struct.afs_status_cb* %2, %struct.afs_status_cb** %7, align 8
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
  %31 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %30, i32* @yfs_RXYFSFetchOpaqueACL, i32 12, i32 16)
  store %struct.afs_call* %31, %struct.afs_call** %9, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %33 = icmp ne %struct.afs_call* %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %38 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.yfs_acl* @ERR_PTR(i32 %41)
  store %struct.yfs_acl* %42, %struct.yfs_acl** %4, align 8
  br label %91

43:                                               ; preds = %3
  %44 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.yfs_acl*, %struct.yfs_acl** %6, align 8
  %50 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 3
  store %struct.yfs_acl* %49, %struct.yfs_acl** %51, align 8
  %52 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %53 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %54 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %53, i32 0, i32 2
  store %struct.afs_status_cb* %52, %struct.afs_status_cb** %54, align 8
  %55 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %56 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %58 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @YFSFETCHOPAQUEACL, align 4
  %62 = call i32* @xdr_encode_u32(i32* %60, i32 %61)
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32* @xdr_encode_u32(i32* %63, i32 0)
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %67 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %66, i32 0, i32 0
  %68 = call i32* @xdr_encode_YFSFid(i32* %65, %struct.TYPE_5__* %67)
  store i32* %68, i32** %11, align 8
  %69 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @yfs_check_req(%struct.afs_call* %69, i32* %70)
  %72 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %73 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %74 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @afs_use_fs_server(%struct.afs_call* %72, i32 %75)
  %77 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %78 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %79 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %78, i32 0, i32 0
  %80 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %77, %struct.TYPE_5__* %79)
  %81 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %82 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %81, i32 0, i32 0
  %83 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32 @afs_make_call(%struct.TYPE_6__* %82, %struct.afs_call* %83, i32 %84)
  %86 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %87 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %88 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %87, i32 0, i32 0
  %89 = call i64 @afs_wait_for_call_to_complete(%struct.afs_call* %86, %struct.TYPE_6__* %88)
  %90 = inttoptr i64 %89 to %struct.yfs_acl*
  store %struct.yfs_acl* %90, %struct.yfs_acl** %4, align 8
  br label %91

91:                                               ; preds = %43, %34
  %92 = load %struct.yfs_acl*, %struct.yfs_acl** %4, align 8
  ret %struct.yfs_acl* %92
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local %struct.yfs_acl* @ERR_PTR(i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_5__*) #1

declare dso_local i32 @afs_make_call(%struct.TYPE_6__*, %struct.afs_call*, i32) #1

declare dso_local i64 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
