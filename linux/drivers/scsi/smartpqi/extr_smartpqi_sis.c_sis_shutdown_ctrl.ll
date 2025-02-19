; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sis.c_sis_shutdown_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sis.c_sis_shutdown_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SIS_CTRL_KERNEL_PANIC = common dso_local global i32 0, align 4
@SIS_TRIGGER_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sis_shutdown_ctrl(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %3 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %4 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = call i32 @readl(i32* %6)
  %8 = load i32, i32* @SIS_CTRL_KERNEL_PANIC, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @SIS_TRIGGER_SHUTDOWN, align 4
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %15 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @writel(i32 %13, i32* %17)
  br label %19

19:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
