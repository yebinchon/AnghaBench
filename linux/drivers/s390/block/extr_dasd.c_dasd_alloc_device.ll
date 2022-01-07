; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_alloc_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@dasd_device_tasklet = common dso_local global i32 0, align 4
@dasd_device_timeout = common dso_local global i32 0, align 4
@do_kick_device = common dso_local global i32 0, align 4
@do_restore_device = common dso_local global i32 0, align 4
@do_reload_device = common dso_local global i32 0, align 4
@do_requeue_requests = common dso_local global i32 0, align 4
@DASD_STATE_NEW = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_device* @dasd_alloc_device() #0 {
  %1 = alloca %struct.dasd_device*, align 8
  %2 = alloca %struct.dasd_device*, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.dasd_device* @kzalloc(i32 112, i32 %3)
  store %struct.dasd_device* %4, %struct.dasd_device** %2, align 8
  %5 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %6 = icmp ne %struct.dasd_device* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.dasd_device* @ERR_PTR(i32 %9)
  store %struct.dasd_device* %10, %struct.dasd_device** %1, align 8
  br label %153

11:                                               ; preds = %0
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @__get_free_pages(i32 %14, i32 1)
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 17
  store i8* %16, i8** %18, align 8
  %19 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 17
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %11
  %24 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %25 = call i32 @kfree(%struct.dasd_device* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.dasd_device* @ERR_PTR(i32 %27)
  store %struct.dasd_device* %28, %struct.dasd_device** %1, align 8
  br label %153

29:                                               ; preds = %11
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = load i32, i32* @GFP_DMA, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @get_zeroed_page(i32 %32)
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %36 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %35, i32 0, i32 15
  store i8* %34, i8** %36, align 8
  %37 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 15
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %29
  %42 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %43 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %42, i32 0, i32 17
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = call i32 @free_pages(i64 %45, i32 1)
  %47 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %48 = call i32 @kfree(%struct.dasd_device* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.dasd_device* @ERR_PTR(i32 %50)
  store %struct.dasd_device* %51, %struct.dasd_device** %1, align 8
  br label %153

52:                                               ; preds = %29
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = load i32, i32* @GFP_DMA, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @__get_free_pages(i32 %55, i32 1)
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %59 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %58, i32 0, i32 13
  store i8* %57, i8** %59, align 8
  %60 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %61 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %60, i32 0, i32 13
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %52
  %65 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %66 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %65, i32 0, i32 15
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = call i32 @free_page(i64 %68)
  %70 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %71 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %70, i32 0, i32 17
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = call i32 @free_pages(i64 %73, i32 1)
  %75 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %76 = call i32 @kfree(%struct.dasd_device* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.dasd_device* @ERR_PTR(i32 %78)
  store %struct.dasd_device* %79, %struct.dasd_device** %1, align 8
  br label %153

80:                                               ; preds = %52
  %81 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %82 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %81, i32 0, i32 18
  %83 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %84 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %83, i32 0, i32 17
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = mul nsw i32 %86, 2
  %88 = call i32 @dasd_init_chunklist(i32* %82, i8* %85, i32 %87)
  %89 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %90 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %89, i32 0, i32 16
  %91 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %92 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %91, i32 0, i32 15
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = call i32 @dasd_init_chunklist(i32* %90, i8* %93, i32 %94)
  %96 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %97 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %96, i32 0, i32 14
  %98 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %99 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %98, i32 0, i32 13
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = mul nsw i32 %101, 2
  %103 = call i32 @dasd_init_chunklist(i32* %97, i8* %100, i32 %102)
  %104 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %105 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %104, i32 0, i32 12
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %108 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %107, i32 0, i32 11
  %109 = call i32 @atomic_set(i32* %108, i32 0)
  %110 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %111 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %110, i32 0, i32 10
  %112 = load i32, i32* @dasd_device_tasklet, align 4
  %113 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %114 = ptrtoint %struct.dasd_device* %113 to i64
  %115 = call i32 @tasklet_init(i32* %111, i32 %112, i64 %114)
  %116 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %117 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %116, i32 0, i32 9
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %120 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %119, i32 0, i32 8
  %121 = load i32, i32* @dasd_device_timeout, align 4
  %122 = call i32 @timer_setup(i32* %120, i32 %121, i32 0)
  %123 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %124 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %123, i32 0, i32 7
  %125 = load i32, i32* @do_kick_device, align 4
  %126 = call i32 @INIT_WORK(i32* %124, i32 %125)
  %127 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %128 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %127, i32 0, i32 6
  %129 = load i32, i32* @do_restore_device, align 4
  %130 = call i32 @INIT_WORK(i32* %128, i32 %129)
  %131 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %132 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %131, i32 0, i32 5
  %133 = load i32, i32* @do_reload_device, align 4
  %134 = call i32 @INIT_WORK(i32* %132, i32 %133)
  %135 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %136 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %135, i32 0, i32 4
  %137 = load i32, i32* @do_requeue_requests, align 4
  %138 = call i32 @INIT_WORK(i32* %136, i32 %137)
  %139 = load i8*, i8** @DASD_STATE_NEW, align 8
  %140 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %141 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load i8*, i8** @DASD_STATE_NEW, align 8
  %143 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %144 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %146 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %145, i32 0, i32 1
  %147 = call i32 @mutex_init(i32* %146)
  %148 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %149 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = call i32 @spin_lock_init(i32* %150)
  %152 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  store %struct.dasd_device* %152, %struct.dasd_device** %1, align 8
  br label %153

153:                                              ; preds = %80, %64, %41, %23, %7
  %154 = load %struct.dasd_device*, %struct.dasd_device** %1, align 8
  ret %struct.dasd_device* %154
}

declare dso_local %struct.dasd_device* @kzalloc(i32, i32) #1

declare dso_local %struct.dasd_device* @ERR_PTR(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @kfree(%struct.dasd_device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dasd_init_chunklist(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
