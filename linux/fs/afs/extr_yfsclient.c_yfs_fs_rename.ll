; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@yfs_RXYFSRename = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSRENAME = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_rename(%struct.afs_fs_cursor* %0, i8* %1, %struct.afs_vnode* %2, i8* %3, %struct.afs_status_cb* %4, %struct.afs_status_cb* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_fs_cursor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.afs_vnode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.afs_status_cb*, align 8
  %13 = alloca %struct.afs_status_cb*, align 8
  %14 = alloca %struct.afs_vnode*, align 8
  %15 = alloca %struct.afs_call*, align 8
  %16 = alloca %struct.afs_net*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.afs_status_cb* %4, %struct.afs_status_cb** %12, align 8
  store %struct.afs_status_cb* %5, %struct.afs_status_cb** %13, align 8
  %20 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %21 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %20, i32 0, i32 3
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %21, align 8
  store %struct.afs_vnode* %22, %struct.afs_vnode** %14, align 8
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %24 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %23)
  store %struct.afs_net* %24, %struct.afs_net** %16, align 8
  %25 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %17, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %18, align 8
  %30 = load %struct.afs_net*, %struct.afs_net** %16, align 8
  %31 = load i64, i64* %17, align 8
  %32 = call i64 @xdr_strlen(i64 %31)
  %33 = add i64 12, %32
  %34 = add i64 %33, 4
  %35 = load i64, i64* %18, align 8
  %36 = call i64 @xdr_strlen(i64 %35)
  %37 = add i64 %34, %36
  %38 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %30, i32* @yfs_RXYFSRename, i64 %37, i32 12)
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
  %49 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.afs_status_cb*, %struct.afs_status_cb** %12, align 8
  %51 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %52 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %51, i32 0, i32 2
  store %struct.afs_status_cb* %50, %struct.afs_status_cb** %52, align 8
  %53 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %54 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 1
  store %struct.afs_status_cb* %53, %struct.afs_status_cb** %55, align 8
  %56 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %57 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %19, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = load i32, i32* @YFSRENAME, align 4
  %61 = call i32* @xdr_encode_u32(i32* %59, i32 %60)
  store i32* %61, i32** %19, align 8
  %62 = load i32*, i32** %19, align 8
  %63 = call i32* @xdr_encode_u32(i32* %62, i32 0)
  store i32* %63, i32** %19, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %66 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %65, i32 0, i32 0
  %67 = call i32* @xdr_encode_YFSFid(i32* %64, i32* %66)
  store i32* %67, i32** %19, align 8
  %68 = load i32*, i32** %19, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %17, align 8
  %71 = call i32* @xdr_encode_string(i32* %68, i8* %69, i64 %70)
  store i32* %71, i32** %19, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %74 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %73, i32 0, i32 0
  %75 = call i32* @xdr_encode_YFSFid(i32* %72, i32* %74)
  store i32* %75, i32** %19, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i64, i64* %18, align 8
  %79 = call i32* @xdr_encode_string(i32* %76, i8* %77, i64 %78)
  store i32* %79, i32** %19, align 8
  %80 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @yfs_check_req(%struct.afs_call* %80, i32* %81)
  %83 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %84 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %8, align 8
  %85 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @afs_use_fs_server(%struct.afs_call* %83, i32 %86)
  %88 = load %struct.afs_call*, %struct.afs_call** %15, align 8
  %89 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %90 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %89, i32 0, i32 0
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @trace_afs_make_fs_call2(%struct.afs_call* %88, i32* %90, i8* %91, i8* %92)
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

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i64, i32) #1

declare dso_local i64 @xdr_strlen(i64) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, i32*) #1

declare dso_local i32* @xdr_encode_string(i32*, i8*, i64) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call2(%struct.afs_call*, i32*, i8*, i8*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
