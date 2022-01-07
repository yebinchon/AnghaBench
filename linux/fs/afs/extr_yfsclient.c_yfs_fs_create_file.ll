; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.afs_fid = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, %struct.afs_fid*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSCreateFile = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSCREATEFILE = common dso_local global i32 0, align 4
@yfs_LockNone = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_create_file(%struct.afs_fs_cursor* %0, i8* %1, i32 %2, %struct.afs_status_cb* %3, %struct.afs_fid* %4, %struct.afs_status_cb* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_fs_cursor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.afs_status_cb*, align 8
  %12 = alloca %struct.afs_fid*, align 8
  %13 = alloca %struct.afs_status_cb*, align 8
  %14 = alloca %struct.afs_vnode*, align 8
  %15 = alloca %struct.afs_call*, align 8
  %16 = alloca %struct.afs_net*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.afs_status_cb* %3, %struct.afs_status_cb** %11, align 8
  store %struct.afs_fid* %4, %struct.afs_fid** %12, align 8
  store %struct.afs_status_cb* %5, %struct.afs_status_cb** %13, align 8
  %21 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %22 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %21, i32 0, i32 3
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %22, align 8
  store %struct.afs_vnode* %23, %struct.afs_vnode** %14, align 8
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %25 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %24)
  store %struct.afs_net* %25, %struct.afs_net** %16, align 8
  %26 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %17, align 8
  %29 = load i64, i64* %17, align 8
  %30 = call i32 @xdr_strlen(i64 %29)
  %31 = sext i32 %30 to i64
  %32 = add i64 12, %31
  %33 = add i64 %32, 4
  %34 = add i64 %33, 4
  store i64 %34, i64* %18, align 8
  store i64 20, i64* %19, align 8
  %35 = load %struct.afs_net*, %struct.afs_net** %16, align 8
  %36 = load i64, i64* %18, align 8
  %37 = load i64, i64* %19, align 8
  %38 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %35, i32* @afs_RXFSCreateFile, i64 %36, i64 %37)
  store %struct.afs_call* %38, %struct.afs_call** %15, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %40 = icmp ne %struct.afs_call* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %6
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %106

44:                                               ; preds = %6
  %45 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %46 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %49 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %51 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %52 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %51, i32 0, i32 3
  store %struct.afs_status_cb* %50, %struct.afs_status_cb** %52, align 8
  %53 = load %struct.afs_fid*, %struct.afs_fid** %12, align 8
  %54 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 2
  store %struct.afs_fid* %53, %struct.afs_fid** %55, align 8
  %56 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %57 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %58 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %57, i32 0, i32 1
  store %struct.afs_status_cb* %56, %struct.afs_status_cb** %58, align 8
  %59 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %60 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %20, align 8
  %62 = load i32*, i32** %20, align 8
  %63 = load i32, i32* @YFSCREATEFILE, align 4
  %64 = call i32* @xdr_encode_u32(i32* %62, i32 %63)
  store i32* %64, i32** %20, align 8
  %65 = load i32*, i32** %20, align 8
  %66 = call i32* @xdr_encode_u32(i32* %65, i32 0)
  store i32* %66, i32** %20, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %69 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %68, i32 0, i32 0
  %70 = call i32* @xdr_encode_YFSFid(i32* %67, i32* %69)
  store i32* %70, i32** %20, align 8
  %71 = load i32*, i32** %20, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %17, align 8
  %74 = call i32* @xdr_encode_string(i32* %71, i8* %72, i64 %73)
  store i32* %74, i32** %20, align 8
  %75 = load i32*, i32** %20, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32* @xdr_encode_YFSStoreStatus_mode(i32* %75, i32 %76)
  store i32* %77, i32** %20, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = load i32, i32* @yfs_LockNone, align 4
  %80 = call i32* @xdr_encode_u32(i32* %78, i32 %79)
  store i32* %80, i32** %20, align 8
  %81 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %82 = load i32*, i32** %20, align 8
  %83 = call i32 @yfs_check_req(%struct.afs_call* %81, i32* %82)
  %84 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %85 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %86 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @afs_use_fs_server(%struct.afs_call* %84, i32 %87)
  %89 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %90 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %91 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %90, i32 0, i32 0
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @trace_afs_make_fs_call1(%struct.afs_call* %89, i32* %91, i8* %92)
  %94 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %95 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %96 = call i32 @afs_set_fc_call(%struct.afs_call* %94, %struct.afs_fs_cursor* %95)
  %97 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %98 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %97, i32 0, i32 0
  %99 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %100 = load i32, i32* @GFP_NOFS, align 4
  %101 = call i32 @afs_make_call(i32* %98, %struct.afs_call* %99, i32 %100)
  %102 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %103 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %104 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %103, i32 0, i32 0
  %105 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %102, i32* %104)
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %44, %41
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xdr_strlen(i64) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i64, i64) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, i32*) #1

declare dso_local i32* @xdr_encode_string(i32*, i8*, i64) #1

declare dso_local i32* @xdr_encode_YFSStoreStatus_mode(i32*, i32) #1

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
