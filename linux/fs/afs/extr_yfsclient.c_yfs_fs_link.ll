; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@yfs_RXYFSLink = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSLINK = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_link(%struct.afs_fs_cursor* %0, %struct.afs_vnode* %1, i8* %2, %struct.afs_status_cb* %3, %struct.afs_status_cb* %4) #0 {
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
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
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
  %29 = add i64 %28, 4
  %30 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %25, i32* @yfs_RXYFSLink, i64 %29, i32 12)
  store %struct.afs_call* %30, %struct.afs_call** %13, align 8
  %31 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %32 = icmp ne %struct.afs_call* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %93

36:                                               ; preds = %5
  %37 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %38 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %41 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %43 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %44 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %43, i32 0, i32 2
  store %struct.afs_status_cb* %42, %struct.afs_status_cb** %44, align 8
  %45 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %46 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %47 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %46, i32 0, i32 1
  store %struct.afs_status_cb* %45, %struct.afs_status_cb** %47, align 8
  %48 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %49 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %16, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* @YFSLINK, align 4
  %53 = call i32* @xdr_encode_u32(i32* %51, i32 %52)
  store i32* %53, i32** %16, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = call i32* @xdr_encode_u32(i32* %54, i32 0)
  store i32* %55, i32** %16, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %58 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %57, i32 0, i32 0
  %59 = call i32* @xdr_encode_YFSFid(i32* %56, i32* %58)
  store i32* %59, i32** %16, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %15, align 8
  %63 = call i32* @xdr_encode_string(i32* %60, i8* %61, i64 %62)
  store i32* %63, i32** %16, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %66 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %65, i32 0, i32 0
  %67 = call i32* @xdr_encode_YFSFid(i32* %64, i32* %66)
  store i32* %67, i32** %16, align 8
  %68 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @yfs_check_req(%struct.afs_call* %68, i32* %69)
  %71 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %72 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %73 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @afs_use_fs_server(%struct.afs_call* %71, i32 %74)
  %76 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %77 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %78 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %77, i32 0, i32 0
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @trace_afs_make_fs_call1(%struct.afs_call* %76, i32* %78, i8* %79)
  %81 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %82 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %83 = call i32 @afs_set_fc_call(%struct.afs_call* %81, %struct.afs_fs_cursor* %82)
  %84 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %85 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %84, i32 0, i32 0
  %86 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %87 = load i32, i32* @GFP_NOFS, align 4
  %88 = call i32 @afs_make_call(i32* %85, %struct.afs_call* %86, i32 %87)
  %89 = load %struct.afs_call*, %struct.afs_call** %13, align 8
  %90 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %7, align 8
  %91 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %90, i32 0, i32 0
  %92 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %89, i32* %91)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %36, %33
  %94 = load i32, i32* %6, align 4
  ret i32 %94
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
