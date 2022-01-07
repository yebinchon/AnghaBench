; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_revert_to_sis_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_revert_to_sis_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_MODE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"re-enabling SIS mode failed with error %d\0A\00", align 1
@SIS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_revert_to_sis_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_revert_to_sis_mode(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %6 = load i32, i32* @IRQ_MODE_NONE, align 4
  %7 = call i32 @pqi_change_irq_mode(%struct.pqi_ctrl_info* %5, i32 %6)
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %9 = call i32 @pqi_reset(%struct.pqi_ctrl_info* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %16 = call i32 @sis_reenable_sis_mode(%struct.pqi_ctrl_info* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %21 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %14
  %28 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %29 = load i32, i32* @SIS_MODE, align 4
  %30 = call i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info* %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %19, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pqi_change_irq_mode(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @pqi_reset(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @sis_reenable_sis_mode(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
