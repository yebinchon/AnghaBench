; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_pm_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_pm_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.subchannel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.css_driver = type { i32 (%struct.subchannel*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @css_pm_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_pm_restore(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.css_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.subchannel* @to_subchannel(%struct.device* %6)
  store %struct.subchannel* %7, %struct.subchannel** %4, align 8
  %8 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %9 = call i32 @css_update_ssd_info(%struct.subchannel* %8)
  %10 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %11 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %18 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.css_driver* @to_cssdriver(i32 %20)
  store %struct.css_driver* %21, %struct.css_driver** %5, align 8
  %22 = load %struct.css_driver*, %struct.css_driver** %5, align 8
  %23 = getelementptr inbounds %struct.css_driver, %struct.css_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %23, align 8
  %25 = icmp ne i32 (%struct.subchannel*)* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.css_driver*, %struct.css_driver** %5, align 8
  %28 = getelementptr inbounds %struct.css_driver, %struct.css_driver* %27, i32 0, i32 0
  %29 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %28, align 8
  %30 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %31 = call i32 %29(%struct.subchannel* %30)
  br label %33

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i32 [ %31, %26 ], [ 0, %32 ]
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.subchannel* @to_subchannel(%struct.device*) #1

declare dso_local i32 @css_update_ssd_info(%struct.subchannel*) #1

declare dso_local %struct.css_driver* @to_cssdriver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
