; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_add_epf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_add_epf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32, i32, i32 }
%struct.pci_epf = type { i32, i32, %struct.pci_epc* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_epc_add_epf(%struct.pci_epc* %0, %struct.pci_epf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_epc*, align 8
  %5 = alloca %struct.pci_epf*, align 8
  %6 = alloca i64, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %4, align 8
  store %struct.pci_epf* %1, %struct.pci_epf** %5, align 8
  %7 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %8 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %7, i32 0, i32 2
  %9 = load %struct.pci_epc*, %struct.pci_epc** %8, align 8
  %10 = icmp ne %struct.pci_epc* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %16 = call i64 @IS_ERR(%struct.pci_epc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %14
  %22 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %23 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %26 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %50

33:                                               ; preds = %21
  %34 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %35 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %36 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %35, i32 0, i32 2
  store %struct.pci_epc* %34, %struct.pci_epc** %36, align 8
  %37 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %38 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %37, i32 0, i32 1
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %42 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %41, i32 0, i32 1
  %43 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %44 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %43, i32 0, i32 2
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load %struct.pci_epc*, %struct.pci_epc** %4, align 8
  %47 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %46, i32 0, i32 1
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %33, %30, %18, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @IS_ERR(%struct.pci_epc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
