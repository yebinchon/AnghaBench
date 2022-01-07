; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_remove_file2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_remove_file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@yfs_RXYFSRemoveFile2 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSREMOVEFILE2 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_remove_file2(%struct.afs_fs_cursor* %0, %struct.afs_vnode* %1, i8* %2, %struct.afs_status_cb* %3, %struct.afs_status_cb* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_fs_cursor*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.afs_status_cb*, align 8
  %11 = alloca %struct.afs_status_cb*, align 8
  %12 = alloca %struct.afs_vnode*, align 8
  %13 = alloca %struct.afs_call*, align 8
  %14 = alloca %struct.afs_net*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %7, align 8
  store %struct.afs_vnode* %1, %struct.afs_vnode** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.afs_status_cb* %3, %struct.afs_status_cb** %10, align 8
  store %struct.afs_status_cb* %4, %struct.afs_status_cb** %11, align 8
  %17 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %18 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %17, i32 0, i32 3
  %19 = load %struct.afs_vnode*, %struct.afs_vnode** %18, align 8
  store %struct.afs_vnode* %19, %struct.afs_vnode** %12, align 8
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %21 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %20)
  store %struct.afs_net* %21, %struct.afs_net** %14, align 8
  %22 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %15, align 8
  %25 = load %struct.afs_net*, %struct.afs_net** %14, align 8
  %26 = load i64, i64* %15, align 8
  %27 = call i64 @xdr_strlen(i64 %26)
  %28 = add i64 12, %27
  %29 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %25, i32* @yfs_RXYFSRemoveFile2, i64 %28, i32 16)
  store %struct.afs_call* %29, %struct.afs_call** %13, align 8
  %30 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %31 = icmp ne %struct.afs_call* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %88

35:                                               ; preds = %5
  %36 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %37 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %42 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %43 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %42, i32 0, i32 2
  store %struct.afs_status_cb* %41, %struct.afs_status_cb** %43, align 8
  %44 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %45 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %46 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %45, i32 0, i32 1
  store %struct.afs_status_cb* %44, %struct.afs_status_cb** %46, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %16, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* @YFSREMOVEFILE2, align 4
  %52 = call i32* @xdr_encode_u32(i32* %50, i32 %51)
  store i32* %52, i32** %16, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i32* @xdr_encode_u32(i32* %53, i32 0)
  store i32* %54, i32** %16, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %57 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %56, i32 0, i32 0
  %58 = call i32* @xdr_encode_YFSFid(i32* %55, i32* %57)
  store i32* %58, i32** %16, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32* @xdr_encode_string(i32* %59, i8* %60, i64 %61)
  store i32* %62, i32** %16, align 8
  %63 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @yfs_check_req(%struct.afs_call* %63, i32* %64)
  %66 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %67 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %68 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @afs_use_fs_server(%struct.afs_call* %66, i32 %69)
  %71 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %72 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %73 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %72, i32 0, i32 0
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @trace_afs_make_fs_call1(%struct.afs_call* %71, i32* %73, i8* %74)
  %76 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %77 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %78 = call i32 @afs_set_fc_call(%struct.afs_call* %76, %struct.afs_fs_cursor* %77)
  %79 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %80 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %79, i32 0, i32 0
  %81 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %82 = load i32, i32* @GFP_NOFS, align 4
  %83 = call i32 @afs_make_call(i32* %80, %struct.afs_call* %81, i32 %82)
  %84 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %85 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %86 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %85, i32 0, i32 0
  %87 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %84, i32* %86)
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %35, %32
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i64, i32) #1

declare dso_local i64 @xdr_strlen(i64) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, i32*) #1

declare dso_local i32* @xdr_encode_string(i32*, i8*, i64) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call1(%struct.afs_call*, i32*, i8*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
