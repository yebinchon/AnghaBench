; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss-pci.c_pwm_lpss_probe_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss-pci.c_pwm_lpss_probe_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32* }
%struct.pci_device_id = type { i64 }
%struct.pwm_lpss_boardinfo = type { i32 }
%struct.pwm_lpss_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pwm_lpss_probe_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_lpss_probe_pci(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.pwm_lpss_boardinfo*, align 8
  %7 = alloca %struct.pwm_lpss_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pcim_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.pwm_lpss_boardinfo*
  store %struct.pwm_lpss_boardinfo* %19, %struct.pwm_lpss_boardinfo** %6, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load %struct.pwm_lpss_boardinfo*, %struct.pwm_lpss_boardinfo** %6, align 8
  %27 = call %struct.pwm_lpss_chip* @pwm_lpss_probe(i32* %21, i32* %25, %struct.pwm_lpss_boardinfo* %26)
  store %struct.pwm_lpss_chip* %27, %struct.pwm_lpss_chip** %7, align 8
  %28 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %7, align 8
  %29 = call i64 @IS_ERR(%struct.pwm_lpss_chip* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %7, align 8
  %33 = call i32 @PTR_ERR(%struct.pwm_lpss_chip* %32)
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %15
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %7, align 8
  %37 = call i32 @pci_set_drvdata(%struct.pci_dev* %35, %struct.pwm_lpss_chip* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @pm_runtime_put(i32* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 @pm_runtime_allow(i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %34, %31, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.pwm_lpss_chip* @pwm_lpss_probe(i32*, i32*, %struct.pwm_lpss_boardinfo*) #1

declare dso_local i64 @IS_ERR(%struct.pwm_lpss_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.pwm_lpss_chip*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pwm_lpss_chip*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @pm_runtime_allow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
