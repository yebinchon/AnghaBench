; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_extcon_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_extcon_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ci_hdrc_cable, %struct.ci_hdrc_cable }
%struct.ci_hdrc_cable = type { i32, i32, %struct.ci_hdrc* }

@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"register ID failed\0A\00", align 1
@EXTCON_USB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"register VBUS failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*)* @ci_extcon_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_extcon_register(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca %struct.ci_hdrc_cable*, align 8
  %5 = alloca %struct.ci_hdrc_cable*, align 8
  %6 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %7 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %8 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.ci_hdrc_cable* %10, %struct.ci_hdrc_cable** %4, align 8
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %12 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %4, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %12, i32 0, i32 2
  store %struct.ci_hdrc* %11, %struct.ci_hdrc** %13, align 8
  %14 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %4, align 8
  %15 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IS_ERR_OR_NULL(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %1
  %20 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %21 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %4, align 8
  %24 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EXTCON_USB_HOST, align 4
  %27 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %4, align 8
  %28 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %27, i32 0, i32 0
  %29 = call i32 @devm_extcon_register_notifier(i32 %22, i32 %25, i32 %26, i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %34 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %73

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %41 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.ci_hdrc_cable* %43, %struct.ci_hdrc_cable** %5, align 8
  %44 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %45 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %46 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %45, i32 0, i32 2
  store %struct.ci_hdrc* %44, %struct.ci_hdrc** %46, align 8
  %47 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %48 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IS_ERR_OR_NULL(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %39
  %53 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %54 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %57 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EXTCON_USB, align 4
  %60 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %5, align 8
  %61 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %60, i32 0, i32 0
  %62 = call i32 @devm_extcon_register_notifier(i32 %55, i32 %58, i32 %59, i32* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %67 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %39
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %65, %32
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @devm_extcon_register_notifier(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
