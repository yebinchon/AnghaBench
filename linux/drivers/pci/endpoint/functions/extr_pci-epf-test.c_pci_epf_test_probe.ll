; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/functions/extr_pci-epf-test.c_pci_epf_test_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf = type { i32*, %struct.device }
%struct.device = type { i32 }
%struct.pci_epf_test = type { i32, %struct.pci_epf* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@test_header = common dso_local global i32 0, align 4
@pci_epf_test_cmd_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_epf*)* @pci_epf_test_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_epf_test_probe(%struct.pci_epf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_epf*, align 8
  %4 = alloca %struct.pci_epf_test*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.pci_epf* %0, %struct.pci_epf** %3, align 8
  %6 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %7 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pci_epf_test* @devm_kzalloc(%struct.device* %8, i32 16, i32 %9)
  store %struct.pci_epf_test* %10, %struct.pci_epf_test** %4, align 8
  %11 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %12 = icmp ne %struct.pci_epf_test* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %18 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %17, i32 0, i32 0
  store i32* @test_header, i32** %18, align 8
  %19 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %20 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %21 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %20, i32 0, i32 1
  store %struct.pci_epf* %19, %struct.pci_epf** %21, align 8
  %22 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %23 = getelementptr inbounds %struct.pci_epf_test, %struct.pci_epf_test* %22, i32 0, i32 0
  %24 = load i32, i32* @pci_epf_test_cmd_handler, align 4
  %25 = call i32 @INIT_DELAYED_WORK(i32* %23, i32 %24)
  %26 = load %struct.pci_epf*, %struct.pci_epf** %3, align 8
  %27 = load %struct.pci_epf_test*, %struct.pci_epf_test** %4, align 8
  %28 = call i32 @epf_set_drvdata(%struct.pci_epf* %26, %struct.pci_epf_test* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %16, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.pci_epf_test* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @epf_set_drvdata(%struct.pci_epf*, %struct.pci_epf_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
