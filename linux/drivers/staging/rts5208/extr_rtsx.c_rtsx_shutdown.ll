; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rtsx_dev = type { i32, %struct.rtsx_chip* }
%struct.rtsx_chip = type { i64 }

@PM_S1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rtsx_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.rtsx_dev*, align 8
  %4 = alloca %struct.rtsx_chip*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.rtsx_dev* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.rtsx_dev* %6, %struct.rtsx_dev** %3, align 8
  %7 = load %struct.rtsx_dev*, %struct.rtsx_dev** %3, align 8
  %8 = icmp ne %struct.rtsx_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.rtsx_dev*, %struct.rtsx_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %11, i32 0, i32 1
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  store %struct.rtsx_chip* %13, %struct.rtsx_chip** %4, align 8
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %15 = load i32, i32* @PM_S1, align 4
  %16 = call i32 @rtsx_do_before_power_down(%struct.rtsx_chip* %14, i32 %15)
  %17 = load %struct.rtsx_dev*, %struct.rtsx_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %10
  %22 = load %struct.rtsx_dev*, %struct.rtsx_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rtsx_dev*, %struct.rtsx_dev** %3, align 8
  %26 = bitcast %struct.rtsx_dev* %25 to i8*
  %27 = call i32 @free_irq(i32 %24, i8* %26)
  %28 = load %struct.rtsx_dev*, %struct.rtsx_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  br label %30

30:                                               ; preds = %21, %10
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %32 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = call i32 @pci_disable_msi(%struct.pci_dev* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_disable_device(%struct.pci_dev* %39)
  br label %41

41:                                               ; preds = %38, %9
  ret void
}

declare dso_local %struct.rtsx_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @rtsx_do_before_power_down(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
