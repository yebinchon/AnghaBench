; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_alloc_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_alloc_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf = type { %struct.pci_epf_bar*, %struct.device }
%struct.pci_epf_bar = type { i32 }
%struct.device = type { i32 }
%struct.pci_epf_test = type { i32, i8**, %struct.pci_epc_features* }
%struct.pci_epc_features = type { i32, i32, i64* }

@bar_size = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocated register space\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BAR_0 = common dso_local global i32 0, align 4
@BAR_5 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to allocate space for BAR%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epf*)* @pci_epf_test_alloc_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_epf_test_alloc_space(%struct.pci_epf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_epf*, align 8
  %4 = alloca %struct.pci_epf_test*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pci_epf_bar*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_epc_features*, align 8
  %12 = alloca i64, align 8
  store %struct.pci_epf* %0, %struct.pci_epf** %3, align 8
  %13 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %14 = call %struct.pci_epf_test* @epf_get_drvdata(%struct.pci_epf* %13)
  store %struct.pci_epf_test* %14, %struct.pci_epf_test** %4, align 8
  %15 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %16 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %18 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %21 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %20, i32 0, i32 2
  %22 = load %struct.pci_epc_features*, %struct.pci_epc_features** %21, align 8
  store %struct.pci_epc_features* %22, %struct.pci_epc_features** %11, align 8
  %23 = load %struct.pci_epc_features*, %struct.pci_epc_features** %11, align 8
  %24 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i64*, i64** @bar_size, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  br label %38

37:                                               ; preds = %1
  store i64 4, i64* %12, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.pci_epc_features*, %struct.pci_epc_features** %11, align 8
  %43 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @pci_epf_alloc_space(%struct.pci_epf* %39, i64 %40, i32 %41, i32 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %38
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %125

53:                                               ; preds = %38
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %56 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %54, i8** %60, align 8
  %61 = load i32, i32* @BAR_0, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %120, %53
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @BAR_5, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %62
  %67 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %68 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %67, i32 0, i32 0
  %69 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %69, i64 %71
  store %struct.pci_epf_bar* %72, %struct.pci_epf_bar** %6, align 8
  %73 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %6, align 8
  %74 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 2, i32 1
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %66
  br label %120

85:                                               ; preds = %66
  %86 = load %struct.pci_epc_features*, %struct.pci_epc_features** %11, align 8
  %87 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 1, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %120

94:                                               ; preds = %85
  %95 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %96 = load i64*, i64** @bar_size, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.pci_epc_features*, %struct.pci_epc_features** %11, align 8
  %103 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @pci_epf_alloc_space(%struct.pci_epf* %95, i64 %100, i32 %101, i32 %104)
  store i8* %105, i8** %7, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %94
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %94
  %113 = load i8*, i8** %7, align 8
  %114 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %115 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %113, i8** %119, align 8
  br label %120

120:                                              ; preds = %112, %93, %84
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %62

124:                                              ; preds = %62
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %48
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.pci_epf_test* @epf_get_drvdata(%struct.pci_epf*) #1

declare dso_local i8* @pci_epf_alloc_space(%struct.pci_epf*, i64, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
