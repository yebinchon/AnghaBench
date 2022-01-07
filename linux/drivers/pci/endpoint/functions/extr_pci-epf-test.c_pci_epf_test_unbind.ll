; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf = type { i32, %struct.pci_epf_bar*, %struct.pci_epc* }
%struct.pci_epf_bar = type { i32 }
%struct.pci_epc = type { i32 }
%struct.pci_epf_test = type { i64*, i32 }

@BAR_0 = common dso_local global i32 0, align 4
@BAR_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_epf*)* @pci_epf_test_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_epf_test_unbind(%struct.pci_epf* %0) #0 {
  %2 = alloca %struct.pci_epf*, align 8
  %3 = alloca %struct.pci_epf_test*, align 8
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca %struct.pci_epf_bar*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_epf* %0, %struct.pci_epf** %2, align 8
  %7 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %8 = call %struct.pci_epf_test* @epf_get_drvdata(%struct.pci_epf* %7)
  store %struct.pci_epf_test* %8, %struct.pci_epf_test** %3, align 8
  %9 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %10 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %9, i32 0, i32 2
  %11 = load %struct.pci_epc*, %struct.pci_epc** %10, align 8
  store %struct.pci_epc* %11, %struct.pci_epc** %4, align 8
  %12 = load %struct.pci_epf_test*, %struct.pci_epf_test** %3, align 8
  %13 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %12, i32 0, i32 1
  %14 = call i32 @cancel_delayed_work(i32* %13)
  %15 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %16 = call i32 @pci_epc_stop(%struct.pci_epc* %15)
  %17 = load i32, i32* @BAR_0, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %55, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BAR_5, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %24 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %23, i32 0, i32 1
  %25 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pci_epf_bar, %struct.pci_epf_bar* %25, i64 %27
  store %struct.pci_epf_bar* %28, %struct.pci_epf_bar** %5, align 8
  %29 = load %struct.pci_epf_test*, %struct.pci_epf_test** %3, align 8
  %30 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %22
  %38 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %39 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %40 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pci_epf_bar*, %struct.pci_epf_bar** %5, align 8
  %43 = call i32 @pci_epc_clear_bar(%struct.pci_epc* %38, i32 %41, %struct.pci_epf_bar* %42)
  %44 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %45 = load %struct.pci_epf_test*, %struct.pci_epf_test** %3, align 8
  %46 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @pci_epf_free_space(%struct.pci_epf* %44, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %37, %22
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %18

58:                                               ; preds = %18
  ret void
}

declare dso_local %struct.pci_epf_test* @epf_get_drvdata(%struct.pci_epf*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @pci_epc_stop(%struct.pci_epc*) #1

declare dso_local i32 @pci_epc_clear_bar(%struct.pci_epc*, i32, %struct.pci_epf_bar*) #1

declare dso_local i32 @pci_epf_free_space(%struct.pci_epf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
