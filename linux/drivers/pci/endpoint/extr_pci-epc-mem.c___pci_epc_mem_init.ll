; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-mem.c___pci_epc_mem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-mem.c___pci_epc_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { %struct.pci_epc_mem* }
%struct.pci_epc_mem = type { i64*, i64, i32, i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pci_epc_mem_init(%struct.pci_epc* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_epc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_epc_mem*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_epc* %0, %struct.pci_epc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @ilog2(i64 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %13, align 4
  %26 = zext i32 %25 to i64
  %27 = lshr i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @BITS_TO_LONGS(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kzalloc(i32 40, i32 %34)
  %36 = bitcast i8* %35 to %struct.pci_epc_mem*
  store %struct.pci_epc_mem* %36, %struct.pci_epc_mem** %11, align 8
  %37 = load %struct.pci_epc_mem*, %struct.pci_epc_mem** %11, align 8
  %38 = icmp ne %struct.pci_epc_mem* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %21
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %74

42:                                               ; preds = %21
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 %43, i32 %44)
  %46 = bitcast i8* %45 to i64*
  store i64* %46, i64** %12, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %71

52:                                               ; preds = %42
  %53 = load i64*, i64** %12, align 8
  %54 = load %struct.pci_epc_mem*, %struct.pci_epc_mem** %11, align 8
  %55 = getelementptr inbounds %struct.pci_epc_mem, %struct.pci_epc_mem* %54, i32 0, i32 0
  store i64* %53, i64** %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.pci_epc_mem*, %struct.pci_epc_mem** %11, align 8
  %58 = getelementptr inbounds %struct.pci_epc_mem, %struct.pci_epc_mem* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.pci_epc_mem*, %struct.pci_epc_mem** %11, align 8
  %61 = getelementptr inbounds %struct.pci_epc_mem, %struct.pci_epc_mem* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.pci_epc_mem*, %struct.pci_epc_mem** %11, align 8
  %64 = getelementptr inbounds %struct.pci_epc_mem, %struct.pci_epc_mem* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.pci_epc_mem*, %struct.pci_epc_mem** %11, align 8
  %67 = getelementptr inbounds %struct.pci_epc_mem, %struct.pci_epc_mem* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.pci_epc_mem*, %struct.pci_epc_mem** %11, align 8
  %69 = load %struct.pci_epc*, %struct.pci_epc** %6, align 8
  %70 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %69, i32 0, i32 0
  store %struct.pci_epc_mem* %68, %struct.pci_epc_mem** %70, align 8
  store i32 0, i32* %5, align 4
  br label %76

71:                                               ; preds = %49
  %72 = load %struct.pci_epc_mem*, %struct.pci_epc_mem** %11, align 8
  %73 = call i32 @kfree(%struct.pci_epc_mem* %72)
  br label %74

74:                                               ; preds = %71, %39
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %52
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.pci_epc_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
