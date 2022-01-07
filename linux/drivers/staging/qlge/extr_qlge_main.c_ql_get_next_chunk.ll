; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_get_next_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_get_next_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32 }
%struct.rx_ring = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32*, i32, i32 }
%struct.bq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }

@__GFP_COMP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"page allocation failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"PCI mapping failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.rx_ring*, %struct.bq_desc*)* @ql_get_next_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_next_chunk(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.bq_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca %struct.bq_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %6, align 8
  store %struct.bq_desc* %2, %struct.bq_desc** %7, align 8
  %9 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %10 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %97, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @__GFP_COMP, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @alloc_pages(i32 %17, i32 %20)
  %22 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %23 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32* %21, i32** %24, align 8
  %25 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %26 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %14
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %36 = load i32, i32* @drv, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netif_err(%struct.ql_adapter* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %149

43:                                               ; preds = %14
  %44 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %45 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %51 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %55 = call i64 @ql_lbq_block_size(%struct.ql_adapter* %54)
  %56 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %57 = call i32 @pci_map_page(i32 %49, i32* %53, i32 0, i64 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @pci_dma_mapping_error(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %43
  %65 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %66 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %70 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__free_pages(i32* %68, i32 %71)
  %73 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %74 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %77 = load i32, i32* @drv, align 4
  %78 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %79 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @netif_err(%struct.ql_adapter* %76, i32 %77, i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %149

84:                                               ; preds = %43
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %87 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  store i32 %85, i32* %88, align 4
  %89 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %90 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @page_address(i32* %92)
  %94 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %95 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %84, %3
  %98 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %99 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %102 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %101, i32 0, i32 1
  %103 = bitcast %struct.TYPE_3__* %100 to i8*
  %104 = bitcast %struct.TYPE_3__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 32, i1 false)
  %105 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %106 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %109 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %107
  store i64 %112, i64* %110, align 8
  %113 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %114 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %118 = call i64 @ql_lbq_block_size(%struct.ql_adapter* %117)
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %97
  %121 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %122 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i32* null, i32** %123, align 8
  %124 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %125 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  store i32 1, i32* %127, align 8
  br label %148

128:                                              ; preds = %97
  %129 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %130 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %133 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %131
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 8
  %139 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %140 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @get_page(i32* %142)
  %144 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %145 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32 0, i32* %147, align 8
  br label %148

148:                                              ; preds = %128, %120
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %64, %34
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32* @alloc_pages(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @pci_map_page(i32, i32*, i32, i64, i32) #1

declare dso_local i64 @ql_lbq_block_size(%struct.ql_adapter*) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

declare dso_local i32 @page_address(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
