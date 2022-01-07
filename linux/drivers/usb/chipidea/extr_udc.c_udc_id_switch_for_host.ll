; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_udc_id_switch_for_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_udc_id_switch_for_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i32, i64 }

@OTGSC_BSVIE = common dso_local global i32 0, align 4
@OTGSC_BSVIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hdrc*)* @udc_id_switch_for_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_id_switch_for_host(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %9 = load i32, i32* @OTGSC_BSVIE, align 4
  %10 = load i32, i32* @OTGSC_BSVIS, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @OTGSC_BSVIS, align 4
  %13 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %8, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %18 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %25 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %32 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %37 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pinctrl_select_state(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %30, %23, %14
  ret void
}

declare dso_local i32 @hw_write_otgsc(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @pinctrl_select_state(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
