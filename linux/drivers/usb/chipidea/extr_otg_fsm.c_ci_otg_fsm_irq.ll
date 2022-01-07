; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_otg_fsm_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_ci_otg_fsm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, %struct.otg_fsm }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i64, i64, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@OTGSC_INT_STATUS_BITS = common dso_local global i32 0, align 4
@OTGSC_ID = common dso_local global i32 0, align 4
@OTGSC_DPIS = common dso_local global i32 0, align 4
@OTGSC_IDIS = common dso_local global i32 0, align 4
@OTGSC_BSVIS = common dso_local global i32 0, align 4
@OTGSC_BSV = common dso_local global i32 0, align 4
@B_SSEND_SRP = common dso_local global i32 0, align 4
@B_SRP_FAIL = common dso_local global i32 0, align 4
@OTGSC_AVVIS = common dso_local global i32 0, align 4
@OTGSC_AVV = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_otg_fsm_irq(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.otg_fsm*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %8 = load i32, i32* @IRQ_NONE, align 4
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %10 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %9, i32 0, i32 1
  store %struct.otg_fsm* %10, %struct.otg_fsm** %7, align 8
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %12 = call i32 @hw_read_otgsc(%struct.ci_hdrc* %11, i32 -1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @OTGSC_INT_STATUS_BITS, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @OTGSC_ID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %26 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %133

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @OTGSC_DPIS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %36 = load i32, i32* @OTGSC_DPIS, align 4
  %37 = load i32, i32* @OTGSC_DPIS, align 4
  %38 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %35, i32 %36, i32 %37)
  %39 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %40 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %42 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  br label %129

43:                                               ; preds = %29
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @OTGSC_IDIS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %50 = load i32, i32* @OTGSC_IDIS, align 4
  %51 = load i32, i32* @OTGSC_IDIS, align 4
  %52 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %49, i32 %50, i32 %51)
  %53 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %54 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %59 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %58, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %61 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %63 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %57, %48
  br label %128

65:                                               ; preds = %43
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @OTGSC_BSVIS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %65
  %71 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %72 = load i32, i32* @OTGSC_BSVIS, align 4
  %73 = load i32, i32* @OTGSC_BSVIS, align 4
  %74 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @OTGSC_BSV, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %81 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  %82 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %83 = load i32, i32* @B_SSEND_SRP, align 4
  %84 = call i32 @ci_otg_del_timer(%struct.ci_hdrc* %82, i32 %83)
  %85 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %86 = load i32, i32* @B_SRP_FAIL, align 4
  %87 = call i32 @ci_otg_del_timer(%struct.ci_hdrc* %85, i32 %86)
  %88 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %89 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %88, i32 0, i32 6
  store i64 0, i64* %89, align 8
  br label %102

90:                                               ; preds = %70
  %91 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %92 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %91, i32 0, i32 3
  store i32 0, i32* %92, align 4
  %93 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %94 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %99 = load i32, i32* @B_SSEND_SRP, align 4
  %100 = call i32 @ci_otg_add_timer(%struct.ci_hdrc* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %90
  br label %102

102:                                              ; preds = %101, %79
  br label %127

103:                                              ; preds = %65
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @OTGSC_AVVIS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %110 = load i32, i32* @OTGSC_AVVIS, align 4
  %111 = load i32, i32* @OTGSC_AVVIS, align 4
  %112 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %109, i32 %110, i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @OTGSC_AVV, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %119 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %118, i32 0, i32 4
  store i32 1, i32* %119, align 8
  br label %125

120:                                              ; preds = %108
  %121 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %122 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %121, i32 0, i32 4
  store i32 0, i32* %122, align 8
  %123 = load %struct.otg_fsm*, %struct.otg_fsm** %7, align 8
  %124 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %123, i32 0, i32 5
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %120, %117
  br label %126

126:                                              ; preds = %125, %103
  br label %127

127:                                              ; preds = %126, %102
  br label %128

128:                                              ; preds = %127, %64
  br label %129

129:                                              ; preds = %128, %34
  %130 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %131 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %130)
  %132 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %132, i32* %2, align 4
  br label %137

133:                                              ; preds = %1
  %134 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %135 = call i32 @ci_otg_fsm_event(%struct.ci_hdrc* %134)
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %129
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @hw_read_otgsc(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @hw_write_otgsc(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @ci_otg_del_timer(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @ci_otg_add_timer(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @ci_otg_queue_work(%struct.ci_hdrc*) #1

declare dso_local i32 @ci_otg_fsm_event(%struct.ci_hdrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
