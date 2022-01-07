; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_change_irq_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_change_irq_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, i32)* @pqi_change_irq_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_change_irq_mode(%struct.pqi_ctrl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %6 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %42 [
    i32 129, label %8
    i32 130, label %18
    i32 128, label %30
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %17 [
    i32 129, label %10
    i32 130, label %11
    i32 128, label %16
  ]

10:                                               ; preds = %8
  br label %17

11:                                               ; preds = %8
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %13 = call i32 @pqi_configure_legacy_intx(%struct.pqi_ctrl_info* %12, i32 1)
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %15 = call i32 @sis_enable_intx(%struct.pqi_ctrl_info* %14)
  br label %17

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %8, %16, %11, %10
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %29 [
    i32 129, label %20
    i32 130, label %25
    i32 128, label %26
  ]

20:                                               ; preds = %18
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %22 = call i32 @pqi_configure_legacy_intx(%struct.pqi_ctrl_info* %21, i32 0)
  %23 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %24 = call i32 @sis_enable_msix(%struct.pqi_ctrl_info* %23)
  br label %29

25:                                               ; preds = %18
  br label %29

26:                                               ; preds = %18
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %28 = call i32 @pqi_configure_legacy_intx(%struct.pqi_ctrl_info* %27, i32 0)
  br label %29

29:                                               ; preds = %18, %26, %25, %20
  br label %42

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  switch i32 %31, label %41 [
    i32 129, label %32
    i32 130, label %35
    i32 128, label %40
  ]

32:                                               ; preds = %30
  %33 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %34 = call i32 @sis_enable_msix(%struct.pqi_ctrl_info* %33)
  br label %41

35:                                               ; preds = %30
  %36 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %37 = call i32 @pqi_configure_legacy_intx(%struct.pqi_ctrl_info* %36, i32 1)
  %38 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %39 = call i32 @sis_enable_intx(%struct.pqi_ctrl_info* %38)
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %30, %40, %35, %32
  br label %42

42:                                               ; preds = %2, %41, %29, %17
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %45 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @pqi_configure_legacy_intx(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @sis_enable_intx(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @sis_enable_msix(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
