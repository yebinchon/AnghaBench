; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf = type { i32, i32, i32, %struct.device, %struct.pci_epc*, %struct.pci_epf_header* }
%struct.device = type { i32 }
%struct.pci_epc = type { i32 }
%struct.pci_epf_header = type { i32 }
%struct.pci_epf_test = type { i32, %struct.TYPE_2__, %struct.pci_epc_features* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_epc_features = type { i32, i32, i32 }

@BAR_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Configuration header write failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"MSI configuration failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"MSI-X configuration failed\0A\00", align 1
@kpcitest_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epf*)* @pci_epf_test_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_epf_test_bind(%struct.pci_epf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_epf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_epf_test*, align 8
  %6 = alloca %struct.pci_epf_header*, align 8
  %7 = alloca %struct.pci_epc_features*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_epc*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_epf* %0, %struct.pci_epf** %3, align 8
  %14 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %15 = call %struct.pci_epf_test* @epf_get_drvdata(%struct.pci_epf* %14)
  store %struct.pci_epf_test* %15, %struct.pci_epf_test** %5, align 8
  %16 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %17 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %16, i32 0, i32 5
  %18 = load %struct.pci_epf_header*, %struct.pci_epf_header** %17, align 8
  store %struct.pci_epf_header* %18, %struct.pci_epf_header** %6, align 8
  %19 = load i32, i32* @BAR_0, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %21 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %20, i32 0, i32 4
  %22 = load %struct.pci_epc*, %struct.pci_epc** %21, align 8
  store %struct.pci_epc* %22, %struct.pci_epc** %9, align 8
  %23 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %24 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %23, i32 0, i32 3
  store %struct.device* %24, %struct.device** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %25 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %26 = icmp ne %struct.pci_epc* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %138

34:                                               ; preds = %1
  %35 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %36 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %37 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.pci_epc_features* @pci_epc_get_features(%struct.pci_epc* %35, i32 %38)
  store %struct.pci_epc_features* %39, %struct.pci_epc_features** %7, align 8
  %40 = load %struct.pci_epc_features*, %struct.pci_epc_features** %7, align 8
  %41 = icmp ne %struct.pci_epc_features* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load %struct.pci_epc_features*, %struct.pci_epc_features** %7, align 8
  %44 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.pci_epc_features*, %struct.pci_epc_features** %7, align 8
  %47 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.pci_epc_features*, %struct.pci_epc_features** %7, align 8
  %50 = getelementptr inbounds %struct.pci_epc_features, %struct.pci_epc_features* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load %struct.pci_epc_features*, %struct.pci_epc_features** %7, align 8
  %53 = call i32 @pci_epc_get_first_free_bar(%struct.pci_epc_features* %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %55 = load %struct.pci_epc_features*, %struct.pci_epc_features** %7, align 8
  %56 = call i32 @pci_epf_configure_bar(%struct.pci_epf* %54, %struct.pci_epc_features* %55)
  br label %57

57:                                               ; preds = %42, %34
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.pci_epf_test*, %struct.pci_epf_test** %5, align 8
  %60 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.pci_epc_features*, %struct.pci_epc_features** %7, align 8
  %62 = load %struct.pci_epf_test*, %struct.pci_epf_test** %5, align 8
  %63 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %62, i32 0, i32 2
  store %struct.pci_epc_features* %61, %struct.pci_epc_features** %63, align 8
  %64 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %65 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %66 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pci_epf_header*, %struct.pci_epf_header** %6, align 8
  %69 = call i32 @pci_epc_write_header(%struct.pci_epc* %64, i32 %67, %struct.pci_epf_header* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %57
  %73 = load %struct.device*, %struct.device** %10, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %138

76:                                               ; preds = %57
  %77 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %78 = call i32 @pci_epf_test_alloc_space(%struct.pci_epf* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %138

83:                                               ; preds = %76
  %84 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %85 = call i32 @pci_epf_test_set_bar(%struct.pci_epf* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %138

90:                                               ; preds = %83
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %95 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %96 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %99 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @pci_epc_set_msi(%struct.pci_epc* %94, i32 %97, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load %struct.device*, %struct.device** %10, align 8
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %138

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %90
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %109
  %113 = load %struct.pci_epc*, %struct.pci_epc** %9, align 8
  %114 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %115 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %118 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @pci_epc_set_msix(%struct.pci_epc* %113, i32 %116, i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %112
  %124 = load %struct.device*, %struct.device** %10, align 8
  %125 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %138

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %109
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* @kpcitest_workqueue, align 4
  %133 = load %struct.pci_epf_test*, %struct.pci_epf_test** %5, align 8
  %134 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = call i32 @queue_work(i32 %132, i32* %135)
  br label %137

137:                                              ; preds = %131, %128
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %123, %104, %88, %81, %72, %31
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.pci_epf_test* @epf_get_drvdata(%struct.pci_epf*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.pci_epc_features* @pci_epc_get_features(%struct.pci_epc*, i32) #1

declare dso_local i32 @pci_epc_get_first_free_bar(%struct.pci_epc_features*) #1

declare dso_local i32 @pci_epf_configure_bar(%struct.pci_epf*, %struct.pci_epc_features*) #1

declare dso_local i32 @pci_epc_write_header(%struct.pci_epc*, i32, %struct.pci_epf_header*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pci_epf_test_alloc_space(%struct.pci_epf*) #1

declare dso_local i32 @pci_epf_test_set_bar(%struct.pci_epf*) #1

declare dso_local i32 @pci_epc_set_msi(%struct.pci_epc*, i32, i32) #1

declare dso_local i32 @pci_epc_set_msix(%struct.pci_epc*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
