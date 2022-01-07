; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_ci_hdrc_gadget_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_ci_hdrc_gadget_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.ci_role_driver**, i32 }
%struct.ci_role_driver = type { i8*, i32, i32, i32 }

@CAP_DCCPARAMS = common dso_local global i32 0, align 4
@DCCPARAMS_DC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@udc_id_switch_for_device = common dso_local global i32 0, align 4
@udc_id_switch_for_host = common dso_local global i32 0, align 4
@udc_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gadget\00", align 1
@CI_ROLE_GADGET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_hdrc_gadget_init(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca %struct.ci_role_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %6 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %7 = load i32, i32* @CAP_DCCPARAMS, align 4
  %8 = load i32, i32* @DCCPARAMS_DC, align 4
  %9 = call i32 @hw_read(%struct.ci_hdrc* %6, i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ci_role_driver* @devm_kzalloc(i32 %17, i32 24, i32 %18)
  store %struct.ci_role_driver* %19, %struct.ci_role_driver** %4, align 8
  %20 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %21 = icmp ne %struct.ci_role_driver* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %14
  %26 = load i32, i32* @udc_id_switch_for_device, align 4
  %27 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %28 = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @udc_id_switch_for_host, align 4
  %30 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %31 = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @udc_irq, align 4
  %33 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %34 = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %36 = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %38 = call i32 @udc_start(%struct.ci_hdrc* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %25
  %42 = load %struct.ci_role_driver*, %struct.ci_role_driver** %4, align 8
  %43 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %44 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %43, i32 0, i32 0
  %45 = load %struct.ci_role_driver**, %struct.ci_role_driver*** %44, align 8
  %46 = load i64, i64* @CI_ROLE_GADGET, align 8
  %47 = getelementptr inbounds %struct.ci_role_driver*, %struct.ci_role_driver** %45, i64 %46
  store %struct.ci_role_driver* %42, %struct.ci_role_driver** %47, align 8
  br label %48

48:                                               ; preds = %41, %25
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %22, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @hw_read(%struct.ci_hdrc*, i32, i32) #1

declare dso_local %struct.ci_role_driver* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @udc_start(%struct.ci_hdrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
