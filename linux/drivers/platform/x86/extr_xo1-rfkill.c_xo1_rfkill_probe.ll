; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_xo1-rfkill.c_xo1_rfkill_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_xo1-rfkill.c_xo1_rfkill_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.rfkill = type { i32 }

@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@rfkill_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xo1_rfkill_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo1_rfkill_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rfkill*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %12 = call %struct.rfkill* @rfkill_alloc(i32 %8, i32* %10, i32 %11, i32* @rfkill_ops, i32* null)
  store %struct.rfkill* %12, %struct.rfkill** %4, align 8
  %13 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %14 = icmp ne %struct.rfkill* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %20 = call i32 @rfkill_register(%struct.rfkill* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %25 = call i32 @rfkill_destroy(%struct.rfkill* %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %18
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.rfkill* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %23, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.rfkill* @rfkill_alloc(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
