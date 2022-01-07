; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_update_lbq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_update_lbq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.rx_ring = type { i64, i32, i64, i64, i32, i32, %struct.bq_desc* }
%struct.bq_desc = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"lbq: try cleaning clean_idx = %d.\0A\00", align 1
@ifup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Could not get a page chunk, i=%d, clean_idx =%d .\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"lbq: updating prod idx = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*)* @ql_update_lbq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_update_lbq(%struct.ql_adapter* %0, %struct.rx_ring* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bq_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %4, align 8
  %10 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %11 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %125, %2
  %15 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 32
  br i1 %18, label %19, label %130

19:                                               ; preds = %14
  %20 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = urem i64 %22, 16
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %104, %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %107

28:                                               ; preds = %25
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %30 = load i32, i32* @rx_status, align 4
  %31 = load i32, i32* @KERN_DEBUG, align 4
  %32 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @netif_printk(%struct.ql_adapter* %29, i32 %30, i32 %31, i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %38 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %37, i32 0, i32 6
  %39 = load %struct.bq_desc*, %struct.bq_desc** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %39, i64 %40
  store %struct.bq_desc* %41, %struct.bq_desc** %7, align 8
  %42 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %43 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %44 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %45 = call i64 @ql_get_next_chunk(%struct.ql_adapter* %42, %struct.rx_ring* %43, %struct.bq_desc* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %28
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %50 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %52 = load i32, i32* @ifup, align 4
  %53 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @netif_err(%struct.ql_adapter* %51, i32 %52, i32 %55, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %56, i64 %57)
  br label %152

59:                                               ; preds = %28
  %60 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %61 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %66 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %64, %69
  store i64 %70, i64* %8, align 8
  %71 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %72 = load i32, i32* @mapaddr, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @dma_unmap_addr_set(%struct.bq_desc* %71, i32 %72, i64 %73)
  %75 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %76 = load i32, i32* @maplen, align 4
  %77 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %78 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dma_unmap_len_set(%struct.bq_desc* %75, i32 %76, i32 %79)
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @cpu_to_le64(i64 %81)
  %83 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %84 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  store i32 %82, i32* %85, align 4
  %86 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %91 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %94 = call i32 @pci_dma_sync_single_for_device(i32 %88, i64 %89, i32 %92, i32 %93)
  %95 = load i64, i64* %5, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %5, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %99 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %59
  store i64 0, i64* %5, align 8
  br label %103

103:                                              ; preds = %102, %59
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %25

107:                                              ; preds = %25
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %110 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %112 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 16
  store i64 %114, i64* %112, align 8
  %115 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %116 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %119 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %107
  %123 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %124 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %123, i32 0, i32 3
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %107
  %126 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %127 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 16
  store i32 %129, i32* %127, align 8
  br label %14

130:                                              ; preds = %14
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* %5, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %130
  %135 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %136 = load i32, i32* @rx_status, align 4
  %137 = load i32, i32* @KERN_DEBUG, align 4
  %138 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %142 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @netif_printk(%struct.ql_adapter* %135, i32 %136, i32 %137, i32 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %143)
  %145 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %146 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %149 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @ql_write_db_reg(i64 %147, i32 %150)
  br label %152

152:                                              ; preds = %47, %134, %130
  ret void
}

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ql_get_next_chunk(%struct.ql_adapter*, %struct.rx_ring*, %struct.bq_desc*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.bq_desc*, i32, i64) #1

declare dso_local i32 @dma_unmap_len_set(%struct.bq_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local i32 @ql_write_db_reg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
