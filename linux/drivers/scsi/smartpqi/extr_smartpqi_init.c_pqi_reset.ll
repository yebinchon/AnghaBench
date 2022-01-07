; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%union.pqi_reset_register = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"PQI reset failed during quiesce with error %d\0A\00", align 1
@PQI_RESET_TYPE_HARD_RESET = common dso_local global i32 0, align 4
@PQI_RESET_ACTION_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"PQI reset failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_reset(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.pqi_reset_register, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %6 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %7 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %12 = call i32 @sis_pqi_reset_quiesce(%struct.pqi_ctrl_info* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %17 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23, %1
  %25 = bitcast %union.pqi_reset_register* %5 to i64*
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @PQI_RESET_TYPE_HARD_RESET, align 4
  %27 = bitcast %union.pqi_reset_register* %5 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @PQI_RESET_ACTION_RESET, align 4
  %30 = bitcast %union.pqi_reset_register* %5 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = bitcast %union.pqi_reset_register* %5 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %35 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @writel(i64 %33, i32* %37)
  %39 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %40 = call i32 @pqi_wait_for_pqi_reset_completion(%struct.pqi_ctrl_info* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %24
  %44 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %45 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %24
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @sis_pqi_reset_quiesce(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @pqi_wait_for_pqi_reset_completion(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
