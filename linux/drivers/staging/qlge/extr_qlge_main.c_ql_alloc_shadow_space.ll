; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_alloc_shadow_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_alloc_shadow_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32*, i32, i32, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Allocation of RX shadow space failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Allocation of TX shadow space failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_alloc_shadow_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_alloc_shadow_space(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  %4 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %8, i32 0, i32 0
  %10 = call i8* @pci_zalloc_consistent(i32 %6, i32 %7, i32* %9)
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %20 = load i32, i32* @ifup, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netif_err(%struct.ql_adapter* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %1
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %32, i32 0, i32 5
  %34 = call i8* @pci_zalloc_consistent(i32 %30, i32 %31, i32* %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %27
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %44 = load i32, i32* @ifup, align 4
  %45 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netif_err(%struct.ql_adapter* %43, i32 %44, i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %50

49:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %64

50:                                               ; preds = %42
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pci_free_consistent(i32 %53, i32 %54, i32* %57, i32 %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %50, %49, %18
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i8* @pci_zalloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
