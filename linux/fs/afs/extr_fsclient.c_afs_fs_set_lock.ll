; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_set_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_set_lock.c"
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
@afs_RXFSSetLock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSSETLOCK = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_set_lock(%struct.afs_fs_cursor* %0, i32 %1, %struct.afs_status_cb* %2) #0 {
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
  %17 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %18 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %19 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %17, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %30 = call i32 @yfs_fs_set_lock(%struct.afs_fs_cursor* %27, i32 %28, %struct.afs_status_cb* %29)
  store i32 %30, i32* %4, align 4
  br label %111

31:                                               ; preds = %3
  %32 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %34 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %33, i32* @afs_RXFSSetLock, i32 20, i32 24)
  store %struct.afs_call* %34, %struct.afs_call** %9, align 8
  %35 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %36 = icmp ne %struct.afs_call* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %111

40:                                               ; preds = %31
  %41 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %42 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %45 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 2
  store %struct.afs_vnode* %46, %struct.afs_vnode** %48, align 8
  %49 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %50 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 1
  store %struct.afs_status_cb* %49, %struct.afs_status_cb** %51, align 8
  %52 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %53 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %11, align 8
  %55 = load i32, i32* @FSSETLOCK, align 4
  %56 = call i8* @htonl(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %61 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @htonl(i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  %68 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %69 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @htonl(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %76 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %77 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @htonl(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i8* @htonl(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  %89 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %90 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %91 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = call i32 @afs_use_fs_server(%struct.afs_call* %89, %struct.TYPE_6__* %92)
  %94 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %95 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %96 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %95, i32 0, i32 0
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @trace_afs_make_fs_calli(%struct.afs_call* %94, %struct.TYPE_5__* %96, i32 %97)
  %99 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %100 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %101 = call i32 @afs_set_fc_call(%struct.afs_call* %99, %struct.afs_fs_cursor* %100)
  %102 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %103 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %102, i32 0, i32 0
  %104 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %105 = load i32, i32* @GFP_NOFS, align 4
  %106 = call i32 @afs_make_call(i32* %103, %struct.afs_call* %104, i32 %105)
  %107 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %108 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %109 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %108, i32 0, i32 0
  %110 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %107, i32* %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %40, %37, %26
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_set_lock(%struct.afs_fs_cursor*, i32, %struct.afs_status_cb*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, %struct.TYPE_6__*) #1

declare dso_local i32 @trace_afs_make_fs_calli(%struct.afs_call*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
