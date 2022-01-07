; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_reinit_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_reinit_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, %struct.pqi_event_queue, %struct.TYPE_2__*, %struct.pqi_admin_queues }
%struct.pqi_event_queue = type { i64, i32 }
%struct.TYPE_2__ = type { i32, i32*, i64, i64* }
%struct.pqi_admin_queues = type { i32, i64, i64 }

@RAID_PATH = common dso_local global i64 0, align 8
@AIO_PATH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_reinit_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_reinit_queues(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_admin_queues*, align 8
  %5 = alloca %struct.pqi_event_queue*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %6 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %7 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %6, i32 0, i32 3
  store %struct.pqi_admin_queues* %7, %struct.pqi_admin_queues** %4, align 8
  %8 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %4, align 8
  %9 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %4, align 8
  %11 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %4, align 8
  %13 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @writel(i32 0, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %83, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %19 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %86

22:                                               ; preds = %16
  %23 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %24 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @RAID_PATH, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 0, i64* %32, align 8
  %33 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %34 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @AIO_PATH, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 0, i64* %42, align 8
  %43 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %44 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %51 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @RAID_PATH, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @writel(i32 0, i32 %60)
  %62 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %63 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @AIO_PATH, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @writel(i32 0, i32 %72)
  %74 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %75 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @writel(i32 0, i32 %81)
  br label %83

83:                                               ; preds = %22
  %84 = load i32, i32* %3, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %16

86:                                               ; preds = %16
  %87 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %88 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %87, i32 0, i32 1
  store %struct.pqi_event_queue* %88, %struct.pqi_event_queue** %5, align 8
  %89 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %5, align 8
  %90 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @writel(i32 0, i32 %91)
  %93 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %5, align 8
  %94 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
