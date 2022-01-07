; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_usb_role_switch_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_usb_role_switch_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ci_hdrc = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.ci_hdrc_cable, %struct.ci_hdrc_cable }
%struct.ci_hdrc_cable = type { i32, i32 }

@USB_ROLE_DEVICE = common dso_local global i32 0, align 4
@USB_ROLE_HOST = common dso_local global i32 0, align 4
@USB_ROLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ci_usb_role_switch_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_usb_role_switch_set(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ci_hdrc*, align 8
  %7 = alloca %struct.ci_hdrc_cable*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ci_hdrc* @dev_get_drvdata(%struct.device* %10)
  store %struct.ci_hdrc* %11, %struct.ci_hdrc** %6, align 8
  store %struct.ci_hdrc_cable* null, %struct.ci_hdrc_cable** %7, align 8
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %13 = call i32 @ci_role_to_usb_role(%struct.ci_hdrc* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

18:                                               ; preds = %2
  %19 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %20 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pm_runtime_get_sync(i32 %21)
  %23 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %24 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %23, i32 0, i32 1
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @USB_ROLE_DEVICE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %32 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store %struct.ci_hdrc_cable* %34, %struct.ci_hdrc_cable** %7, align 8
  br label %45

35:                                               ; preds = %18
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @USB_ROLE_HOST, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %41 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.ci_hdrc_cable* %43, %struct.ci_hdrc_cable** %7, align 8
  br label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %47 = icmp ne %struct.ci_hdrc_cable* %46, null
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %50 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %52 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %54 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %57 = call i32 @ci_irq(i32 %55, %struct.ci_hdrc* %56)
  %58 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %59 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %58, i32 0, i32 1
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %63 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %48
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @USB_ROLE_NONE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %72 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @flush_workqueue(i64 %73)
  br label %75

75:                                               ; preds = %70, %66, %48
  %76 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %77 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %76, i32 0, i32 1
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  br label %80

80:                                               ; preds = %75, %45
  store %struct.ci_hdrc_cable* null, %struct.ci_hdrc_cable** %7, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @USB_ROLE_DEVICE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %86 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store %struct.ci_hdrc_cable* %88, %struct.ci_hdrc_cable** %7, align 8
  br label %99

89:                                               ; preds = %80
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @USB_ROLE_HOST, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %95 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store %struct.ci_hdrc_cable* %97, %struct.ci_hdrc_cable** %7, align 8
  br label %98

98:                                               ; preds = %93, %89
  br label %99

99:                                               ; preds = %98, %84
  %100 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %101 = icmp ne %struct.ci_hdrc_cable* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %104 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  %105 = load %struct.ci_hdrc_cable*, %struct.ci_hdrc_cable** %7, align 8
  %106 = getelementptr inbounds %struct.ci_hdrc_cable, %struct.ci_hdrc_cable* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %108 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %111 = call i32 @ci_irq(i32 %109, %struct.ci_hdrc* %110)
  br label %112

112:                                              ; preds = %102, %99
  %113 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %114 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %113, i32 0, i32 1
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %118 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @pm_runtime_put_sync(i32 %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %112, %17
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.ci_hdrc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ci_role_to_usb_role(%struct.ci_hdrc*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ci_irq(i32, %struct.ci_hdrc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
