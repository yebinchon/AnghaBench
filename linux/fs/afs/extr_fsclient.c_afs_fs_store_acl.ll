; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_store_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_store_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { %struct.TYPE_5__, i32, %struct.afs_vnode* }
%struct.TYPE_5__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.afs_acl = type { i64, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@afs_RXFSStoreACL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSSTOREACL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_store_acl(%struct.afs_fs_cursor* %0, %struct.afs_acl* %1, %struct.afs_status_cb* %2) #0 {
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
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %25, i64 %29)
  %31 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %32 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @round_up(i64 %33, i32 4)
  store i64 %34, i64* %11, align 8
  %35 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 20, %36
  %38 = trunc i64 %37 to i32
  %39 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %35, i32* @afs_RXFSStoreACL, i32 %38, i32 108)
  store %struct.afs_call* %39, %struct.afs_call** %9, align 8
  %40 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %41 = icmp ne %struct.afs_call* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %46 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %137

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
  %64 = load i64, i64* @FSSTOREACL, align 8
  %65 = call i32 @htonl(i64 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %69 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @htonl(i64 %71)
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %76 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @htonl(i64 %78)
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %83 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @htonl(i64 %85)
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %90 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @htonl(i64 %91)
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %98 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %101 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @memcpy(i32* %96, i32 %99, i64 %102)
  %104 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %105 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %50
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  %112 = bitcast i32* %111 to i8*
  %113 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %114 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr i8, i8* %112, i64 %115
  %117 = load i64, i64* %11, align 8
  %118 = load %struct.afs_acl*, %struct.afs_acl** %6, align 8
  %119 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %117, %120
  %122 = call i32 @memset(i8* %116, i32 0, i64 %121)
  br label %123

123:                                              ; preds = %109, %50
  %124 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %125 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %126 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %125, i32 0, i32 0
  %127 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %124, %struct.TYPE_4__* %126)
  %128 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %129 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %128, i32 0, i32 0
  %130 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call i32 @afs_make_call(%struct.TYPE_5__* %129, %struct.afs_call* %130, i32 %131)
  %133 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %134 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %135 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %134, i32 0, i32 0
  %136 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %133, %struct.TYPE_5__* %135)
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %123, %42
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i64, i64) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_4__*) #1

declare dso_local i32 @afs_make_call(%struct.TYPE_5__*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
