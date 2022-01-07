; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_store_opaque_acl2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_store_opaque_acl2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { %struct.TYPE_6__, i32, %struct.afs_vnode* }
%struct.TYPE_6__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.afs_acl = type { i64, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@yfs_RXYFSStoreOpaqueACL2 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSSTOREOPAQUEACL2 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_store_opaque_acl2(%struct.afs_fs_cursor* %0, %struct.afs_acl* %1, %struct.afs_status_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_fs_cursor*, align 8
  %6 = alloca %struct.afs_acl*, align 8
  %7 = alloca %struct.afs_status_cb*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.afs_call*, align 8
  %10 = alloca %struct.afs_net*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %5, align 8
  store %struct.afs_acl* %1, %struct.afs_acl** %6, align 8
  store %struct.afs_status_cb* %2, %struct.afs_status_cb** %7, align 8
  %13 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %14 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %13, i32 0, i32 2
  %15 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  store %struct.afs_vnode* %15, %struct.afs_vnode** %8, align 8
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %17 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %16)
  store %struct.afs_net* %17, %struct.afs_net** %10, align 8
  %18 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %19 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @key_serial(i32 %20)
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29)
  %31 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %32 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @round_up(i64 %33, i32 4)
  store i64 %34, i64* %11, align 8
  %35 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 16, %36
  %38 = trunc i64 %37 to i32
  %39 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %35, i32* @yfs_RXYFSStoreOpaqueACL2, i32 %38, i32 8)
  store %struct.afs_call* %39, %struct.afs_call** %9, align 8
  %40 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %41 = icmp ne %struct.afs_call* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %46 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %121

50:                                               ; preds = %3
  %51 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %52 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %57 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %58 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %57, i32 0, i32 2
  store %struct.afs_status_cb* %56, %struct.afs_status_cb** %58, align 8
  %59 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %60 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i64, i64* @YFSSTOREOPAQUEACL2, align 8
  %66 = call i32* @xdr_encode_u32(i32* %64, i64 %65)
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32* @xdr_encode_u32(i32* %67, i64 0)
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %71 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %70, i32 0, i32 0
  %72 = call i32* @xdr_encode_YFSFid(i32* %69, %struct.TYPE_5__* %71)
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %75 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32* @xdr_encode_u32(i32* %73, i64 %76)
  store i32* %77, i32** %12, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %80 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %83 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @memcpy(i32* %78, i32 %81, i64 %84)
  %86 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %87 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %50
  %92 = load i32*, i32** %12, align 8
  %93 = bitcast i32* %92 to i8*
  %94 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %95 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr i8, i8* %93, i64 %96
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %100 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %98, %101
  %103 = call i32 @memset(i8* %97, i32 0, i64 %102)
  br label %104

104:                                              ; preds = %91, %50
  %105 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @yfs_check_req(%struct.afs_call* %105, i32* %106)
  %108 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %109 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %110 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %109, i32 0, i32 0
  %111 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %108, %struct.TYPE_5__* %110)
  %112 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %113 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %112, i32 0, i32 0
  %114 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i32 @afs_make_call(%struct.TYPE_6__* %113, %struct.afs_call* %114, i32 %115)
  %117 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %118 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %119 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %118, i32 0, i32 0
  %120 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %117, %struct.TYPE_6__* %119)
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %104, %42
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i64) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_5__*) #1

declare dso_local i32 @afs_make_call(%struct.TYPE_6__*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
