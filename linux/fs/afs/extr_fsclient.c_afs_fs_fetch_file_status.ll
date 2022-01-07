; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_fetch_file_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_fetch_file_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { %struct.TYPE_8__, %struct.TYPE_9__*, i32, %struct.afs_vnode* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_volsync = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_volsync*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@afs_RXFSFetchStatus_vnode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSFETCHSTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_fetch_file_status(%struct.afs_fs_cursor* %0, %struct.afs_status_cb* %1, %struct.afs_volsync* %2) #0 {
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
  %17 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %18 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %19 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %17, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %28 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %29 = load %struct.afs_volsync*, %struct.afs_volsync** %7, align 8
  %30 = call i32 @yfs_fs_fetch_file_status(%struct.afs_fs_cursor* %27, %struct.afs_status_cb* %28, %struct.afs_volsync* %29)
  store i32 %30, i32* %4, align 4
  br label %118

31:                                               ; preds = %3
  %32 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %33 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @key_serial(i32 %34)
  %36 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %37 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %41 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %43)
  %45 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %46 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %45, i32* @afs_RXFSFetchStatus_vnode, i32 16, i32 120)
  store %struct.afs_call* %46, %struct.afs_call** %9, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %48 = icmp ne %struct.afs_call* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %53 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %118

57:                                               ; preds = %31
  %58 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %59 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %64 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %65 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %64, i32 0, i32 2
  store %struct.afs_status_cb* %63, %struct.afs_status_cb** %65, align 8
  %66 = load %struct.afs_volsync*, %struct.afs_volsync** %7, align 8
  %67 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %68 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %67, i32 0, i32 1
  store %struct.afs_volsync* %66, %struct.afs_volsync** %68, align 8
  %69 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %70 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %11, align 8
  %72 = load i32, i32* @FSFETCHSTATUS, align 4
  %73 = call i32 @htonl(i32 %72)
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %77 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @htonl(i32 %79)
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %84 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @htonl(i32 %86)
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %91 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @htonl(i32 %93)
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %98 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %99 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = call i32 @afs_use_fs_server(%struct.afs_call* %97, %struct.TYPE_9__* %100)
  %102 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %103 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %104 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %103, i32 0, i32 0
  %105 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %102, %struct.TYPE_7__* %104)
  %106 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %107 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %108 = call i32 @afs_set_fc_call(%struct.afs_call* %106, %struct.afs_fs_cursor* %107)
  %109 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %110 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %109, i32 0, i32 0
  %111 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %112 = load i32, i32* @GFP_NOFS, align 4
  %113 = call i32 @afs_make_call(%struct.TYPE_8__* %110, %struct.afs_call* %111, i32 %112)
  %114 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %115 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %116 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %115, i32 0, i32 0
  %117 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %114, %struct.TYPE_8__* %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %57, %49, %26
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_fetch_file_status(%struct.afs_fs_cursor*, %struct.afs_status_cb*, %struct.afs_volsync*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, %struct.TYPE_9__*) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_7__*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(%struct.TYPE_8__*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
