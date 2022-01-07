; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_cdns3-pci-wrap.c_cdns3_get_second_fun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_cdns3-pci-wrap.c_cdns3_get_second_fun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.pci_dev*)* @cdns3_get_second_fun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @cdns3_get_second_fun(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.pci_dev* @pci_get_device(i32 %7, i32 %10, %struct.pci_dev* null)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = icmp ne %struct.pci_dev* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %19
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call %struct.pci_dev* @pci_get_device(i32 %30, i32 %33, %struct.pci_dev* %34)
  store %struct.pci_dev* %35, %struct.pci_dev** %4, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = icmp ne %struct.pci_dev* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %46

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %45, %struct.pci_dev** %2, align 8
  br label %46

46:                                               ; preds = %44, %42, %18
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %47
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
