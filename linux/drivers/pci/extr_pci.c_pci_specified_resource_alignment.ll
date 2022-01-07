; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_specified_resource_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_specified_resource_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@resource_alignment_lock = common dso_local global i32 0, align 4
@resource_alignment_param = common dso_local global i8* null, align 8
@PCI_PROBE_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"PCI: Ignoring requested alignments (PCI_PROBE_ONLY)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"PCI: Can't parse resource_alignment parameter: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*)* @pci_specified_resource_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_specified_resource_alignment(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = call i32 (...) @pcibios_default_alignment()
  store i32 %10, i32* %7, align 4
  %11 = call i32 @spin_lock(i32* @resource_alignment_lock)
  %12 = load i8*, i8** @resource_alignment_param, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %2
  br label %88

20:                                               ; preds = %15
  %21 = load i32, i32* @PCI_PROBE_ONLY, align 4
  %22 = call i64 @pci_has_flag(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  %25 = call i32 @pr_info_once(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %88

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %84, %26
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* %6)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 64
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i8*, i8** %8, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %8, align 8
  br label %50

49:                                               ; preds = %35, %31
  store i32 -1, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %43
  %51 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @pci_dev_str_match(%struct.pci_dev* %51, i8* %52, i8** %8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load i32*, i32** %4, align 8
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %61, i32* %7, align 4
  br label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 1, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %60
  br label %87

66:                                               ; preds = %50
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %87

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 59
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 44
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %87

84:                                               ; preds = %78, %73
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  br label %27

87:                                               ; preds = %83, %69, %65, %27
  br label %88

88:                                               ; preds = %87, %24, %19
  %89 = call i32 @spin_unlock(i32* @resource_alignment_lock)
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @pcibios_default_alignment(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @pci_has_flag(i32) #1

declare dso_local i32 @pr_info_once(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @pci_dev_str_match(%struct.pci_dev*, i8*, i8**) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
