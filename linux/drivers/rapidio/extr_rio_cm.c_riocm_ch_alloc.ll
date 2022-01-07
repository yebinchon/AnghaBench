; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_channel = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@chstart = common dso_local global i32 0, align 4
@RIOCM_MAX_CHNUM = common dso_local global i32 0, align 4
@idr_lock = common dso_local global i32 0, align 4
@ch_idr = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RIO_CM_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rio_channel* (i32)* @riocm_ch_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rio_channel* @riocm_ch_alloc(i32 %0) #0 {
  %2 = alloca %struct.rio_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rio_channel*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.rio_channel* @kzalloc(i32 72, i32 %8)
  store %struct.rio_channel* %9, %struct.rio_channel** %7, align 8
  %10 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %11 = icmp ne %struct.rio_channel* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.rio_channel* @ERR_PTR(i32 %14)
  store %struct.rio_channel* %15, %struct.rio_channel** %2, align 8
  br label %93

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @chstart, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @RIOCM_MAX_CHNUM, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @idr_preload(i32 %28)
  %30 = call i32 @spin_lock_bh(i32* @idr_lock)
  %31 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @GFP_NOWAIT, align 4
  %35 = call i32 @idr_alloc_cyclic(i32* @ch_idr, %struct.rio_channel* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = call i32 @spin_unlock_bh(i32* @idr_lock)
  %37 = call i32 (...) @idr_preload_end()
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %27
  %41 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %42 = call i32 @kfree(%struct.rio_channel* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ %51, %50 ]
  %54 = call %struct.rio_channel* @ERR_PTR(i32 %53)
  store %struct.rio_channel* %54, %struct.rio_channel** %2, align 8
  br label %93

55:                                               ; preds = %27
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %58 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @RIO_CM_IDLE, align 4
  %60 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %61 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %63 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %62, i32 0, i32 7
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %66 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %65, i32 0, i32 6
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %69 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %68, i32 0, i32 5
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %72 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %71, i32 0, i32 4
  %73 = call i32 @init_completion(i32* %72)
  %74 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %75 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %74, i32 0, i32 3
  %76 = call i32 @init_completion(i32* %75)
  %77 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %78 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %77, i32 0, i32 2
  %79 = call i32 @kref_init(i32* %78)
  %80 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %81 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %84 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %87 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  %90 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.rio_channel*, %struct.rio_channel** %7, align 8
  store %struct.rio_channel* %92, %struct.rio_channel** %2, align 8
  br label %93

93:                                               ; preds = %55, %52, %12
  %94 = load %struct.rio_channel*, %struct.rio_channel** %2, align 8
  ret %struct.rio_channel* %94
}

declare dso_local %struct.rio_channel* @kzalloc(i32, i32) #1

declare dso_local %struct.rio_channel* @ERR_PTR(i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.rio_channel*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @kfree(%struct.rio_channel*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
