; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_poll_for_admin_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_poll_for_admin_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_2__*, %struct.pqi_admin_queues }
%struct.TYPE_2__ = type { i32 }
%struct.pqi_admin_queues = type { i32, i32, i64, i32 }
%struct.pqi_general_admin_response = type { i32 }

@PQI_ADMIN_REQUEST_TIMEOUT_SECS = common dso_local global i64 0, align 8
@PQI_HZ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"timed out waiting for admin response\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PQI_ADMIN_OQ_ELEMENT_LENGTH = common dso_local global i32 0, align 4
@PQI_ADMIN_OQ_NUM_ELEMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_general_admin_response*)* @pqi_poll_for_admin_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_poll_for_admin_response(%struct.pqi_ctrl_info* %0, %struct.pqi_general_admin_response* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca %struct.pqi_general_admin_response*, align 8
  %6 = alloca %struct.pqi_admin_queues*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store %struct.pqi_general_admin_response* %1, %struct.pqi_general_admin_response** %5, align 8
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 1
  store %struct.pqi_admin_queues* %11, %struct.pqi_admin_queues** %6, align 8
  %12 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %6, align 8
  %13 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* @PQI_ADMIN_REQUEST_TIMEOUT_SECS, align 8
  %16 = load i64, i64* @PQI_HZ, align 8
  %17 = mul i64 %15, %16
  %18 = load i64, i64* @jiffies, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %2, %49
  %21 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %6, align 8
  %22 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @readl(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %51

29:                                               ; preds = %20
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @time_after(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %36 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %74

42:                                               ; preds = %29
  %43 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %44 = call i32 @sis_is_firmware_running(%struct.pqi_ctrl_info* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %42
  %50 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %20

51:                                               ; preds = %28
  %52 = load %struct.pqi_general_admin_response*, %struct.pqi_general_admin_response** %5, align 8
  %53 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %6, align 8
  %54 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @PQI_ADMIN_OQ_ELEMENT_LENGTH, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %55, %59
  %61 = call i32 @memcpy(%struct.pqi_general_admin_response* %52, i64 %60, i32 4)
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* @PQI_ADMIN_OQ_NUM_ELEMENTS, align 4
  %65 = srem i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %6, align 8
  %68 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.pqi_admin_queues*, %struct.pqi_admin_queues** %6, align 8
  %71 = getelementptr inbounds %struct.pqi_admin_queues, %struct.pqi_admin_queues* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @writel(i32 %69, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %51, %46, %34
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sis_is_firmware_running(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @memcpy(%struct.pqi_general_admin_response*, i64, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
