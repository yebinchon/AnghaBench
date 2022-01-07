; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_ci_hdrc_imx_notify_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_ci_hdrc_imx_notify_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ci_hdrc_imx_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"hsic_active select failed, err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"hsic_set_connect failed, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*, i32)* @ci_hdrc_imx_notify_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_hdrc_imx_notify_event(%struct.ci_hdrc* %0, i32 %1) #0 {
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ci_hdrc_imx_data*, align 8
  %7 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %9 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ci_hdrc_imx_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.ci_hdrc_imx_data* %14, %struct.ci_hdrc_imx_data** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %43 [
    i32 129, label %16
    i32 128, label %31
  ]

16:                                               ; preds = %2
  %17 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %6, align 8
  %18 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %6, align 8
  %21 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pinctrl_select_state(i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %16
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %6, align 8
  %33 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @imx_usbmisc_hsic_set_connect(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  br label %44

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %42, %30
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.ci_hdrc_imx_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pinctrl_select_state(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @imx_usbmisc_hsic_set_connect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
