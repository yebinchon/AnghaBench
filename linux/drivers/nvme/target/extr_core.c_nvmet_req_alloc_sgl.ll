; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_req_alloc_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_req_alloc_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { i32, i32, i32, %struct.pci_dev*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.pci_dev = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CONFIG_PCI_P2PDMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_req_alloc_sgl(%struct.nvmet_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_req*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %3, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  %5 = load i32, i32* @CONFIG_PCI_P2PDMA, align 4
  %6 = call i64 @IS_ENABLED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %1
  %9 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %10 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %8
  %16 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %17 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %16, i32 0, i32 5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %22 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %21, i32 0, i32 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %28 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %27, i32 0, i32 5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.pci_dev* @radix_tree_lookup(i32* %26, i32 %31)
  store %struct.pci_dev* %32, %struct.pci_dev** %4, align 8
  br label %33

33:                                               ; preds = %20, %15, %8
  %34 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %35 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %34, i32 0, i32 3
  store %struct.pci_dev* null, %struct.pci_dev** %35, align 8
  %36 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %37 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %36, i32 0, i32 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %33
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = icmp ne %struct.pci_dev* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %48 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %47, i32 0, i32 1
  %49 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %50 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pci_p2pmem_alloc_sgl(%struct.pci_dev* %46, i32* %48, i32 %51)
  %53 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %54 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %56 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %62 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %61, i32 0, i32 3
  store %struct.pci_dev* %60, %struct.pci_dev** %62, align 8
  store i32 0, i32* %2, align 4
  br label %83

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %42, %33
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %67 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %71 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %70, i32 0, i32 1
  %72 = call i32 @sgl_alloc(i32 %68, i32 %69, i32* %71)
  %73 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %74 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %76 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %79, %59
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.pci_dev* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @pci_p2pmem_alloc_sgl(%struct.pci_dev*, i32*, i32) #1

declare dso_local i32 @sgl_alloc(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
