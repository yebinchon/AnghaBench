; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_host.c_host_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_host.c_host_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.usb_hcd*, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i64, i64, i32 (%struct.ci_hdrc*, i32)* }
%struct.TYPE_3__ = type { i32* }
%struct.usb_hcd = type { i32 }

@CI_HDRC_CONTROLLER_STOPPED_EVENT = common dso_local global i32 0, align 4
@CI_ROLE_END = common dso_local global i32 0, align 4
@CI_HDRC_TURN_VBUS_EARLY_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hdrc*)* @host_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host_stop(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %5 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %4, i32 0, i32 2
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  store %struct.usb_hcd* %6, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = icmp ne %struct.usb_hcd* %7, null
  br i1 %8, label %9, label %64

9:                                                ; preds = %1
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %11 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = load i32 (%struct.ci_hdrc*, i32)*, i32 (%struct.ci_hdrc*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.ci_hdrc*, i32)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %18 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  %21 = load i32 (%struct.ci_hdrc*, i32)*, i32 (%struct.ci_hdrc*, i32)** %20, align 8
  %22 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %23 = load i32, i32* @CI_HDRC_CONTROLLER_STOPPED_EVENT, align 4
  %24 = call i32 %21(%struct.ci_hdrc* %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %9
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %27 = call i32 @usb_remove_hcd(%struct.usb_hcd* %26)
  %28 = load i32, i32* @CI_ROLE_END, align 4
  %29 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %30 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %32 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @synchronize_irq(i32 %33)
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %36 = call i32 @usb_put_hcd(%struct.usb_hcd* %35)
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %38 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %25
  %44 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %45 = call i32 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %49 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CI_HDRC_TURN_VBUS_EARLY_ON, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %58 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @regulator_disable(i64 %61)
  br label %63

63:                                               ; preds = %56, %47, %43, %25
  br label %64

64:                                               ; preds = %63, %1
  %65 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %66 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %65, i32 0, i32 2
  store %struct.usb_hcd* null, %struct.usb_hcd** %66, align 8
  %67 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %68 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %71 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %64
  %77 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %78 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %85 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %90 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @pinctrl_select_state(i32 %88, i64 %93)
  br label %95

95:                                               ; preds = %83, %76, %64
  ret void
}

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @ci_otg_is_fsm_mode(%struct.ci_hdrc*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @pinctrl_select_state(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
