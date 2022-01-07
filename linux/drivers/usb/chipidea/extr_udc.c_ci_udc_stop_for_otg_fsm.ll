; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_ci_udc_stop_for_otg_fsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_ci_udc_stop_for_otg_fsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@OTG_STATE_A_PERIPHERAL = common dso_local global i64 0, align 8
@OTG_STATE_B_PERIPHERAL = common dso_local global i64 0, align 8
@PROTO_UNDEF = common dso_local global i32 0, align 4
@OTG_STATE_UNDEFINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hdrc*)* @ci_udc_stop_for_otg_fsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_udc_stop_for_otg_fsm(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %4 = call i32 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %52

7:                                                ; preds = %1
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %9 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OTG_STATE_A_PERIPHERAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %22 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %25 = call i32 @ci_hdrc_otg_fsm_start(%struct.ci_hdrc* %24)
  br label %47

26:                                               ; preds = %7
  %27 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %28 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OTG_STATE_B_PERIPHERAL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load i32, i32* @PROTO_UNDEF, align 4
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %38 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load i64, i64* @OTG_STATE_UNDEFINED, align 8
  %41 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %42 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 %40, i64* %45, align 8
  br label %46

46:                                               ; preds = %35, %26
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %49 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  br label %52

52:                                               ; preds = %47, %6
  ret void
}

declare dso_local i32 @ci_otg_is_fsm_mode(%struct.ci_hdrc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ci_hdrc_otg_fsm_start(%struct.ci_hdrc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
