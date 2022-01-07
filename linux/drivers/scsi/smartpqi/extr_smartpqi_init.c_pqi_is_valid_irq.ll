; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_is_valid_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_is_valid_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PQI_LEGACY_INTX_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_is_valid_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_is_valid_irq(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %6 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %23 [
    i32 129, label %8
    i32 130, label %9
    i32 128, label %22
  ]

8:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @readl(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PQI_LEGACY_INTX_PENDING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %21

20:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %19
  br label %24

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %1, %22
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %21, %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
