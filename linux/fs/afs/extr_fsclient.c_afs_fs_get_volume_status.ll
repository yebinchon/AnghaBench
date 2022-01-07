; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_get_volume_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_get_volume_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, %struct.TYPE_6__*, i32, %struct.afs_vnode* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.afs_volume_status = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_volume_status*, i32 }
%struct.afs_net = type { i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSGetVolumeStatus = common dso_local global i32 0, align 4
@AFSOPAQUEMAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@FSGETVOLUMESTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_get_volume_status(%struct.afs_fs_cursor* %0, %struct.afs_volume_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_fs_cursor*, align 8
  %5 = alloca %struct.afs_volume_status*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.afs_call*, align 8
  %8 = alloca %struct.afs_net*, align 8
  %9 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %4, align 8
  store %struct.afs_volume_status* %1, %struct.afs_volume_status** %5, align 8
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
  %26 = load %struct.afs_volume_status*, %struct.afs_volume_status** %5, align 8
  %27 = call i32 @yfs_fs_get_volume_status(%struct.afs_fs_cursor* %25, %struct.afs_volume_status* %26)
  store i32 %27, i32* %3, align 4
  br label %84

28:                                               ; preds = %2
  %29 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.afs_net*, %struct.afs_net** %8, align 8
  %31 = load i64, i64* @AFSOPAQUEMAX, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @max(i32 48, i64 %32)
  %34 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %30, i32* @afs_RXFSGetVolumeStatus, i32 8, i32 %33)
  store %struct.afs_call* %34, %struct.afs_call** %7, align 8
  %35 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %36 = icmp ne %struct.afs_call* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %84

40:                                               ; preds = %28
  %41 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %42 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %45 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.afs_volume_status*, %struct.afs_volume_status** %5, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 1
  store %struct.afs_volume_status* %46, %struct.afs_volume_status** %48, align 8
  %49 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* @FSGETVOLUMESTATUS, align 4
  %53 = call i32 @htonl(i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %57 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @htonl(i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %64 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %65 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @afs_use_fs_server(%struct.afs_call* %63, %struct.TYPE_6__* %66)
  %68 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %69 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %70 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %69, i32 0, i32 0
  %71 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %68, %struct.TYPE_5__* %70)
  %72 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %73 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %74 = call i32 @afs_set_fc_call(%struct.afs_call* %72, %struct.afs_fs_cursor* %73)
  %75 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %76 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %75, i32 0, i32 0
  %77 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %78 = load i32, i32* @GFP_NOFS, align 4
  %79 = call i32 @afs_make_call(i32* %76, %struct.afs_call* %77, i32 %78)
  %80 = load %struct.afs_call*, %struct.afs_call** %7, align 8
  %81 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %4, align 8
  %82 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %81, i32 0, i32 0
  %83 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %80, i32* %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %40, %37, %24
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_get_volume_status(%struct.afs_fs_cursor*, %struct.afs_volume_status*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @htonl(i32) #1

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
