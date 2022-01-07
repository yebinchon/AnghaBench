; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iattr = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@yfs_RXYFSStoreStatus = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSSTORESTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_setattr(%struct.afs_fs_cursor* %0, %struct.iattr* %1, %struct.afs_status_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_fs_cursor*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.afs_status_cb*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.afs_call*, align 8
  %10 = alloca %struct.afs_net*, align 8
  %11 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %5, align 8
  store %struct.iattr* %1, %struct.iattr** %6, align 8
  store %struct.afs_status_cb* %2, %struct.afs_status_cb** %7, align 8
  %12 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %13 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %12, i32 0, i32 3
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  store %struct.afs_vnode* %14, %struct.afs_vnode** %8, align 8
  %15 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %16 = call %struct.afs_net* @afs_v2net(%struct.afs_vnode* %15)
  store %struct.afs_net* %16, %struct.afs_net** %10, align 8
  %17 = load %struct.iattr*, %struct.iattr** %6, align 8
  %18 = getelementptr inbounds %struct.iattr, %struct.iattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATTR_SIZE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %25 = load %struct.iattr*, %struct.iattr** %6, align 8
  %26 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %27 = call i32 @yfs_fs_setattr_size(%struct.afs_fs_cursor* %24, %struct.iattr* %25, %struct.afs_status_cb* %26)
  store i32 %27, i32* %4, align 4
  br label %97

28:                                               ; preds = %3
  %29 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %30 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @key_serial(i32 %31)
  %33 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %34 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %38 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %40)
  %42 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %43 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %42, i32* @yfs_RXYFSStoreStatus, i32 16, i32 8)
  store %struct.afs_call* %43, %struct.afs_call** %9, align 8
  %44 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %45 = icmp ne %struct.afs_call* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %28
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %97

49:                                               ; preds = %28
  %50 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %51 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %54 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %56 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %57 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %56, i32 0, i32 1
  store %struct.afs_status_cb* %55, %struct.afs_status_cb** %57, align 8
  %58 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %59 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* @YFSSTORESTATUS, align 4
  %63 = call i32* @xdr_encode_u32(i32* %61, i32 %62)
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32* @xdr_encode_u32(i32* %64, i32 0)
  store i32* %65, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %68 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %67, i32 0, i32 0
  %69 = call i32* @xdr_encode_YFSFid(i32* %66, %struct.TYPE_3__* %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.iattr*, %struct.iattr** %6, align 8
  %72 = call i32* @xdr_encode_YFS_StoreStatus(i32* %70, %struct.iattr* %71)
  store i32* %72, i32** %11, align 8
  %73 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @yfs_check_req(%struct.afs_call* %73, i32* %74)
  %76 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %77 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %78 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @afs_use_fs_server(%struct.afs_call* %76, i32 %79)
  %81 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %82 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %83 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %82, i32 0, i32 0
  %84 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %81, %struct.TYPE_3__* %83)
  %85 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %86 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %87 = call i32 @afs_set_fc_call(%struct.afs_call* %85, %struct.afs_fs_cursor* %86)
  %88 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %89 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %88, i32 0, i32 0
  %90 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %91 = load i32, i32* @GFP_NOFS, align 4
  %92 = call i32 @afs_make_call(i32* %89, %struct.afs_call* %90, i32 %91)
  %93 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %94 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %95 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %94, i32 0, i32 0
  %96 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %93, i32* %95)
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %49, %46, %23
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @yfs_fs_setattr_size(%struct.afs_fs_cursor*, %struct.iattr*, %struct.afs_status_cb*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, %struct.TYPE_3__*) #1

declare dso_local i32* @xdr_encode_YFS_StoreStatus(i32*, %struct.iattr*) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_3__*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
