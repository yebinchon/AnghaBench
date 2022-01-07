; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_setattr_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_setattr_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iattr = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@yfs_RXYFSStoreData64_as_Status = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSSTOREDATA64 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_fs_cursor*, %struct.iattr*, %struct.afs_status_cb*)* @yfs_fs_setattr_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yfs_fs_setattr_size(%struct.afs_fs_cursor* %0, %struct.iattr* %1, %struct.afs_status_cb* %2) #0 {
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
  %17 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %18 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @key_serial(i32 %19)
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %22 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %28)
  %30 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %31 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %30, i32* @yfs_RXYFSStoreData64_as_Status, i32 28, i32 8)
  store %struct.afs_call* %31, %struct.afs_call** %9, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %33 = icmp ne %struct.afs_call* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %97

37:                                               ; preds = %3
  %38 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %39 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %42 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %44 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %45 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %44, i32 0, i32 1
  store %struct.afs_status_cb* %43, %struct.afs_status_cb** %45, align 8
  %46 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %47 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @YFSSTOREDATA64, align 4
  %51 = call i32* @xdr_encode_u32(i32* %49, i32 %50)
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32* @xdr_encode_u32(i32* %52, i32 0)
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %56 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %55, i32 0, i32 0
  %57 = call i32* @xdr_encode_YFSFid(i32* %54, %struct.TYPE_3__* %56)
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.iattr*, %struct.iattr** %6, align 8
  %60 = call i32* @xdr_encode_YFS_StoreStatus(i32* %58, %struct.iattr* %59)
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.iattr*, %struct.iattr** %6, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @xdr_encode_u64(i32* %61, i32 %64)
  store i32* %65, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32* @xdr_encode_u64(i32* %66, i32 0)
  store i32* %67, i32** %11, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load %struct.iattr*, %struct.iattr** %6, align 8
  %70 = getelementptr inbounds %struct.iattr, %struct.iattr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32* @xdr_encode_u64(i32* %68, i32 %71)
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

97:                                               ; preds = %37, %34
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, %struct.TYPE_3__*) #1

declare dso_local i32* @xdr_encode_YFS_StoreStatus(i32*, %struct.iattr*) #1

declare dso_local i32* @xdr_encode_u64(i32*, i32) #1

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
