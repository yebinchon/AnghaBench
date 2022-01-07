; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_alloc_ctrl_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_alloc_ctrl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pqi_event_worker = common dso_local global i32 0, align 4
@pqi_rescan_worker = common dso_local global i32 0, align 4
@pqi_update_time_worker = common dso_local global i32 0, align 4
@pqi_heartbeat_timer_handler = common dso_local global i32 0, align 4
@pqi_ctrl_offline_worker = common dso_local global i32 0, align 4
@PQI_RESERVED_IO_SLOTS_SYNCHRONOUS_REQUESTS = common dso_local global i32 0, align 4
@pqi_raid_bypass_retry_worker = common dso_local global i32 0, align 4
@pqi_controller_count = common dso_local global i32 0, align 4
@IRQ_MODE_NONE = common dso_local global i32 0, align 4
@PQI_MAX_MSIX_VECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pqi_ctrl_info* (i32)* @pqi_alloc_ctrl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pqi_ctrl_info* @pqi_alloc_ctrl_info(i32 %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.pqi_ctrl_info* @kzalloc_node(i32 80, i32 %5, i32 %6)
  store %struct.pqi_ctrl_info* %7, %struct.pqi_ctrl_info** %4, align 8
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %9 = icmp ne %struct.pqi_ctrl_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.pqi_ctrl_info* null, %struct.pqi_ctrl_info** %2, align 8
  br label %78

11:                                               ; preds = %1
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %13 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %12, i32 0, i32 18
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %16 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %15, i32 0, i32 17
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %19 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %18, i32 0, i32 16
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %22 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %21, i32 0, i32 15
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %25 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %24, i32 0, i32 14
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %28 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %27, i32 0, i32 13
  %29 = load i32, i32* @pqi_event_worker, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %32 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %31, i32 0, i32 12
  %33 = call i32 @atomic_set(i32* %32, i32 0)
  %34 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %35 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %34, i32 0, i32 11
  %36 = load i32, i32* @pqi_rescan_worker, align 4
  %37 = call i32 @INIT_DELAYED_WORK(i32* %35, i32 %36)
  %38 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %39 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %38, i32 0, i32 10
  %40 = load i32, i32* @pqi_update_time_worker, align 4
  %41 = call i32 @INIT_DELAYED_WORK(i32* %39, i32 %40)
  %42 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %43 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %42, i32 0, i32 9
  %44 = load i32, i32* @pqi_heartbeat_timer_handler, align 4
  %45 = call i32 @timer_setup(i32* %43, i32 %44, i32 0)
  %46 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %47 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %46, i32 0, i32 8
  %48 = load i32, i32* @pqi_ctrl_offline_worker, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %51 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %50, i32 0, i32 7
  %52 = load i32, i32* @PQI_RESERVED_IO_SLOTS_SYNCHRONOUS_REQUESTS, align 4
  %53 = call i32 @sema_init(i32* %51, i32 %52)
  %54 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %55 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %54, i32 0, i32 6
  %56 = call i32 @init_waitqueue_head(i32* %55)
  %57 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %58 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %57, i32 0, i32 5
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %61 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %60, i32 0, i32 4
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %64 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %63, i32 0, i32 3
  %65 = load i32, i32* @pqi_raid_bypass_retry_worker, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = call i64 @atomic_inc_return(i32* @pqi_controller_count)
  %68 = sub nsw i64 %67, 1
  %69 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %70 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @IRQ_MODE_NONE, align 4
  %72 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %73 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @PQI_MAX_MSIX_VECTORS, align 4
  %75 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %76 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  store %struct.pqi_ctrl_info* %77, %struct.pqi_ctrl_info** %2, align 8
  br label %78

78:                                               ; preds = %11, %10
  %79 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  ret %struct.pqi_ctrl_info* %79
}

declare dso_local %struct.pqi_ctrl_info* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
