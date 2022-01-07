; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_fetch_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_fetch_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.afs_net = type { i32 }
%struct.afs_fid = type { i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_volsync = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_volsync*, %struct.afs_status_cb*, i32 }

@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@yfs_RXYFSFetchStatus = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSFETCHSTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_fetch_status(%struct.afs_fs_cursor* %0, %struct.afs_net* %1, %struct.afs_fid* %2, %struct.afs_status_cb* %3, %struct.afs_volsync* %4) #0 {
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
  %14 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %15 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @key_serial(i32 %16)
  %18 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %19 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %22 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23)
  %25 = load %struct.afs_net*, %struct.afs_net** %8, align 8
  %26 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %25, i32* @yfs_RXYFSFetchStatus, i32 12, i32 12)
  store %struct.afs_call* %26, %struct.afs_call** %12, align 8
  %27 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %28 = icmp ne %struct.afs_call* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %33 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %83

37:                                               ; preds = %5
  %38 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %39 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %42 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %44 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %45 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %44, i32 0, i32 2
  store %struct.afs_status_cb* %43, %struct.afs_status_cb** %45, align 8
  %46 = load %struct.afs_volsync*, %struct.afs_volsync** %11, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 1
  store %struct.afs_volsync* %46, %struct.afs_volsync** %48, align 8
  %49 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @YFSFETCHSTATUS, align 4
  %54 = call i32* @xdr_encode_u32(i32* %52, i32 %53)
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32* @xdr_encode_u32(i32* %55, i32 0)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %59 = call i32* @xdr_encode_YFSFid(i32* %57, %struct.afs_fid* %58)
  store i32* %59, i32** %13, align 8
  %60 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @yfs_check_req(%struct.afs_call* %60, i32* %61)
  %63 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %64 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %65 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @afs_use_fs_server(%struct.afs_call* %63, i32 %66)
  %68 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %69 = load %struct.afs_fid*, %struct.afs_fid** %9, align 8
  %70 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %68, %struct.afs_fid* %69)
  %71 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %72 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %73 = call i32 @afs_set_fc_call(%struct.afs_call* %71, %struct.afs_fs_cursor* %72)
  %74 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %75 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %74, i32 0, i32 0
  %76 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %77 = load i32, i32* @GFP_NOFS, align 4
  %78 = call i32 @afs_make_call(%struct.TYPE_3__* %75, %struct.afs_call* %76, i32 %77)
  %79 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %80 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %81 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %80, i32 0, i32 0
  %82 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %79, %struct.TYPE_3__* %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %37, %29
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, %struct.afs_fid*) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.afs_fid*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(%struct.TYPE_3__*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
