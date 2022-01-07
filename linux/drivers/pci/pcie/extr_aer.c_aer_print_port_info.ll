; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_print_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_print_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.aer_err_info = type { i32, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"%s%s error received: %04x:%02x:%02x.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Multiple \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@aer_error_severity_string = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.aer_err_info*)* @aer_print_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aer_print_port_info(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.aer_err_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %4, align 8
  %7 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %8 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = ashr i32 %9, 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %12 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 255
  store i32 %14, i32* %6, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %17 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %22 = load i32*, i32** @aer_error_severity_string, align 8
  %23 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %24 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pci_domain_nr(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @PCI_SLOT(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @PCI_FUNC(i32 %35)
  %37 = call i32 @pci_info(%struct.pci_dev* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %27, i32 %31, i32 %32, i32 %34, i32 %36)
  ret void
}

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
