; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c___rpmsg_create_ept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c___rpmsg_create_ept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_endpoint = type { i32, i32, i32*, i8*, i32, %struct.rpmsg_device*, i32 }
%struct.virtproc_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.rpmsg_device = type { %struct.device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@virtio_endpoint_ops = common dso_local global i32 0, align 4
@RPMSG_ADDR_ANY = common dso_local global i32 0, align 4
@RPMSG_RESERVED_ADDRESSES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"idr_alloc failed: %d\0A\00", align 1
@__ept_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpmsg_endpoint* (%struct.virtproc_info*, %struct.rpmsg_device*, i32, i8*, i32)* @__rpmsg_create_ept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpmsg_endpoint* @__rpmsg_create_ept(%struct.virtproc_info* %0, %struct.rpmsg_device* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.rpmsg_endpoint*, align 8
  %7 = alloca %struct.virtproc_info*, align 8
  %8 = alloca %struct.rpmsg_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rpmsg_endpoint*, align 8
  %16 = alloca %struct.device*, align 8
  store %struct.virtproc_info* %0, %struct.virtproc_info** %7, align 8
  store %struct.rpmsg_device* %1, %struct.rpmsg_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.rpmsg_device*, %struct.rpmsg_device** %8, align 8
  %18 = icmp ne %struct.rpmsg_device* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.rpmsg_device*, %struct.rpmsg_device** %8, align 8
  %21 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %20, i32 0, i32 0
  br label %27

22:                                               ; preds = %5
  %23 = load %struct.virtproc_info*, %struct.virtproc_info** %7, align 8
  %24 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi %struct.device* [ %21, %19 ], [ %26, %22 ]
  store %struct.device* %28, %struct.device** %16, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.rpmsg_endpoint* @kzalloc(i32 48, i32 %29)
  store %struct.rpmsg_endpoint* %30, %struct.rpmsg_endpoint** %15, align 8
  %31 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  %32 = icmp ne %struct.rpmsg_endpoint* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store %struct.rpmsg_endpoint* null, %struct.rpmsg_endpoint** %6, align 8
  br label %94

34:                                               ; preds = %27
  %35 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  %36 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %35, i32 0, i32 1
  %37 = call i32 @kref_init(i32* %36)
  %38 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  %39 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %38, i32 0, i32 6
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.rpmsg_device*, %struct.rpmsg_device** %8, align 8
  %42 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  %43 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %42, i32 0, i32 5
  store %struct.rpmsg_device* %41, %struct.rpmsg_device** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  %46 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  %49 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  %51 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %50, i32 0, i32 2
  store i32* @virtio_endpoint_ops, i32** %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @RPMSG_ADDR_ANY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %34
  %56 = load i32, i32* @RPMSG_RESERVED_ADDRESSES, align 4
  store i32 %56, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %61

57:                                               ; preds = %34
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %57, %55
  %62 = load %struct.virtproc_info*, %struct.virtproc_info** %7, align 8
  %63 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.virtproc_info*, %struct.virtproc_info** %7, align 8
  %66 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %65, i32 0, i32 1
  %67 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32 @idr_alloc(i32* %66, %struct.rpmsg_endpoint* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %61
  %75 = load %struct.device*, %struct.device** %16, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %86

78:                                               ; preds = %61
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  %81 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.virtproc_info*, %struct.virtproc_info** %7, align 8
  %83 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  store %struct.rpmsg_endpoint* %85, %struct.rpmsg_endpoint** %6, align 8
  br label %94

86:                                               ; preds = %74
  %87 = load %struct.virtproc_info*, %struct.virtproc_info** %7, align 8
  %88 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %15, align 8
  %91 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %90, i32 0, i32 1
  %92 = load i32, i32* @__ept_release, align 4
  %93 = call i32 @kref_put(i32* %91, i32 %92)
  store %struct.rpmsg_endpoint* null, %struct.rpmsg_endpoint** %6, align 8
  br label %94

94:                                               ; preds = %86, %78, %33
  %95 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %6, align 8
  ret %struct.rpmsg_endpoint* %95
}

declare dso_local %struct.rpmsg_endpoint* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.rpmsg_endpoint*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
