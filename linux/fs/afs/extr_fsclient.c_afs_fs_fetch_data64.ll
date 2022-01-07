; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_fetch_data64.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_fetch_data64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, i32, i32, %struct.afs_vnode* }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_read = type { i32, i32, i32 }
%struct.afs_call = type { i64*, %struct.afs_read*, i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSFetchData64 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSFETCHDATA64 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_fs_cursor*, %struct.afs_status_cb*, %struct.afs_read*)* @afs_fs_fetch_data64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_fs_fetch_data64(%struct.afs_fs_cursor* %0, %struct.afs_status_cb* %1, %struct.afs_read* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_fs_cursor*, align 8
  %6 = alloca %struct.afs_status_cb*, align 8
  %7 = alloca %struct.afs_read*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.afs_call*, align 8
  %10 = alloca %struct.afs_net*, align 8
  %11 = alloca i64*, align 8
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
  %17 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %19 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %18, i32* @afs_RXFSFetchData64, i32 32, i32 120)
  store %struct.afs_call* %19, %struct.afs_call** %9, align 8
  %20 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %21 = icmp ne %struct.afs_call* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %114

25:                                               ; preds = %3
  %26 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %27 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %30 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 3
  store %struct.afs_status_cb* %31, %struct.afs_status_cb** %33, align 8
  %34 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %35 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %37 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %38 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %37, i32 0, i32 1
  store %struct.afs_read* %36, %struct.afs_read** %38, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  store i64* %41, i64** %11, align 8
  %42 = load i32, i32* @FSFETCHDATA64, align 4
  %43 = call i64 @htonl(i32 %42)
  %44 = load i64*, i64** %11, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @htonl(i32 %49)
  %51 = load i64*, i64** %11, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %54 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @htonl(i32 %56)
  %58 = load i64*, i64** %11, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %61 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @htonl(i32 %63)
  %65 = load i64*, i64** %11, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %68 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @upper_32_bits(i32 %69)
  %71 = call i64 @htonl(i32 %70)
  %72 = load i64*, i64** %11, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 4
  store i64 %71, i64* %73, align 8
  %74 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %75 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @lower_32_bits(i32 %76)
  %78 = call i64 @htonl(i32 %77)
  %79 = load i64*, i64** %11, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 5
  store i64 %78, i64* %80, align 8
  %81 = load i64*, i64** %11, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 6
  store i64 0, i64* %82, align 8
  %83 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %84 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @lower_32_bits(i32 %85)
  %87 = call i64 @htonl(i32 %86)
  %88 = load i64*, i64** %11, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 7
  store i64 %87, i64* %89, align 8
  %90 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %91 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %90, i32 0, i32 0
  %92 = call i32 @refcount_inc(i32* %91)
  %93 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %94 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %95 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @afs_use_fs_server(%struct.afs_call* %93, i32 %96)
  %98 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %99 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %100 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %99, i32 0, i32 0
  %101 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %98, %struct.TYPE_2__* %100)
  %102 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %103 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %104 = call i32 @afs_set_fc_call(%struct.afs_call* %102, %struct.afs_fs_cursor* %103)
  %105 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %106 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %105, i32 0, i32 0
  %107 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %108 = load i32, i32* @GFP_NOFS, align 4
  %109 = call i32 @afs_make_call(i32* %106, %struct.afs_call* %107, i32 %108)
  %110 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %111 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %112 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %111, i32 0, i32 0
  %113 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %110, i32* %112)
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %25, %22
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

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
