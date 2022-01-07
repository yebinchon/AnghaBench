; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_otg_fsm_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_otg_fsm_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@OTG_STATE_A_IDLE = common dso_local global i64 0, align 8
@OP_PORTSC = common dso_local global i32 0, align 4
@PORTSC_W1C_BITS = common dso_local global i32 0, align 4
@PORTSC_PP = common dso_local global i32 0, align 4
@OTGSC_DPIS = common dso_local global i32 0, align 4
@OTGSC_DPIE = common dso_local global i32 0, align 4
@OTG_STATE_B_IDLE = common dso_local global i64 0, align 8
@OTG_STATE_A_HOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_otg_fsm_work(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %11 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OTG_STATE_A_IDLE, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %134

24:                                               ; preds = %14, %9, %1
  %25 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %26 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pm_runtime_get_sync(i32 %27)
  %29 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %30 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %29, i32 0, i32 2
  %31 = call i64 @otg_statemachine(%struct.TYPE_4__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %129

33:                                               ; preds = %24
  %34 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %35 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OTG_STATE_A_IDLE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %33
  %43 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %44 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %50 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %55 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %48, %42
  %60 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %61 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %60)
  br label %77

62:                                               ; preds = %53
  %63 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %64 = load i32, i32* @OP_PORTSC, align 4
  %65 = load i32, i32* @PORTSC_W1C_BITS, align 4
  %66 = load i32, i32* @PORTSC_PP, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @hw_write(%struct.ci_hdrc* %63, i32 %64, i32 %67, i32 0)
  %69 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %70 = load i32, i32* @OTGSC_DPIS, align 4
  %71 = load i32, i32* @OTGSC_DPIS, align 4
  %72 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %69, i32 %70, i32 %71)
  %73 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %74 = load i32, i32* @OTGSC_DPIE, align 4
  %75 = load i32, i32* @OTGSC_DPIE, align 4
  %76 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %62, %59
  %78 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %79 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %84 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %77
  br label %128

86:                                               ; preds = %33
  %87 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %88 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @OTG_STATE_B_IDLE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %86
  %96 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %97 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %103 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %106 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %105)
  br label %107

107:                                              ; preds = %101, %95
  br label %127

108:                                              ; preds = %86
  %109 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %110 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @OTG_STATE_A_HOST, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %108
  %118 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %119 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @pm_runtime_mark_last_busy(i32 %120)
  %122 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %123 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @pm_runtime_put_autosuspend(i32 %124)
  store i32 0, i32* %2, align 4
  br label %134

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126, %107
  br label %128

128:                                              ; preds = %127, %85
  br label %129

129:                                              ; preds = %128, %24
  %130 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %131 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @pm_runtime_put_sync(i32 %132)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %129, %117, %23
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @otg_statemachine(%struct.TYPE_4__*) #1

declare dso_local i32 @ci_otg_queue_work(%struct.ci_hdrc*) #1

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i32) #1

declare dso_local i32 @hw_write_otgsc(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
