; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_fetch_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_fs_fetch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, %struct.TYPE_6__*, i32, %struct.afs_vnode* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_read = type { i32, i64, i64 }
%struct.afs_call = type { i32*, %struct.afs_read*, i32*, %struct.afs_status_cb*, i32 }
%struct.afs_net = type { i32 }

@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSFetchData = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSFETCHDATA = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_fetch_data(%struct.afs_fs_cursor* %0, %struct.afs_status_cb* %1, %struct.afs_read* %2) #0 {
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
  %28 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %29 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %30 = call i32 @yfs_fs_fetch_data(%struct.afs_fs_cursor* %27, %struct.afs_status_cb* %28, %struct.afs_read* %29)
  store i32 %30, i32* %4, align 4
  br label %147

31:                                               ; preds = %3
  %32 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %33 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @upper_32_bits(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %31
  %38 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %39 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @upper_32_bits(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %45 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %48 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i64 @upper_32_bits(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43, %37, %31
  %54 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %55 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %56 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %57 = call i32 @afs_fs_fetch_data64(%struct.afs_fs_cursor* %54, %struct.afs_status_cb* %55, %struct.afs_read* %56)
  store i32 %57, i32* %4, align 4
  br label %147

58:                                               ; preds = %43
  %59 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.afs_net*, %struct.afs_net** %10, align 8
  %61 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %60, i32* @afs_RXFSFetchData, i32 24, i32 120)
  store %struct.afs_call* %61, %struct.afs_call** %9, align 8
  %62 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %63 = icmp ne %struct.afs_call* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %147

67:                                               ; preds = %58
  %68 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %69 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %72 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %74 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %75 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %74, i32 0, i32 3
  store %struct.afs_status_cb* %73, %struct.afs_status_cb** %75, align 8
  %76 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %77 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %79 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %80 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %79, i32 0, i32 1
  store %struct.afs_read* %78, %struct.afs_read** %80, align 8
  %81 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %82 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %11, align 8
  %84 = load i32, i32* @FSFETCHDATA, align 4
  %85 = call i32 @htonl(i32 %84)
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %89 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @htonl(i32 %91)
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %96 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @htonl(i32 %98)
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %103 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @htonl(i32 %105)
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %110 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @lower_32_bits(i64 %111)
  %113 = call i32 @htonl(i32 %112)
  %114 = load i32*, i32** %11, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %117 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @lower_32_bits(i64 %118)
  %120 = call i32 @htonl(i32 %119)
  %121 = load i32*, i32** %11, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  store i32 %120, i32* %122, align 4
  %123 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %124 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %123, i32 0, i32 0
  %125 = call i32 @refcount_inc(i32* %124)
  %126 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %127 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %128 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = call i32 @afs_use_fs_server(%struct.afs_call* %126, %struct.TYPE_6__* %129)
  %131 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %132 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %133 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %132, i32 0, i32 0
  %134 = call i32 @trace_afs_make_fs_call(%struct.afs_call* %131, %struct.TYPE_5__* %133)
  %135 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %136 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %137 = call i32 @afs_set_fc_call(%struct.afs_call* %135, %struct.afs_fs_cursor* %136)
  %138 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %139 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %138, i32 0, i32 0
  %140 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %141 = load i32, i32* @GFP_NOFS, align 4
  %142 = call i32 @afs_make_call(i32* %139, %struct.afs_call* %140, i32 %141)
  %143 = load %struct.afs_call*, %struct.afs_call** %9, align 8
  %144 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %145 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %144, i32 0, i32 0
  %146 = call i32 @afs_wait_for_call_to_complete(%struct.afs_call* %143, i32* %145)
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %67, %64, %53, %26
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.afs_net* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_fetch_data(%struct.afs_fs_cursor*, %struct.afs_status_cb*, %struct.afs_read*) #1

declare dso_local i64 @upper_32_bits(i64) #1

declare dso_local i32 @afs_fs_fetch_data64(%struct.afs_fs_cursor*, %struct.afs_status_cb*, %struct.afs_read*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @refcount_inc(i32*) #1

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
