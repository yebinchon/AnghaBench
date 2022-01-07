; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg.c_ci_hdrc_otg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg.c_ci_hdrc_otg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i32, i32 }

@ci_otg_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ci_otg\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"can't create workqueue\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_hdrc_otg_init(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %4, i32 0, i32 2
  %6 = load i32, i32* @ci_otg_work, align 4
  %7 = call i32 @INIT_WORK(i32* %5, i32 %6)
  %8 = call i32 @create_freezable_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %10 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %12 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %17 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %24 = call i64 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %28 = call i32 @ci_hdrc_otg_fsm_init(%struct.ci_hdrc* %27)
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @create_freezable_workqueue(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @ci_otg_is_fsm_mode(%struct.ci_hdrc*) #1

declare dso_local i32 @ci_hdrc_otg_fsm_init(%struct.ci_hdrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
