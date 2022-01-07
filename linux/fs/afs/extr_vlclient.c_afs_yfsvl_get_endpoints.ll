; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_yfsvl_get_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_yfsvl_get_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_addr_list = type { i32 }
%struct.afs_vl_cursor = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.afs_net* }
%struct.afs_net = type { i32 }
%struct.afs_call = type { i32*, i32, i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_YFSVLGetEndpoints = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AFS_VL_MAX_LIFESPAN = common dso_local global i32 0, align 4
@YVLGETENDPOINTS = common dso_local global i32 0, align 4
@YFS_SERVER_UUID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_addr_list* @afs_yfsvl_get_endpoints(%struct.afs_vl_cursor* %0, i32* %1) #0 {
  %3 = alloca %struct.afs_addr_list*, align 8
  %4 = alloca %struct.afs_vl_cursor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.afs_call*, align 8
  %7 = alloca %struct.afs_net*, align 8
  %8 = alloca i32*, align 8
  store %struct.afs_vl_cursor* %0, %struct.afs_vl_cursor** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %4, align 8
  %10 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.afs_net*, %struct.afs_net** %12, align 8
  store %struct.afs_net* %13, %struct.afs_net** %7, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.afs_net*, %struct.afs_net** %7, align 8
  %16 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %15, i32* @afs_YFSVLGetEndpoints, i32 12, i32 16)
  store %struct.afs_call* %16, %struct.afs_call** %6, align 8
  %17 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %18 = icmp ne %struct.afs_call* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.afs_addr_list* @ERR_PTR(i32 %21)
  store %struct.afs_addr_list* %22, %struct.afs_addr_list** %3, align 8
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %4, align 8
  %25 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %28 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %30 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @AFS_VL_MAX_LIFESPAN, align 4
  %32 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %35 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* @YVLGETENDPOINTS, align 4
  %38 = call i8* @htonl(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32, i32* @YFS_SERVER_UUID, align 4
  %43 = call i8* @htonl(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @memcpy(i32* %47, i32* %48, i32 4)
  %50 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %51 = call i32 @trace_afs_make_vl_call(%struct.afs_call* %50)
  %52 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %4, align 8
  %53 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %52, i32 0, i32 0
  %54 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @afs_make_call(i32* %53, %struct.afs_call* %54, i32 %55)
  %57 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %58 = load %struct.afs_vl_cursor*, %struct.afs_vl_cursor** %4, align 8
  %59 = getelementptr inbounds %struct.afs_vl_cursor, %struct.afs_vl_cursor* %58, i32 0, i32 0
  %60 = call i64 @afs_wait_for_call_to_complete(%struct.afs_call* %57, i32* %59)
  %61 = inttoptr i64 %60 to %struct.afs_addr_list*
  store %struct.afs_addr_list* %61, %struct.afs_addr_list** %3, align 8
  br label %62

62:                                               ; preds = %23, %19
  %63 = load %struct.afs_addr_list*, %struct.afs_addr_list** %3, align 8
  ret %struct.afs_addr_list* %63
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local %struct.afs_addr_list* @ERR_PTR(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @trace_afs_make_vl_call(%struct.afs_call*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32) #1

declare dso_local i64 @afs_wait_for_call_to_complete(%struct.afs_call*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
