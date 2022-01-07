; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-ep-cfs.c_pci_epc_epf_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-ep-cfs.c_pci_epc_epf_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.pci_epf_group = type { %struct.pci_epf* }
%struct.pci_epf = type { i64 }
%struct.pci_epc_group = type { i32, %struct.pci_epc* }
%struct.pci_epc = type { i32 }

@BITS_PER_LONG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.config_item*)* @pci_epc_epf_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_epc_epf_link(%struct.config_item* %0, %struct.config_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_epf_group*, align 8
  %9 = alloca %struct.pci_epc_group*, align 8
  %10 = alloca %struct.pci_epc*, align 8
  %11 = alloca %struct.pci_epf*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store %struct.config_item* %1, %struct.config_item** %5, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.pci_epf_group* @to_pci_epf_group(%struct.config_item* %12)
  store %struct.pci_epf_group* %13, %struct.pci_epf_group** %8, align 8
  %14 = load %struct.config_item*, %struct.config_item** %4, align 8
  %15 = call %struct.pci_epc_group* @to_pci_epc_group(%struct.config_item* %14)
  store %struct.pci_epc_group* %15, %struct.pci_epc_group** %9, align 8
  %16 = load %struct.pci_epc_group*, %struct.pci_epc_group** %9, align 8
  %17 = getelementptr inbounds %struct.pci_epc_group, %struct.pci_epc_group* %16, i32 0, i32 1
  %18 = load %struct.pci_epc*, %struct.pci_epc** %17, align 8
  store %struct.pci_epc* %18, %struct.pci_epc** %10, align 8
  %19 = load %struct.pci_epf_group*, %struct.pci_epf_group** %8, align 8
  %20 = getelementptr inbounds %struct.pci_epf_group, %struct.pci_epf_group* %19, i32 0, i32 0
  %21 = load %struct.pci_epf*, %struct.pci_epf** %20, align 8
  store %struct.pci_epf* %21, %struct.pci_epf** %11, align 8
  %22 = load %struct.pci_epc_group*, %struct.pci_epc_group** %9, align 8
  %23 = getelementptr inbounds %struct.pci_epc_group, %struct.pci_epc_group* %22, i32 0, i32 0
  %24 = load i64, i64* @BITS_PER_LONG, align 8
  %25 = call i64 @find_first_zero_bit(i32* %23, i64 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @BITS_PER_LONG, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %63

32:                                               ; preds = %2
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.pci_epc_group*, %struct.pci_epc_group** %9, align 8
  %35 = getelementptr inbounds %struct.pci_epc_group, %struct.pci_epc_group* %34, i32 0, i32 0
  %36 = call i32 @set_bit(i64 %33, i32* %35)
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.pci_epf*, %struct.pci_epf** %11, align 8
  %39 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.pci_epc*, %struct.pci_epc** %10, align 8
  %41 = load %struct.pci_epf*, %struct.pci_epf** %11, align 8
  %42 = call i32 @pci_epc_add_epf(%struct.pci_epc* %40, %struct.pci_epf* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %57

46:                                               ; preds = %32
  %47 = load %struct.pci_epf*, %struct.pci_epf** %11, align 8
  %48 = call i32 @pci_epf_bind(%struct.pci_epf* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %63

53:                                               ; preds = %51
  %54 = load %struct.pci_epc*, %struct.pci_epc** %10, align 8
  %55 = load %struct.pci_epf*, %struct.pci_epf** %11, align 8
  %56 = call i32 @pci_epc_remove_epf(%struct.pci_epc* %54, %struct.pci_epf* %55)
  br label %57

57:                                               ; preds = %53, %45
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.pci_epc_group*, %struct.pci_epc_group** %9, align 8
  %60 = getelementptr inbounds %struct.pci_epc_group, %struct.pci_epc_group* %59, i32 0, i32 0
  %61 = call i32 @clear_bit(i64 %58, i32* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %52, %29
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.pci_epf_group* @to_pci_epf_group(%struct.config_item*) #1

declare dso_local %struct.pci_epc_group* @to_pci_epc_group(%struct.config_item*) #1

declare dso_local i64 @find_first_zero_bit(i32*, i64) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @pci_epc_add_epf(%struct.pci_epc*, %struct.pci_epf*) #1

declare dso_local i32 @pci_epf_bind(%struct.pci_epf*) #1

declare dso_local i32 @pci_epc_remove_epf(%struct.pci_epc*, %struct.pci_epf*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
