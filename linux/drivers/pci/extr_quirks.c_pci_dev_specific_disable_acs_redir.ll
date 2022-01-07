; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_dev_specific_disable_acs_redir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_dev_specific_disable_acs_redir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev_acs_ops = type { i64, i64, i32 (%struct.pci_dev.0*)* }
%struct.pci_dev.0 = type opaque
%struct.pci_dev = type { i64, i64 }

@pci_dev_acs_ops = common dso_local global %struct.pci_dev_acs_ops* null, align 8
@PCI_ANY_ID = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_dev_specific_disable_acs_redir(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev_acs_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %62, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.pci_dev_acs_ops*, %struct.pci_dev_acs_ops** @pci_dev_acs_ops, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.pci_dev_acs_ops* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %65

12:                                               ; preds = %7
  %13 = load %struct.pci_dev_acs_ops*, %struct.pci_dev_acs_ops** @pci_dev_acs_ops, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pci_dev_acs_ops, %struct.pci_dev_acs_ops* %13, i64 %15
  store %struct.pci_dev_acs_ops* %16, %struct.pci_dev_acs_ops** %4, align 8
  %17 = load %struct.pci_dev_acs_ops*, %struct.pci_dev_acs_ops** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev_acs_ops, %struct.pci_dev_acs_ops* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %12
  %25 = load %struct.pci_dev_acs_ops*, %struct.pci_dev_acs_ops** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev_acs_ops, %struct.pci_dev_acs_ops* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCI_ANY_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %24, %12
  %31 = load %struct.pci_dev_acs_ops*, %struct.pci_dev_acs_ops** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev_acs_ops, %struct.pci_dev_acs_ops* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.pci_dev_acs_ops*, %struct.pci_dev_acs_ops** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev_acs_ops, %struct.pci_dev_acs_ops* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCI_ANY_ID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38, %30
  %45 = load %struct.pci_dev_acs_ops*, %struct.pci_dev_acs_ops** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev_acs_ops, %struct.pci_dev_acs_ops* %45, i32 0, i32 2
  %47 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %46, align 8
  %48 = icmp ne i32 (%struct.pci_dev.0*)* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.pci_dev_acs_ops*, %struct.pci_dev_acs_ops** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev_acs_ops, %struct.pci_dev_acs_ops* %50, i32 0, i32 2
  %52 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %51, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = bitcast %struct.pci_dev* %53 to %struct.pci_dev.0*
  %55 = call i32 %52(%struct.pci_dev.0* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %68

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %44, %38, %24
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %7

65:                                               ; preds = %7
  %66 = load i32, i32* @ENOTTY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @ARRAY_SIZE(%struct.pci_dev_acs_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
