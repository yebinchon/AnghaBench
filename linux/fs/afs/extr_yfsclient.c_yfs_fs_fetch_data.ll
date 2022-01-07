; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_fetch_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_fs_fetch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_read = type { i32, i32, i32 }
%struct.afs_call = type { i32*, %struct.afs_read*, i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c",%x,{%llx:%llu},%llx,%llx\00", align 1
@yfs_RXYFSFetchData64 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFSFETCHDATA64 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yfs_fs_fetch_data(%struct.afs_fs_cursor* %0, %struct.afs_status_cb* %1, %struct.afs_read* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_fs_cursor*, align 8
  %6 = alloca %struct.afs_status_cb*, align 8
  %7 = alloca %struct.afs_read*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.afs_call*, align 8
  %10 = alloca %struct.afs_net*, align 8
  %11 = alloca i32*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %5, align 8
  store %struct.afs_status_cb* %1, %struct.afs_status_cb** %6, align 8
  store %struct.afs_read* %2, %struct.afs_read** %7, align 8
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
  %29 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %30 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %33 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @_enter(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %37 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %36, i32* @yfs_RXYFSFetchData64, i32 20, i32 12)
  store %struct.afs_call* %37, %struct.afs_call** %9, align 8
  %38 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %39 = icmp ne %struct.afs_call* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %106

43:                                               ; preds = %3
  %44 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %50 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 3
  store %struct.afs_status_cb* %49, %struct.afs_status_cb** %51, align 8
  %52 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %53 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %55 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %56 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %55, i32 0, i32 1
  store %struct.afs_read* %54, %struct.afs_read** %56, align 8
  %57 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %58 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @YFSFETCHDATA64, align 4
  %62 = call i32* @xdr_encode_u32(i32* %60, i32 %61)
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32* @xdr_encode_u32(i32* %63, i32 0)
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %67 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %66, i32 0, i32 0
  %68 = call i32* @xdr_encode_YFSFid(i32* %65, %struct.TYPE_3__* %67)
  store i32* %68, i32** %11, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %71 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @xdr_encode_u64(i32* %69, i32 %72)
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %76 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32* @xdr_encode_u64(i32* %74, i32 %77)
  store i32* %78, i32** %11, align 8
  %79 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @yfs_check_req(%struct.afs_call* %79, i32* %80)
  %82 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %83 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %82, i32 0, i32 0
  %84 = call i32 @refcount_inc(i32* %83)
  %85 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %86 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %87 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @afs_use_fs_server(%struct.afs_call* %85, i32 %88)
  %90 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %91 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %92 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %91, i32 0, i32 0
  %93 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %90, %struct.TYPE_3__* %92)
  %94 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %95 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %96 = call i32 @afs_set_fc_call(%struct.afs_call* %94, %struct.afs_fs_cursor* %95)
  %97 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %98 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %97, i32 0, i32 0
  %99 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %100 = load i32, i32* @GFP_NOFS, align 4
  %101 = call i32 @afs_make_call(i32* %98, %struct.afs_call* %99, i32 %100)
  %102 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %103 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %104 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %103, i32 0, i32 0
  %105 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %102, i32* %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %43, %40
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32* @xdr_encode_u32(i32*, i32) #1

declare dso_local i32* @xdr_encode_YFSFid(i32*, %struct.TYPE_3__*) #1

declare dso_local i32* @xdr_encode_u64(i32*, i32) #1

declare dso_local i32 @yfs_check_req(%struct.afs_call*, i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

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
