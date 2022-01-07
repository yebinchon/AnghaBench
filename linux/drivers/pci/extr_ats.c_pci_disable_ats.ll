; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_ats.c_pci_disable_ats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_ats.c_pci_disable_ats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32, i64 }

@PCI_ATS_CTRL = common dso_local global i64 0, align 8
@PCI_ATS_CTRL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_disable_ats(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 2
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %53

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call %struct.pci_dev* @pci_physfn(%struct.pci_dev* %26)
  store %struct.pci_dev* %27, %struct.pci_dev** %3, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 2
  %30 = call i32 @atomic_dec(i32* %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCI_ATS_CTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @pci_read_config_word(%struct.pci_dev* %32, i64 %37, i32* %4)
  %39 = load i32, i32* @PCI_ATS_CTRL_ENABLE, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI_ATS_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pci_write_config_word(%struct.pci_dev* %43, i64 %48, i32 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %31, %19, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.pci_dev* @pci_physfn(%struct.pci_dev*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
