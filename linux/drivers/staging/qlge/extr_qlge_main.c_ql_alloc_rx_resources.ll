; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_alloc_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_alloc_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.rx_ring = type { i32*, i64, i32*, i32, i32, i32*, i64, i32*, i32, i32, i32*, i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rx_ring alloc failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Small buffer queue allocation failed.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Large buffer queue allocation failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.rx_ring*)* @ql_alloc_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_alloc_rx_resources(%struct.ql_adapter* %0, %struct.rx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca %struct.rx_ring*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %5, align 8
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %7 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %10 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %9, i32 0, i32 12
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %13 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %12, i32 0, i32 11
  %14 = call i8* @pci_alloc_consistent(i32 %8, i32 %11, i32* %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %17 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %16, i32 0, i32 10
  store i32* %15, i32** %17, align 8
  %18 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %19 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %18, i32 0, i32 10
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %24 = load i32, i32* @ifup, align 4
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_err(%struct.ql_adapter* %23, i32 %24, i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %132

31:                                               ; preds = %2
  %32 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %33 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %31
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %44 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %43, i32 0, i32 8
  %45 = call i8* @pci_alloc_consistent(i32 %39, i32 %42, i32* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %48 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %47, i32 0, i32 7
  store i32* %46, i32** %48, align 8
  %49 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %50 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %36
  %54 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %55 = load i32, i32* @ifup, align 4
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @netif_err(%struct.ql_adapter* %54, i32 %55, i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %126

60:                                               ; preds = %36
  %61 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %62 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kmalloc_array(i64 %63, i32 4, i32 %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %68 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %67, i32 0, i32 5
  store i32* %66, i32** %68, align 8
  %69 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %70 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %126

74:                                               ; preds = %60
  %75 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %76 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %77 = call i32 @ql_init_sbq_ring(%struct.ql_adapter* %75, %struct.rx_ring* %76)
  br label %78

78:                                               ; preds = %74, %31
  %79 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %80 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %125

83:                                               ; preds = %78
  %84 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %88 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %91 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %90, i32 0, i32 3
  %92 = call i8* @pci_alloc_consistent(i32 %86, i32 %89, i32* %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %95 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %94, i32 0, i32 2
  store i32* %93, i32** %95, align 8
  %96 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %97 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %83
  %101 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %102 = load i32, i32* @ifup, align 4
  %103 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @netif_err(%struct.ql_adapter* %101, i32 %102, i32 %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %126

107:                                              ; preds = %83
  %108 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %109 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i8* @kmalloc_array(i64 %110, i32 4, i32 %111)
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %115 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %114, i32 0, i32 0
  store i32* %113, i32** %115, align 8
  %116 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %117 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  br label %126

121:                                              ; preds = %107
  %122 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %123 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %124 = call i32 @ql_init_lbq_ring(%struct.ql_adapter* %122, %struct.rx_ring* %123)
  br label %125

125:                                              ; preds = %121, %78
  store i32 0, i32* %3, align 4
  br label %132

126:                                              ; preds = %120, %100, %73, %53
  %127 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %128 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %129 = call i32 @ql_free_rx_resources(%struct.ql_adapter* %127, %struct.rx_ring* %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %125, %22
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i8* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @ql_init_sbq_ring(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local i32 @ql_init_lbq_ring(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local i32 @ql_free_rx_resources(%struct.ql_adapter*, %struct.rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
