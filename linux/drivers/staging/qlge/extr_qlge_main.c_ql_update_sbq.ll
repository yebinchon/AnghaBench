; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_update_sbq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_update_sbq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }
%struct.rx_ring = type { i64, i32, i64, i32, i32, i32, %struct.bq_desc* }
%struct.bq_desc = type { i64, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"sbq: try cleaning clean_idx = %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"sbq: getting new skb for index %d.\0A\00", align 1
@SMALL_BUFFER_SIZE = common dso_local global i32 0, align 4
@QLGE_SB_PAD = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"PCI mapping failed.\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"sbq: updating prod idx = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*)* @ql_update_sbq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_update_sbq(%struct.ql_adapter* %0, %struct.rx_ring* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bq_desc*, align 8
  %8 = alloca i32, align 4
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

14:                                               ; preds = %168, %2
  %15 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 16
  br i1 %18, label %19, label %173

19:                                               ; preds = %14
  %20 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = urem i64 %22, 16
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %146, %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %149

28:                                               ; preds = %25
  %29 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %29, i32 0, i32 6
  %31 = load %struct.bq_desc*, %struct.bq_desc** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %31, i64 %32
  store %struct.bq_desc* %33, %struct.bq_desc** %7, align 8
  %34 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %35 = load i32, i32* @rx_status, align 4
  %36 = load i32, i32* @KERN_DEBUG, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @netif_printk(%struct.ql_adapter* %34, i32 %35, i32 %36, i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %43 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp eq %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %136

47:                                               ; preds = %28
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = load i32, i32* @rx_status, align 4
  %50 = load i32, i32* @KERN_DEBUG, align 4
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %55 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @netif_printk(%struct.ql_adapter* %48, i32 %49, i32 %50, i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SMALL_BUFFER_SIZE, align 4
  %62 = call %struct.TYPE_6__* @netdev_alloc_skb(i32 %60, i32 %61)
  %63 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %64 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %65, align 8
  %66 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %67 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = icmp eq %struct.TYPE_6__* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %47
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %74 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %197

75:                                               ; preds = %47
  %76 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %77 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* @QLGE_SB_PAD, align 4
  %81 = call i32 @skb_reserve(%struct.TYPE_6__* %79, i32 %80)
  %82 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %86 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %92 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %95 = call i32 @pci_map_single(i32 %84, i32 %90, i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @pci_dma_mapping_error(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %75
  %103 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %104 = load i32, i32* @ifup, align 4
  %105 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @netif_err(%struct.ql_adapter* %103, i32 %104, i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i64, i64* %5, align 8
  %110 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %111 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %113 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = call i32 @dev_kfree_skb_any(%struct.TYPE_6__* %115)
  %117 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %118 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %119, align 8
  br label %197

120:                                              ; preds = %75
  %121 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %122 = load i32, i32* @mapaddr, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @dma_unmap_addr_set(%struct.bq_desc* %121, i32 %122, i32 %123)
  %125 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %126 = load i32, i32* @maplen, align 4
  %127 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %128 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dma_unmap_len_set(%struct.bq_desc* %125, i32 %126, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @cpu_to_le64(i32 %131)
  %133 = load %struct.bq_desc*, %struct.bq_desc** %7, align 8
  %134 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  store i32 %132, i32* %135, align 4
  br label %136

136:                                              ; preds = %120, %28
  %137 = load i64, i64* %5, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %5, align 8
  %139 = load i64, i64* %5, align 8
  %140 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %141 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  store i64 0, i64* %5, align 8
  br label %145

145:                                              ; preds = %144, %136
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %25

149:                                              ; preds = %25
  %150 = load i64, i64* %5, align 8
  %151 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %152 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %154 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 16
  store i32 %156, i32* %154, align 8
  %157 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %158 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %162 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %160, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %149
  %166 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %167 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %166, i32 0, i32 3
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %165, %149
  %169 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %170 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %171, 16
  store i32 %172, i32* %170, align 8
  br label %14

173:                                              ; preds = %14
  %174 = load i64, i64* %6, align 8
  %175 = load i64, i64* %5, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %197

177:                                              ; preds = %173
  %178 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %179 = load i32, i32* @rx_status, align 4
  %180 = load i32, i32* @KERN_DEBUG, align 4
  %181 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %185 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = call i32 @netif_printk(%struct.ql_adapter* %178, i32 %179, i32 %180, i32 %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %187)
  %189 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %190 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %194 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ql_write_db_reg(i64 %192, i32 %195)
  br label %197

197:                                              ; preds = %71, %102, %177, %173
  ret void
}

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*, i64) #1

declare dso_local %struct.TYPE_6__* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_6__*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.bq_desc*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.bq_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ql_write_db_reg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
