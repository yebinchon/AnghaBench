; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_fetch_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_fetch_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { %struct.TYPE_6__, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.afs_net = type { i32 }
%struct.afs_fid = type { i32, i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_volsync = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_volsync*, %struct.afs_status_cb*, %struct.afs_fid*, i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@afs_RXFSFetchStatus = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSFETCHSTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_fetch_status(%struct.afs_fs_cursor* %0, %struct.afs_net* %1, %struct.afs_fid* %2, %struct.afs_status_cb* %3, %struct.afs_volsync* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_fs_cursor*, align 8
  %8 = alloca %struct.afs_net*, align 8
  %9 = alloca %struct.afs_fid*, align 8
  %10 = alloca %struct.afs_status_cb*, align 8
  %11 = alloca %struct.afs_volsync*, align 8
  %12 = alloca %struct.afs_call*, align 8
  %13 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %7, align 8
  store %struct.afs_net* %1, %struct.afs_net** %8, align 8
  store %struct.afs_fid* %2, %struct.afs_fid** %9, align 8
  store %struct.afs_status_cb* %3, %struct.afs_status_cb** %10, align 8
  store %struct.afs_volsync* %4, %struct.afs_volsync** %11, align 8
  %14 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %15 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %16 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %14, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %25 = load %struct.afs_net*, %struct.afs_net** %8, align 8
  %26 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %27 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %28 = load %struct.afs_volsync*, %struct.afs_volsync** %11, align 8
  %29 = call i32 @yfs_fs_fetch_status(%struct.afs_fs_cursor* %24, %struct.afs_net* %25, %struct.afs_fid* %26, %struct.afs_status_cb* %27, %struct.afs_volsync* %28)
  store i32 %29, i32* %6, align 4
  br label %114

30:                                               ; preds = %5
  %31 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %32 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @key_serial(i32 %33)
  %35 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %36 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %39 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  %42 = load %struct.afs_net*, %struct.afs_net** %8, align 8
  %43 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %42, i32* @afs_RXFSFetchStatus, i32 16, i32 120)
  store %struct.afs_call* %43, %struct.afs_call** %12, align 8
  %44 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %45 = icmp ne %struct.afs_call* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %30
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %50 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %114

54:                                               ; preds = %30
  %55 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %56 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %59 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %61 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 3
  store %struct.afs_fid* %60, %struct.afs_fid** %62, align 8
  %63 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %64 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %65 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %64, i32 0, i32 2
  store %struct.afs_status_cb* %63, %struct.afs_status_cb** %65, align 8
  %66 = load %struct.afs_volsync*, %struct.afs_volsync** %11, align 8
  %67 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %68 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %67, i32 0, i32 1
  store %struct.afs_volsync* %66, %struct.afs_volsync** %68, align 8
  %69 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %70 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %13, align 8
  %72 = load i32, i32* @FSFETCHSTATUS, align 4
  %73 = call i32 @htonl(i32 %72)
  %74 = load i32*, i32** %13, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %77 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @htonl(i32 %78)
  %80 = load i32*, i32** %13, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %83 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @htonl(i32 %84)
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %89 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @htonl(i32 %90)
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %95 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %96 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = call i32 @afs_use_fs_server(%struct.afs_call* %94, %struct.TYPE_7__* %97)
  %99 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %100 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %101 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %99, %struct.afs_fid* %100)
  %102 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %103 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %104 = call i32 @afs_set_fc_call(%struct.afs_call* %102, %struct.afs_fs_cursor* %103)
  %105 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %106 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %105, i32 0, i32 0
  %107 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %108 = load i32, i32* @GFP_NOFS, align 4
  %109 = call i32 @afs_make_call(%struct.TYPE_6__* %106, %struct.afs_call* %107, i32 %108)
  %110 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %111 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %112 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %111, i32 0, i32 0
  %113 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %110, %struct.TYPE_6__* %112)
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %54, %46, %23
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_fetch_status(%struct.afs_fs_cursor*, %struct.afs_net*, %struct.afs_fid*, %struct.afs_status_cb*, %struct.afs_volsync*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, %struct.TYPE_7__*) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.afs_fid*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(%struct.TYPE_6__*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
