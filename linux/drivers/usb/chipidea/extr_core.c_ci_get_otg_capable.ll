; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_get_otg_capable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_get_otg_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CI_HDRC_DUAL_ROLE_NOT_OTG = common dso_local global i32 0, align 4
@CAP_DCCPARAMS = common dso_local global i32 0, align 4
@DCCPARAMS_DC = common dso_local global i32 0, align 4
@DCCPARAMS_HC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"It is OTG capable controller\0A\00", align 1
@OTGSC_INT_EN_BITS = common dso_local global i32 0, align 4
@OTGSC_INT_STATUS_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hdrc*)* @ci_get_otg_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_get_otg_capable(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CI_HDRC_DUAL_ROLE_NOT_OTG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %16 = load i32, i32* @CAP_DCCPARAMS, align 4
  %17 = load i32, i32* @DCCPARAMS_DC, align 4
  %18 = load i32, i32* @DCCPARAMS_HC, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @hw_read(%struct.ci_hdrc* %15, i32 %16, i32 %19)
  %21 = load i32, i32* @DCCPARAMS_DC, align 4
  %22 = load i32, i32* @DCCPARAMS_HC, align 4
  %23 = or i32 %21, %22
  %24 = icmp eq i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %27 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %14, %11
  %29 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %30 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %35 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %39 = load i32, i32* @OTGSC_INT_EN_BITS, align 4
  %40 = load i32, i32* @OTGSC_INT_STATUS_BITS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @OTGSC_INT_STATUS_BITS, align 4
  %43 = call i32 @hw_write_otgsc(%struct.ci_hdrc* %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @hw_write_otgsc(%struct.ci_hdrc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
