; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_vl_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_vl_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32*, i32, i32, %struct.key* }
%struct.afs_net = type { i32 }
%struct.afs_addr_cursor = type { i32 }
%struct.key = type { i32 }
%struct.afs_vlserver = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXVLGetCapabilities = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AFS_PROBE_MAX_LIFESPAN = common dso_local global i32 0, align 4
@VLGETCAPABILITIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_call* @afs_vl_get_capabilities(%struct.afs_net* %0, %struct.afs_addr_cursor* %1, %struct.key* %2, %struct.afs_vlserver* %3, i32 %4) #0 {
  %6 = alloca %struct.afs_call*, align 8
  %7 = alloca %struct.afs_net*, align 8
  %8 = alloca %struct.afs_addr_cursor*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.afs_vlserver*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.afs_call*, align 8
  %13 = alloca i32*, align 8
  store %struct.afs_net* %0, %struct.afs_net** %7, align 8
  store %struct.afs_addr_cursor* %1, %struct.afs_addr_cursor** %8, align 8
  store %struct.key* %2, %struct.key** %9, align 8
  store %struct.afs_vlserver* %3, %struct.afs_vlserver** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.afs_net*, %struct.afs_net** %7, align 8
  %16 = call %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net* %15, i32* @afs_RXVLGetCapabilities, i32 4, i32 64)
  store %struct.afs_call* %16, %struct.afs_call** %12, align 8
  %17 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %18 = icmp ne %struct.afs_call* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.afs_call* @ERR_PTR(i32 %21)
  store %struct.afs_call* %22, %struct.afs_call** %6, align 8
  br label %55

23:                                               ; preds = %5
  %24 = load %struct.key*, %struct.key** %9, align 8
  %25 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %26 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %25, i32 0, i32 6
  store %struct.key* %24, %struct.key** %26, align 8
  %27 = load %struct.afs_vlserver*, %struct.afs_vlserver** %10, align 8
  %28 = call i32 @afs_get_vlserver(%struct.afs_vlserver* %27)
  %29 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %30 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %35 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %37 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* @AFS_PROBE_MAX_LIFESPAN, align 4
  %39 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %42 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %13, align 8
  %44 = load i32, i32* @VLGETCAPABILITIES, align 4
  %45 = call i32 @htonl(i32 %44)
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  %48 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %49 = call i32 @trace_afs_make_vl_call(%struct.afs_call* %48)
  %50 = load %struct.afs_addr_cursor*, %struct.afs_addr_cursor** %8, align 8
  %51 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @afs_make_call(%struct.afs_addr_cursor* %50, %struct.afs_call* %51, i32 %52)
  %54 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  store %struct.afs_call* %54, %struct.afs_call** %6, align 8
  br label %55

55:                                               ; preds = %23, %19
  %56 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  ret %struct.afs_call* %56
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_net*, i32*, i32, i32) #1

declare dso_local %struct.afs_call* @ERR_PTR(i32) #1

declare dso_local i32 @afs_get_vlserver(%struct.afs_vlserver*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @trace_afs_make_vl_call(%struct.afs_call*) #1

declare dso_local i32 @afs_make_call(%struct.afs_addr_cursor*, %struct.afs_call*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
