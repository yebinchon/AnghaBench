; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, %struct.TYPE_6__*, i32, %struct.afs_vnode* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.iattr = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@afs_RXFSStoreStatus = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSSTORESTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_setattr(%struct.afs_fs_cursor* %0, %struct.iattr* %1, %struct.afs_status_cb* %2) #0 {
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
  %17 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %18 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %19 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %17, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %28 = load %struct.iattr*, %struct.iattr** %6, align 8
  %29 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %30 = call i32 @yfs_fs_setattr(%struct.afs_fs_cursor* %27, %struct.iattr* %28, %struct.afs_status_cb* %29)
  store i32 %30, i32* %4, align 4
  br label %128

31:                                               ; preds = %3
  %32 = load %struct.iattr*, %struct.iattr** %6, align 8
  %33 = getelementptr inbounds %struct.iattr, %struct.iattr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ATTR_SIZE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %40 = load %struct.iattr*, %struct.iattr** %6, align 8
  %41 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %42 = call i32 @afs_fs_setattr_size(%struct.afs_fs_cursor* %39, %struct.iattr* %40, %struct.afs_status_cb* %41)
  store i32 %42, i32* %4, align 4
  br label %128

43:                                               ; preds = %31
  %44 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @key_serial(i32 %46)
  %48 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %49 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %53 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i32 %55)
  %57 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %58 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %57, i32* @afs_RXFSStoreStatus, i32 40, i32 108)
  store %struct.afs_call* %58, %struct.afs_call** %9, align 8
  %59 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %60 = icmp ne %struct.afs_call* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %43
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %128

64:                                               ; preds = %43
  %65 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %66 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %69 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %71 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %72 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %71, i32 0, i32 1
  store %struct.afs_status_cb* %70, %struct.afs_status_cb** %72, align 8
  %73 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %74 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %11, align 8
  %76 = load i32, i32* @FSSTORESTATUS, align 4
  %77 = call i8* @htonl(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  %81 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %82 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @htonl(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  %89 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %90 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @htonl(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  %97 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %98 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @htonl(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  %105 = load %struct.iattr*, %struct.iattr** %6, align 8
  %106 = call i32 @xdr_encode_AFS_StoreStatus(i32** %11, %struct.iattr* %105)
  %107 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %108 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %109 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i32 @afs_use_fs_server(%struct.afs_call* %107, %struct.TYPE_6__* %110)
  %112 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %113 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %114 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %113, i32 0, i32 0
  %115 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %112, %struct.TYPE_5__* %114)
  %116 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %117 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %118 = call i32 @afs_set_fc_call(%struct.afs_call* %116, %struct.afs_fs_cursor* %117)
  %119 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %120 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %119, i32 0, i32 0
  %121 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %122 = load i32, i32* @GFP_NOFS, align 4
  %123 = call i32 @afs_make_call(i32* %120, %struct.afs_call* %121, i32 %122)
  %124 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %125 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %126 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %125, i32 0, i32 0
  %127 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %124, i32* %126)
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %64, %61, %38, %26
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_setattr(%struct.afs_fs_cursor*, %struct.iattr*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_fs_setattr_size(%struct.afs_fs_cursor*, %struct.iattr*, %struct.afs_status_cb*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_encode_AFS_StoreStatus(i32**, %struct.iattr*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, %struct.TYPE_6__*) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_5__*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
