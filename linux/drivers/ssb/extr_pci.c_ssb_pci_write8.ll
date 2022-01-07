; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_write8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_write8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i64, %struct.ssb_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_device*, i64, i32)* @ssb_pci_write8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pci_write8(%struct.ssb_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %9 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %8, i32 0, i32 0
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %9, align 8
  store %struct.ssb_bus* %10, %struct.ssb_bus** %7, align 8
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %12 = call i32 @ssb_pci_assert_buspower(%struct.ssb_bus* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %18 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %17, i32 0, i32 1
  %19 = load %struct.ssb_device*, %struct.ssb_device** %18, align 8
  %20 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %21 = icmp ne %struct.ssb_device* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %27 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %28 = call i32 @ssb_pci_switch_core(%struct.ssb_bus* %26, %struct.ssb_device* %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %41

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %36 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @iowrite8(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %33, %31, %15
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ssb_pci_assert_buspower(%struct.ssb_bus*) #1

declare dso_local i32 @ssb_pci_switch_core(%struct.ssb_bus*, %struct.ssb_device*) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
