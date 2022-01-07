; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_set_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_set_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf = type { i32, %struct.pci_epf_bar*, %struct.device, %struct.pci_epc* }
%struct.pci_epf_bar = type { i32 }
%struct.device = type { i32 }
%struct.pci_epc = type { i32 }
%struct.pci_epf_test = type { i32, i32*, %struct.pci_epc_features* }
%struct.pci_epc_features = type { i32 }

@BAR_0 = common dso_local global i32 0, align 4
@BAR_5 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to set BAR%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epf*)* @pci_epf_test_set_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_epf_test_set_bar(%struct.pci_epf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_epf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_epf_bar*, align 8
  %8 = alloca %struct.pci_epc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.pci_epf_test*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_epc_features*, align 8
  store %struct.pci_epf* %0, %struct.pci_epf** %3, align 8
  %13 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %14 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %13, i32 0, i32 3
  %15 = load %struct.pci_epc*, %struct.pci_epc** %14, align 8
  store %struct.pci_epc* %15, %struct.pci_epc** %8, align 8
  %16 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %17 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %16, i32 0, i32 2
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %19 = call %struct.pci_epf_test* @epf_get_drvdata(%struct.pci_epf* %18)
  store %struct.pci_epf_test* %19, %struct.pci_epf_test** %10, align 8
  %20 = load %struct.pci_epf_test*, %struct.pci_epf_test** %10, align 8
  %21 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.pci_epf_test*, %struct.pci_epf_test** %10, align 8
  %24 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %23, i32 0, i32 2
  %25 = load %struct.pci_epc_features*, %struct.pci_epc_features** %24, align 8
  store %struct.pci_epc_features* %25, %struct.pci_epc_features** %12, align 8
  %26 = load i32, i32* @BAR_0, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %84, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BAR_5, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %88

31:                                               ; preds = %27
  %32 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %33 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %32, i32 0, i32 1
  %34 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %34, i64 %36
  store %struct.pci_epf_bar* %37, %struct.pci_epf_bar** %7, align 8
  %38 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %7, align 8
  %39 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 2, i32 1
  store i32 %45, i32* %5, align 4
  %46 = load %struct.pci_epc_features*, %struct.pci_epc_features** %12, align 8
  %47 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %84

54:                                               ; preds = %31
  %55 = load %struct.pci_epc*, %struct.pci_epc** %8, align 8
  %56 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %57 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %7, align 8
  %60 = call i32 @pci_epc_set_bar(%struct.pci_epc* %55, i32 %58, %struct.pci_epf_bar* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %54
  %64 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %65 = load %struct.pci_epf_test*, %struct.pci_epf_test** %10, align 8
  %66 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @pci_epf_free_space(%struct.pci_epf* %64, i32 %71, i32 %72)
  %74 = load %struct.device*, %struct.device** %9, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %89

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %54
  br label %84

84:                                               ; preds = %83, %53
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %27

88:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %80
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.pci_epf_test* @epf_get_drvdata(%struct.pci_epf*) #1

declare dso_local i32 @pci_epc_set_bar(%struct.pci_epc*, i32, %struct.pci_epf_bar*) #1

declare dso_local i32 @pci_epf_free_space(%struct.pci_epf*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
