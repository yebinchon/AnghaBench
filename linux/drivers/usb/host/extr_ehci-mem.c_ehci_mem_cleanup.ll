; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mem.c_ehci_mem_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mem.c_ehci_mem_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @ehci_mem_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_mem_cleanup(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  %3 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %3, i32 0, i32 9
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %9 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %9, i32 0, i32 9
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @qh_destroy(%struct.ehci_hcd* %8, i32* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 9
  store i32* null, i32** %15, align 8
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 8
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @qh_destroy(%struct.ehci_hcd* %21, i32* %24)
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %27, i32 0, i32 8
  store i32* null, i32** %28, align 8
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %30 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @dma_pool_destroy(i32* %31)
  %33 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %34 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %33, i32 0, i32 7
  store i32* null, i32** %34, align 8
  %35 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %36 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @dma_pool_destroy(i32* %37)
  %39 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %40 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %39, i32 0, i32 6
  store i32* null, i32** %40, align 8
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dma_pool_destroy(i32* %43)
  %45 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %46 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %45, i32 0, i32 5
  store i32* null, i32** %46, align 8
  %47 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %48 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dma_pool_destroy(i32* %49)
  %51 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %52 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %51, i32 0, i32 4
  store i32* null, i32** %52, align 8
  %53 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %54 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %26
  %58 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %59 = call %struct.TYPE_4__* @ehci_to_hcd(%struct.ehci_hcd* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %64 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %70 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %73 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dma_free_coherent(i32 %62, i32 %68, i32* %71, i32 %74)
  br label %76

76:                                               ; preds = %57, %26
  %77 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %78 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  %79 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %80 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %84 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  ret void
}

declare dso_local i32 @qh_destroy(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
