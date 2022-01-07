; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_send_event_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_send_event_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, %struct.pqi_queue_group* }
%struct.pqi_queue_group = type { i32*, i32*, i32*, i8**, i32*, i32 }
%struct.pqi_event_acknowledge_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PQI_DEFAULT_QUEUE_GROUP = common dso_local global i64 0, align 8
@RAID_PATH = common dso_local global i64 0, align 8
@PQI_OPERATIONAL_IQ_ELEMENT_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_event_acknowledge_request*, i64)* @pqi_send_event_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_send_event_ack(%struct.pqi_ctrl_info* %0, %struct.pqi_event_acknowledge_request* %1, i64 %2) #0 {
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca %struct.pqi_event_acknowledge_request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pqi_queue_group*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store %struct.pqi_event_acknowledge_request* %1, %struct.pqi_event_acknowledge_request** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %13 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %12, i32 0, i32 1
  %14 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %13, align 8
  %15 = load i64, i64* @PQI_DEFAULT_QUEUE_GROUP, align 8
  %16 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %14, i64 %15
  store %struct.pqi_queue_group* %16, %struct.pqi_queue_group** %11, align 8
  %17 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %11, align 8
  %18 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pqi_event_acknowledge_request*, %struct.pqi_event_acknowledge_request** %5, align 8
  %21 = getelementptr inbounds %struct.pqi_event_acknowledge_request, %struct.pqi_event_acknowledge_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @put_unaligned_le16(i32 %19, i32* %22)
  br label %24

24:                                               ; preds = %3, %65
  %25 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %11, align 8
  %26 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @RAID_PATH, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %11, align 8
  %33 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @RAID_PATH, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %11, align 8
  %39 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @RAID_PATH, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @readl(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %48 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @pqi_num_elements_free(i32 %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %24
  br label %66

53:                                               ; preds = %24
  %54 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %11, align 8
  %55 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @RAID_PATH, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %62 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %109

65:                                               ; preds = %53
  br label %24

66:                                               ; preds = %52
  %67 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %11, align 8
  %68 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %67, i32 0, i32 3
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64, i64* @RAID_PATH, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @PQI_OPERATIONAL_IQ_ELEMENT_LENGTH, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %72, i64 %76
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.pqi_event_acknowledge_request*, %struct.pqi_event_acknowledge_request** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @memcpy(i8* %78, %struct.pqi_event_acknowledge_request* %79, i64 %80)
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  %84 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %85 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = srem i32 %83, %86
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %11, align 8
  %90 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @RAID_PATH, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %11, align 8
  %96 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @RAID_PATH, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @writel(i32 %94, i32 %100)
  %102 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %11, align 8
  %103 = getelementptr inbounds %struct.pqi_queue_group, %struct.pqi_queue_group* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @RAID_PATH, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  br label %109

109:                                              ; preds = %66, %64
  ret void
}

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @pqi_num_elements_free(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @memcpy(i8*, %struct.pqi_event_acknowledge_request*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
