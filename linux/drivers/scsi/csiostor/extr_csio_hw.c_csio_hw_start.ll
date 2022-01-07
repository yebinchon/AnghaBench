; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32 }

@CSIO_HWE_CFG = common dso_local global i32 0, align 4
@csio_hws_uninit = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_hw_start(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %4 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %5 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %8 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %7, i32 0, i32 1
  %9 = load i32, i32* @CSIO_HWE_CFG, align 4
  %10 = call i32 @csio_post_event(i32* %8, i32 %9)
  %11 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %12 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %11, i32 0, i32 0
  %13 = call i32 @spin_unlock_irq(i32* %12)
  %14 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %15 = call i64 @csio_is_hw_ready(%struct.csio_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %20 = load i32, i32* @csio_hws_uninit, align 4
  %21 = call i64 @csio_match_state(%struct.csio_hw* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %23, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_post_event(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @csio_is_hw_ready(%struct.csio_hw*) #1

declare dso_local i64 @csio_match_state(%struct.csio_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
