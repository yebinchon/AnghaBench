; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i64 (%struct.ci_hdrc*)* }

@IRQ_NONE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i64 0, align 8
@OTGSC_IDIE = common dso_local global i32 0, align 4
@OTGSC_IDIS = common dso_local global i32 0, align 4
@OTGSC_BSVIE = common dso_local global i32 0, align 4
@OTGSC_BSVIS = common dso_local global i32 0, align 4
@CI_ROLE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @ci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ci_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ci_hdrc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ci_hdrc*
  store %struct.ci_hdrc* %10, %struct.ci_hdrc** %6, align 8
  %11 = load i64, i64* @IRQ_NONE, align 8
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @disable_irq_nosync(i32 %17)
  %19 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %20 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %22 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pm_runtime_get(i32 %23)
  %25 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %25, i64* %3, align 8
  br label %112

26:                                               ; preds = %2
  %27 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %28 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %33 = call i32 @hw_read_otgsc(%struct.ci_hdrc* %32, i32 -1)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %35 = call i64 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %39 = call i64 @ci_otg_fsm_irq(%struct.ci_hdrc* %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @IRQ_HANDLED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %3, align 8
  br label %112

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %49 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @OTGSC_IDIE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @OTGSC_IDIS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %64 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %66 = load i32, i32* @OTGSC_IDIS, align 4
  %67 = load i32, i32* @OTGSC_IDIS, align 4
  %68 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %65, i32 %66, i32 %67)
  %69 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %70 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %69)
  %71 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %71, i64* %3, align 8
  br label %112

72:                                               ; preds = %57, %52, %47
  %73 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %74 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @OTGSC_BSVIE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @OTGSC_BSVIS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %89 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  %90 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %91 = load i32, i32* @OTGSC_BSVIS, align 4
  %92 = load i32, i32* @OTGSC_BSVIS, align 4
  %93 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %90, i32 %91, i32 %92)
  %94 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %95 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %94)
  %96 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %96, i64* %3, align 8
  br label %112

97:                                               ; preds = %82, %77, %72
  %98 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %99 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CI_ROLE_END, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %105 = call %struct.TYPE_2__* @ci_role(%struct.ci_hdrc* %104)
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64 (%struct.ci_hdrc*)*, i64 (%struct.ci_hdrc*)** %106, align 8
  %108 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %109 = call i64 %107(%struct.ci_hdrc* %108)
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %103, %97
  %111 = load i64, i64* %7, align 8
  store i64 %111, i64* %3, align 8
  br label %112

112:                                              ; preds = %110, %87, %62, %43, %16
  %113 = load i64, i64* %3, align 8
  ret i64 %113
}

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @hw_read_otgsc(%struct.ci_hdrc*, i32) #1

declare dso_local i64 @ci_otg_is_fsm_mode(%struct.ci_hdrc*) #1

declare dso_local i64 @ci_otg_fsm_irq(%struct.ci_hdrc*) #1

declare dso_local i32 @hw_write_otgsc(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @ci_otg_queue_work(%struct.ci_hdrc*) #1

declare dso_local %struct.TYPE_2__* @ci_role(%struct.ci_hdrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
