; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_wdt = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.device*, i32*, i32* }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { %struct.device }

@EINVAL = common dso_local global i32 0, align 4
@wd_info = common dso_local global i32 0, align 4
@wd_ops = common dso_local global i32 0, align 4
@MEI_WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MEI_WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@MEI_WDT_MAX_TIMEOUT = common dso_local global i32 0, align 4
@MEI_WDT_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_wdt*)* @mei_wdt_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_wdt_register(%struct.mei_wdt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_wdt*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.mei_wdt* %0, %struct.mei_wdt** %3, align 8
  %6 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %7 = icmp ne %struct.mei_wdt* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %10 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %76

16:                                               ; preds = %8
  %17 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %18 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %4, align 8
  %21 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %22 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %25 = call i64 @__mei_wdt_is_registered(%struct.mei_wdt* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %71

28:                                               ; preds = %16
  %29 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %30 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  store i32* @wd_info, i32** %31, align 8
  %32 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %33 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  store i32* @wd_ops, i32** %34, align 8
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %37 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store %struct.device* %35, %struct.device** %38, align 8
  %39 = load i32, i32* @MEI_WDT_DEFAULT_TIMEOUT, align 4
  %40 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %41 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @MEI_WDT_MIN_TIMEOUT, align 4
  %44 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %45 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @MEI_WDT_MAX_TIMEOUT, align 4
  %48 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %49 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %52 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %51, i32 0, i32 2
  %53 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %54 = call i32 @watchdog_set_drvdata(%struct.TYPE_6__* %52, %struct.mei_wdt* %53)
  %55 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %56 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %55, i32 0, i32 2
  %57 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_6__* %56)
  %58 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %59 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %58, i32 0, i32 2
  %60 = call i32 @watchdog_register_device(%struct.TYPE_6__* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %28
  %64 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %65 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %64, i32 0, i32 2
  %66 = call i32 @watchdog_set_drvdata(%struct.TYPE_6__* %65, %struct.mei_wdt* null)
  br label %67

67:                                               ; preds = %63, %28
  %68 = load i32, i32* @MEI_WDT_IDLE, align 4
  %69 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %70 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %27
  %72 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %73 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__mei_wdt_is_registered(%struct.mei_wdt*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_6__*, %struct.mei_wdt*) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_6__*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
