; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_pm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_pm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.subchannel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.css_driver = type { i32 (%struct.subchannel*)* }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @css_pm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_pm_prepare(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.css_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.subchannel* @to_subchannel(%struct.device* %6)
  store %struct.subchannel* %7, %struct.subchannel** %4, align 8
  %8 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %9 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %8, i32 0, i32 1
  %10 = call i64 @mutex_is_locked(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %17 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %41

22:                                               ; preds = %15
  %23 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %24 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.css_driver* @to_cssdriver(i32 %26)
  store %struct.css_driver* %27, %struct.css_driver** %5, align 8
  %28 = load %struct.css_driver*, %struct.css_driver** %5, align 8
  %29 = getelementptr inbounds %struct.css_driver, %struct.css_driver* %28, i32 0, i32 0
  %30 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %29, align 8
  %31 = icmp ne i32 (%struct.subchannel*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.css_driver*, %struct.css_driver** %5, align 8
  %34 = getelementptr inbounds %struct.css_driver, %struct.css_driver* %33, i32 0, i32 0
  %35 = load i32 (%struct.subchannel*)*, i32 (%struct.subchannel*)** %34, align 8
  %36 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %37 = call i32 %35(%struct.subchannel* %36)
  br label %39

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %37, %32 ], [ 0, %38 ]
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %21, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.subchannel* @to_subchannel(%struct.device*) #1

declare dso_local i64 @mutex_is_locked(i32*) #1

declare dso_local %struct.css_driver* @to_cssdriver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
