; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_submit_admin_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_submit_admin_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.pqi_admin_queues }
%struct.pqi_admin_queues = type { i32, i32, i8* }
%struct.pqi_general_admin_request = type { i32 }

@PQI_ADMIN_IQ_ELEMENT_LENGTH = common dso_local global i32 0, align 4
@PQI_ADMIN_IQ_NUM_ELEMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_general_admin_request*)* @pqi_submit_admin_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_submit_admin_request(%struct.pqi_ctrl_info* %0, %struct.pqi_general_admin_request* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_general_admin_request*, align 8
  %5 = alloca %struct.pqi_admin_queues*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_general_admin_request* %1, %struct.pqi_general_admin_request** %4, align 8
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %9 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %8, i32 0, i32 0
  store %struct.pqi_admin_queues* %9, %struct.pqi_admin_queues** %5, align 8
  %10 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %5, align 8
  %11 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %5, align 8
  %14 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PQI_ADMIN_IQ_ELEMENT_LENGTH, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %15, i64 %19
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.pqi_general_admin_request*, %struct.pqi_general_admin_request** %4, align 8
  %23 = call i32 @memcpy(i8* %21, %struct.pqi_general_admin_request* %22, i32 4)
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* @PQI_ADMIN_IQ_NUM_ELEMENTS, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %5, align 8
  %30 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %5, align 8
  %33 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel(i32 %31, i32 %34)
  ret void
}

declare dso_local i32 @memcpy(i8*, %struct.pqi_general_admin_request*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
