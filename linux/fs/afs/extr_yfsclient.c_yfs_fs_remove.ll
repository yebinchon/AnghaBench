; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@yfs_RXYFSRemoveDir = common dso_local global i32 0, align 4
@yfs_RXYFSRemoveFile = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSREMOVEDIR = common dso_local global i32 0, align 4
@YFSREMOVEFILE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_remove(%struct.afs_fs_cursor* %0, %struct.afs_vnode* %1, i8* %2, i32 %3, %struct.afs_status_cb* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_fs_cursor*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.afs_status_cb*, align 8
  %12 = alloca %struct.afs_vnode*, align 8
  %13 = alloca %struct.afs_call*, align 8
  %14 = alloca %struct.afs_net*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %7, align 8
  store %struct.afs_vnode* %1, %struct.afs_vnode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
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
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32* @yfs_RXYFSRemoveDir, i32* @yfs_RXYFSRemoveFile
  %30 = load i64, i64* %15, align 8
  %31 = call i64 @xdr_strlen(i64 %30)
  %32 = add i64 12, %31
  %33 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %25, i32* %29, i64 %32, i32 8)
  store %struct.afs_call* %33, %struct.afs_call** %13, align 8
  %34 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %35 = icmp ne %struct.afs_call* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %96

39:                                               ; preds = %5
  %40 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %41 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %44 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %46 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %47 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %46, i32 0, i32 1
  store %struct.afs_status_cb* %45, %struct.afs_status_cb** %47, align 8
  %48 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %49 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %16, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* @YFSREMOVEDIR, align 4
  br label %58

56:                                               ; preds = %39
  %57 = load i32, i32* @YFSREMOVEFILE, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = call i32* @xdr_encode_u32(i32* %51, i32 %59)
  store i32* %60, i32** %16, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = call i32* @xdr_encode_u32(i32* %61, i32 0)
  store i32* %62, i32** %16, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %65 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %64, i32 0, i32 0
  %66 = call i32* @xdr_encode_YFSFid(i32* %63, i32* %65)
  store i32* %66, i32** %16, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32* @xdr_encode_string(i32* %67, i8* %68, i64 %69)
  store i32* %70, i32** %16, align 8
  %71 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = call i32 @yfs_check_req(%struct.afs_call* %71, i32* %72)
  %74 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %75 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %76 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @afs_use_fs_server(%struct.afs_call* %74, i32 %77)
  %79 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %80 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %81 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %80, i32 0, i32 0
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @trace_afs_make_fs_call1(%struct.afs_call* %79, i32* %81, i8* %82)
  %84 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %85 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %86 = call i32 @afs_set_fc_call(%struct.afs_call* %84, %struct.afs_fs_cursor* %85)
  %87 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %88 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %87, i32 0, i32 0
  %89 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %90 = load i32, i32* @GFP_NOFS, align 4
  %91 = call i32 @afs_make_call(i32* %88, %struct.afs_call* %89, i32 %90)
  %92 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %93 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %94 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %93, i32 0, i32 0
  %95 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %92, i32* %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %58, %36
  %97 = load i32, i32* %6, align 4
  ret i32 %97
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
