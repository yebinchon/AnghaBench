; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_event_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_event_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, %struct.pqi_event*, %struct.pqi_event_queue }
%struct.pqi_event = type { i32, i32, i32, i32 }
%struct.pqi_event_queue = type { i32, i32, %struct.pqi_event_response*, i32 }
%struct.pqi_event_response = type { i32, i32, i32, i64 }

@PQI_EVENT_OQ_ELEMENT_LENGTH = common dso_local global i32 0, align 4
@PQI_NUM_EVENT_QUEUE_ELEMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_process_event_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_process_event_intr(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pqi_event_queue*, align 8
  %7 = alloca %struct.pqi_event_response*, align 8
  %8 = alloca %struct.pqi_event*, align 8
  %9 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 2
  store %struct.pqi_event_queue* %11, %struct.pqi_event_queue** %6, align 8
  store i32 0, i32* %3, align 4
  %12 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %6, align 8
  %13 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %1, %74
  %16 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %6, align 8
  %17 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %79

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %6, align 8
  %28 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %27, i32 0, i32 2
  %29 = load %struct.pqi_event_response*, %struct.pqi_event_response** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @PQI_EVENT_OQ_ELEMENT_LENGTH, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pqi_event_response, %struct.pqi_event_response* %29, i64 %33
  store %struct.pqi_event_response* %34, %struct.pqi_event_response** %7, align 8
  %35 = load %struct.pqi_event_response*, %struct.pqi_event_response** %7, align 8
  %36 = getelementptr inbounds %struct.pqi_event_response, %struct.pqi_event_response* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pqi_event_type_to_event_index(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %24
  %42 = load %struct.pqi_event_response*, %struct.pqi_event_response** %7, align 8
  %43 = getelementptr inbounds %struct.pqi_event_response, %struct.pqi_event_response* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %41
  %47 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %48 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %47, i32 0, i32 1
  %49 = load %struct.pqi_event*, %struct.pqi_event** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %49, i64 %51
  store %struct.pqi_event* %52, %struct.pqi_event** %8, align 8
  %53 = load %struct.pqi_event*, %struct.pqi_event** %8, align 8
  %54 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.pqi_event_response*, %struct.pqi_event_response** %7, align 8
  %56 = getelementptr inbounds %struct.pqi_event_response, %struct.pqi_event_response* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.pqi_event*, %struct.pqi_event** %8, align 8
  %59 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pqi_event_response*, %struct.pqi_event_response** %7, align 8
  %61 = getelementptr inbounds %struct.pqi_event_response, %struct.pqi_event_response* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pqi_event*, %struct.pqi_event** %8, align 8
  %64 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.pqi_event_response*, %struct.pqi_event_response** %7, align 8
  %66 = getelementptr inbounds %struct.pqi_event_response, %struct.pqi_event_response* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.pqi_event*, %struct.pqi_event** %8, align 8
  %69 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.pqi_event*, %struct.pqi_event** %8, align 8
  %71 = load %struct.pqi_event_response*, %struct.pqi_event_response** %7, align 8
  %72 = call i32 @pqi_ofa_capture_event_payload(%struct.pqi_event* %70, %struct.pqi_event_response* %71)
  br label %73

73:                                               ; preds = %46, %41
  br label %74

74:                                               ; preds = %73, %24
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* @PQI_NUM_EVENT_QUEUE_ELEMENTS, align 4
  %78 = srem i32 %76, %77
  store i32 %78, i32* %5, align 4
  br label %15

79:                                               ; preds = %23
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %6, align 8
  %85 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %6, align 8
  %88 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @writel(i32 %86, i32 %89)
  %91 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %92 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %91, i32 0, i32 0
  %93 = call i32 @schedule_work(i32* %92)
  br label %94

94:                                               ; preds = %82, %79
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @pqi_event_type_to_event_index(i32) #1

declare dso_local i32 @pqi_ofa_capture_event_payload(%struct.pqi_event*, %struct.pqi_event_response*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
