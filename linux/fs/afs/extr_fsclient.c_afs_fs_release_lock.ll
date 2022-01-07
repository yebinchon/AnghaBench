; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_release_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_release_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, %struct.TYPE_6__*, i32, %struct.afs_vnode* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, %struct.afs_vnode*, i32 }
%struct.afs_net = type { i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSReleaseLock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSRELEASELOCK = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_release_lock(%struct.afs_fs_cursor* %0, %struct.afs_status_cb* %1) #0 {
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
  %15 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %16 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %17 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %15, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %26 = load %struct.afs_status_cb*, %struct.afs_status_cb** %5, align 8
  %27 = call i32 @yfs_fs_release_lock(%struct.afs_fs_cursor* %25, %struct.afs_status_cb* %26)
  store i32 %27, i32* %3, align 4
  br label %102

28:                                               ; preds = %2
  %29 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.afs_net*, %struct.afs_net** %8, align 8
  %31 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %30, i32* @afs_RXFSReleaseLock, i32 16, i32 24)
  store %struct.afs_call* %31, %struct.afs_call** %7, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %33 = icmp ne %struct.afs_call* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %102

37:                                               ; preds = %28
  %38 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %39 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %42 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %44 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %45 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %44, i32 0, i32 2
  store %struct.afs_vnode* %43, %struct.afs_vnode** %45, align 8
  %46 = load %struct.afs_status_cb*, %struct.afs_status_cb** %5, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 1
  store %struct.afs_status_cb* %46, %struct.afs_status_cb** %48, align 8
  %49 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* @FSRELEASELOCK, align 4
  %53 = call i8* @htonl(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %57 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %58 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @htonl(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %65 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %66 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @htonl(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %73 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %74 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @htonl(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %81 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %82 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %83 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = call i32 @afs_use_fs_server(%struct.afs_call* %81, %struct.TYPE_6__* %84)
  %86 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %87 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %88 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %87, i32 0, i32 0
  %89 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %86, %struct.TYPE_5__* %88)
  %90 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %91 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %92 = call i32 @afs_set_fc_call(%struct.afs_call* %90, %struct.afs_fs_cursor* %91)
  %93 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %94 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %93, i32 0, i32 0
  %95 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %96 = load i32, i32* @GFP_NOFS, align 4
  %97 = call i32 @afs_make_call(i32* %94, %struct.afs_call* %95, i32 %96)
  %98 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %99 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %100 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %99, i32 0, i32 0
  %101 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %98, i32* %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %37, %34, %24
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_release_lock(%struct.afs_fs_cursor*, %struct.afs_status_cb*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, %struct.TYPE_6__*) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_5__*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
