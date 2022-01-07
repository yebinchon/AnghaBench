; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device = type { i32 }
%struct.mei_wdt = type { i64 }

@MEI_WDT_NOT_REQUIRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_cl_device*)* @mei_wdt_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_wdt_notif(%struct.mei_cl_device* %0) #0 {
  %2 = alloca %struct.mei_cl_device*, align 8
  %3 = alloca %struct.mei_wdt*, align 8
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %2, align 8
  %4 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %5 = call %struct.mei_wdt* @mei_cldev_get_drvdata(%struct.mei_cl_device* %4)
  store %struct.mei_wdt* %5, %struct.mei_wdt** %3, align 8
  %6 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %7 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MEI_WDT_NOT_REQUIRED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.mei_wdt*, %struct.mei_wdt** %3, align 8
  %14 = call i32 @mei_wdt_register(%struct.mei_wdt* %13)
  br label %15

15:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.mei_wdt* @mei_cldev_get_drvdata(%struct.mei_cl_device*) #1

declare dso_local i32 @mei_wdt_register(%struct.mei_wdt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
