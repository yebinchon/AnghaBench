; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_ats.c_pci_enable_ats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_ats.c_pci_enable_ats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PCI_ATS_MIN_STU = common dso_local global i32 0, align 4
@PCI_ATS_CTRL_ENABLE = common dso_local global i32 0, align 4
@PCI_ATS_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_enable_ats(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PCI_ATS_MIN_STU, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %75

31:                                               ; preds = %24
  %32 = load i32, i32* @PCI_ATS_CTRL_ENABLE, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call %struct.pci_dev* @pci_physfn(%struct.pci_dev* %38)
  store %struct.pci_dev* %39, %struct.pci_dev** %7, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %75

48:                                               ; preds = %37
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 3
  %51 = call i32 @atomic_inc(i32* %50)
  br label %64

52:                                               ; preds = %31
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PCI_ATS_MIN_STU, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @PCI_ATS_CTRL_STU(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %52, %48
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCI_ATS_CTRL, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @pci_write_config_word(%struct.pci_dev* %65, i64 %70, i32 %71)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %64, %45, %28, %21, %12
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.pci_dev* @pci_physfn(%struct.pci_dev*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @PCI_ATS_CTRL_STU(i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
