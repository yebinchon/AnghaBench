; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_setattr_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_setattr_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.iattr = type { i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_call = type { i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c",%x,{%llx:%llu},,\00", align 1
@ATTR_SIZE = common dso_local global i32 0, align 4
@afs_RXFSStoreData_as_Status = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSSTOREDATA = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_fs_cursor*, %struct.iattr*, %struct.afs_status_cb*)* @afs_fs_setattr_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_fs_setattr_size(%struct.afs_fs_cursor* %0, %struct.iattr* %1, %struct.afs_status_cb* %2) #0 {
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
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %28)
  %30 = load %struct.iattr*, %struct.iattr** %6, align 8
  %31 = getelementptr inbounds %struct.iattr, %struct.iattr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATTR_SIZE, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.iattr*, %struct.iattr** %6, align 8
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %3
  %42 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %43 = load %struct.iattr*, %struct.iattr** %6, align 8
  %44 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %45 = call i32 @afs_fs_setattr_size64(%struct.afs_fs_cursor* %42, %struct.iattr* %43, %struct.afs_status_cb* %44)
  store i32 %45, i32* %4, align 4
  br label %134

46:                                               ; preds = %3
  %47 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %48 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %47, i32* @afs_RXFSStoreData_as_Status, i32 52, i32 108)
  store %struct.afs_call* %48, %struct.afs_call** %9, align 8
  %49 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %50 = icmp ne %struct.afs_call* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %134

54:                                               ; preds = %46
  %55 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %56 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %59 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %61 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 1
  store %struct.afs_status_cb* %60, %struct.afs_status_cb** %62, align 8
  %63 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %64 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %11, align 8
  %66 = load i32, i32* @FSSTOREDATA, align 4
  %67 = call i8* @htonl(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  %71 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %72 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @htonl(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  %79 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %80 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @htonl(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  %87 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %88 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @htonl(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  %95 = load %struct.iattr*, %struct.iattr** %6, align 8
  %96 = call i32 @xdr_encode_AFS_StoreStatus(i32** %11, %struct.iattr* %95)
  %97 = load %struct.iattr*, %struct.iattr** %6, align 8
  %98 = getelementptr inbounds %struct.iattr, %struct.iattr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @htonl(i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %11, align 8
  store i32 0, i32* %104, align 4
  %106 = load %struct.iattr*, %struct.iattr** %6, align 8
  %107 = getelementptr inbounds %struct.iattr, %struct.iattr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @htonl(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  %113 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %114 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %115 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @afs_use_fs_server(%struct.afs_call* %113, i32 %116)
  %118 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %119 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %120 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %119, i32 0, i32 0
  %121 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %118, %struct.TYPE_2__* %120)
  %122 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %123 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %124 = call i32 @afs_set_fc_call(%struct.afs_call* %122, %struct.afs_fs_cursor* %123)
  %125 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %126 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %125, i32 0, i32 0
  %127 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %128 = load i32, i32* @GFP_NOFS, align 4
  %129 = call i32 @afs_make_call(i32* %126, %struct.afs_call* %127, i32 %128)
  %130 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %131 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %132 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %131, i32 0, i32 0
  %133 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %130, i32* %132)
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %54, %51, %41
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @afs_fs_setattr_size64(%struct.afs_fs_cursor*, %struct.iattr*, %struct.afs_status_cb*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_encode_AFS_StoreStatus(i32**, %struct.iattr*) #1

declare dso_local i32 @afs_use_fs_server(%struct.afs_call*, i32) #1

declare dso_local i32 @trace_afs_make_fs_call(%struct.afs_call*, %struct.TYPE_2__*) #1

declare dso_local i32 @afs_set_fc_call(%struct.afs_call*, %struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i32 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
