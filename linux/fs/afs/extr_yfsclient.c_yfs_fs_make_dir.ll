; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_make_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_make_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.afs_fid = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, %struct.afs_fid*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@yfs_RXFSMakeDir = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSMAKEDIR = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_make_dir(%struct.afs_fs_cursor* %0, i8* %1, i32 %2, %struct.afs_status_cb* %3, %struct.afs_fid* %4, %struct.afs_status_cb* %5) #0 {
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
  store i64 %33, i64* %18, align 8
  store i64 20, i64* %19, align 8
  %34 = load %struct.afs_net*, %struct.afs_net** %16, align 8
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* %19, align 8
  %37 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %34, i32* @yfs_RXFSMakeDir, i64 %35, i64 %36)
  store %struct.afs_call* %37, %struct.afs_call** %15, align 8
  %38 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %39 = icmp ne %struct.afs_call* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %6
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %102

43:                                               ; preds = %6
  %44 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %45 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %50 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 3
  store %struct.afs_status_cb* %49, %struct.afs_status_cb** %51, align 8
  %52 = load %struct.afs_fid*, %struct.afs_fid** %12, align 8
  %53 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %54 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %53, i32 0, i32 2
  store %struct.afs_fid* %52, %struct.afs_fid** %54, align 8
  %55 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %56 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %57 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %56, i32 0, i32 1
  store %struct.afs_status_cb* %55, %struct.afs_status_cb** %57, align 8
  %58 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %59 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %20, align 8
  %61 = load i32*, i32** %20, align 8
  %62 = load i32, i32* @YFSMAKEDIR, align 4
  %63 = call i32* @xdr_encode_u32(i32* %61, i32 %62)
  store i32* %63, i32** %20, align 8
  %64 = load i32*, i32** %20, align 8
  %65 = call i32* @xdr_encode_u32(i32* %64, i32 0)
  store i32* %65, i32** %20, align 8
  %66 = load i32*, i32** %20, align 8
  %67 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %68 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %67, i32 0, i32 0
  %69 = call i32* @xdr_encode_YFSFid(i32* %66, i32* %68)
  store i32* %69, i32** %20, align 8
  %70 = load i32*, i32** %20, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i64, i64* %17, align 8
  %73 = call i32* @xdr_encode_string(i32* %70, i8* %71, i64 %72)
  store i32* %73, i32** %20, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32* @xdr_encode_YFSStoreStatus_mode(i32* %74, i32 %75)
  store i32* %76, i32** %20, align 8
  %77 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = call i32 @yfs_check_req(%struct.afs_call* %77, i32* %78)
  %80 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %81 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %82 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @afs_use_fs_server(%struct.afs_call* %80, i32 %83)
  %85 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %86 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %87 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %86, i32 0, i32 0
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @trace_afs_make_fs_call1(%struct.afs_call* %85, i32* %87, i8* %88)
  %90 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %91 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %92 = call i32 @afs_set_fc_call(%struct.afs_call* %90, %struct.afs_fs_cursor* %91)
  %93 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %94 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %93, i32 0, i32 0
  %95 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %96 = load i32, i32* @GFP_NOFS, align 4
  %97 = call i32 @afs_make_call(i32* %94, %struct.afs_call* %95, i32 %96)
  %98 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %99 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %100 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %99, i32 0, i32 0
  %101 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %98, i32* %100)
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %43, %40
  %103 = load i32, i32* %7, align 4
  ret i32 %103
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
