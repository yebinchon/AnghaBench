; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_fetch_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_fetch_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_acl = type { i32 }
%struct.afs_fs_cursor = type { %struct.TYPE_5__, i32, i32, %struct.afs_vnode* }
%struct.TYPE_5__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, i32*, %struct.afs_status_cb*, i32*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@afs_RXFSFetchACL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSFETCHACL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_acl* @afs_fs_fetch_acl(%struct.afs_fs_cursor* %0, %struct.afs_status_cb* %1) #0 {
  %3 = alloca %struct.afs_acl*, align 8
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
  %15 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %16 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @key_serial(i32 %17)
  %19 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %20 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %24 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %26)
  %28 = load %struct.afs_net*, %struct.afs_net** %8, align 8
  %29 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %28, i32* @afs_RXFSFetchACL, i32 16, i32 108)
  store %struct.afs_call* %29, %struct.afs_call** %7, align 8
  %30 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %31 = icmp ne %struct.afs_call* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %36 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.afs_acl* @ERR_PTR(i32 %39)
  store %struct.afs_acl* %40, %struct.afs_acl** %3, align 8
  br label %101

41:                                               ; preds = %2
  %42 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %43 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %46 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  %49 = load %struct.afs_status_cb*, %struct.afs_status_cb** %5, align 8
  %50 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 2
  store %struct.afs_status_cb* %49, %struct.afs_status_cb** %51, align 8
  %52 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %53 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %9, align 8
  %57 = load i32, i32* @FSFETCHACL, align 4
  %58 = call i32 @htonl(i32 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %62 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @htonl(i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %69 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @htonl(i32 %71)
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %76 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @htonl(i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %83 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %84 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @afs_use_fs_server(%struct.afs_call* %82, i32 %85)
  %87 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %88 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %89 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %88, i32 0, i32 0
  %90 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %87, %struct.TYPE_4__* %89)
  %91 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %92 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %91, i32 0, i32 0
  %93 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i32 @afs_make_call(%struct.TYPE_5__* %92, %struct.afs_call* %93, i32 %94)
  %96 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %97 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %98 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %97, i32 0, i32 0
  %99 = call i64 @afs_wait_for_call_to_complete(%struct.afs_call* %96, %struct.TYPE_5__* %98)
  %100 = inttoptr i64 %99 to %struct.afs_acl*
  store %struct.afs_acl* %100, %struct.afs_acl** %3, align 8
  br label %101

101:                                              ; preds = %41, %32
  %102 = load %struct.afs_acl*, %struct.afs_acl** %3, align 8
  ret %struct.afs_acl* %102
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local %struct.afs_acl* @ERR_PTR(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_4__*) #1

declare dso_local i32 @afs_make_call(%struct.TYPE_5__*, %struct.afs_call*, i32) #1

declare dso_local i64 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
