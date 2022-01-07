; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_setattr_size64.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_setattr_size64.c"
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
@afs_RXFSStoreData64_as_Status = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSSTOREDATA64 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_fs_cursor*, %struct.iattr*, %struct.afs_status_cb*)* @afs_fs_setattr_size64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_fs_setattr_size64(%struct.afs_fs_cursor* %0, %struct.iattr* %1, %struct.afs_status_cb* %2) #0 {
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
  %36 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %37 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %36, i32* @afs_RXFSStoreData64_as_Status, i32 64, i32 108)
  store %struct.afs_call* %37, %struct.afs_call** %9, align 8
  %38 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %39 = icmp ne %struct.afs_call* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %141

43:                                               ; preds = %3
  %44 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %50 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 1
  store %struct.afs_status_cb* %49, %struct.afs_status_cb** %51, align 8
  %52 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %53 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %11, align 8
  %55 = load i32, i32* @FSSTOREDATA64, align 4
  %56 = call i8* @htonl(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %61 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @htonl(i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  %68 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %69 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @htonl(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %76 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %77 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @htonl(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  %84 = load %struct.iattr*, %struct.iattr** %6, align 8
  %85 = call i32 @xdr_encode_AFS_StoreStatus(i32** %11, %struct.iattr* %84)
  %86 = load %struct.iattr*, %struct.iattr** %6, align 8
  %87 = getelementptr inbounds %struct.iattr, %struct.iattr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 32
  %90 = call i8* @htonl(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %11, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  %94 = load %struct.iattr*, %struct.iattr** %6, align 8
  %95 = getelementptr inbounds %struct.iattr, %struct.iattr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @htonl(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %11, align 8
  store i32 0, i32* %101, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %11, align 8
  store i32 0, i32* %103, align 4
  %105 = load %struct.iattr*, %struct.iattr** %6, align 8
  %106 = getelementptr inbounds %struct.iattr, %struct.iattr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 32
  %109 = call i8* @htonl(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  %113 = load %struct.iattr*, %struct.iattr** %6, align 8
  %114 = getelementptr inbounds %struct.iattr, %struct.iattr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @htonl(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %11, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %11, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %121 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %122 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @afs_use_fs_server(%struct.afs_call* %120, i32 %123)
  %125 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %126 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %127 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %126, i32 0, i32 0
  %128 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %125, %struct.TYPE_2__* %127)
  %129 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %130 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %131 = call i32 @afs_set_fc_call(%struct.afs_call* %129, %struct.afs_fs_cursor* %130)
  %132 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %133 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %132, i32 0, i32 0
  %134 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %135 = load i32, i32* @GFP_NOFS, align 4
  %136 = call i32 @afs_make_call(i32* %133, %struct.afs_call* %134, i32 %135)
  %137 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %138 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %139 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %138, i32 0, i32 0
  %140 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %137, i32* %139)
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %43, %40
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i32 @ASSERT(i32) #1

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
