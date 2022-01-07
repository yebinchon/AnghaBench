; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_alloc_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_alloc_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, %struct.sk_buff***, %struct.rx_desc**, i64*, i32* }
%struct.sk_buff = type { i64, %struct.net_device* }
%struct.rx_desc = type { i32, i32, i32, i32 }

@MAX_RX_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot allocate RX ring\0A\00", align 1
@ENOMEM = common dso_local global i16 0, align 2
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.net_device*)* @_rtl92e_alloc_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @_rtl92e_alloc_rx_ring(%struct.net_device* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca %struct.rx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %4, align 8
  store %struct.rx_desc* null, %struct.rx_desc** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %158, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAX_RX_QUEUE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %161

16:                                               ; preds = %12
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 16, %23
  %25 = trunc i64 %24 to i32
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call %struct.rx_desc* @pci_zalloc_consistent(i32 %19, i32 %25, i32* %31)
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 4
  %35 = load %struct.rx_desc**, %struct.rx_desc*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rx_desc*, %struct.rx_desc** %35, i64 %37
  store %struct.rx_desc* %32, %struct.rx_desc** %38, align 8
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 4
  %41 = load %struct.rx_desc**, %struct.rx_desc*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.rx_desc*, %struct.rx_desc** %41, i64 %43
  %45 = load %struct.rx_desc*, %struct.rx_desc** %44, align 8
  %46 = icmp ne %struct.rx_desc* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %16
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 4
  %50 = load %struct.rx_desc**, %struct.rx_desc*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.rx_desc*, %struct.rx_desc** %50, i64 %52
  %54 = load %struct.rx_desc*, %struct.rx_desc** %53, align 8
  %55 = ptrtoint %struct.rx_desc* %54 to i64
  %56 = and i64 %55, 255
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47, %16
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @netdev_warn(%struct.net_device* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %61 = load i16, i16* @ENOMEM, align 2
  %62 = sext i16 %61 to i32
  %63 = sub nsw i32 0, %62
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %2, align 2
  br label %162

65:                                               ; preds = %47
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 5
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 0, i64* %71, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %148, %65
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %75 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %151

78:                                               ; preds = %72
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.sk_buff* @dev_alloc_skb(i32 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %8, align 8
  %83 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %84 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %83, i32 0, i32 4
  %85 = load %struct.rx_desc**, %struct.rx_desc*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.rx_desc*, %struct.rx_desc** %85, i64 %87
  %89 = load %struct.rx_desc*, %struct.rx_desc** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %89, i64 %91
  store %struct.rx_desc* %92, %struct.rx_desc** %5, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %78
  store i16 0, i16* %2, align 2
  br label %162

96:                                               ; preds = %78
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  store %struct.net_device* %97, %struct.net_device** %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 3
  %103 = load %struct.sk_buff***, %struct.sk_buff**** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %103, i64 %105
  %107 = load %struct.sk_buff**, %struct.sk_buff*** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %107, i64 %109
  store %struct.sk_buff* %100, %struct.sk_buff** %110, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %9, align 8
  %115 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %116 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = call i32 @skb_tail_pointer_rsl(%struct.sk_buff* %118)
  %120 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %121 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %124 = call i32 @pci_map_single(i32 %117, i32 %119, i32 %122, i32 %123)
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %127 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @pci_dma_mapping_error(i32 %128, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %96
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %134)
  store i16 -1, i16* %2, align 2
  br label %162

136:                                              ; preds = %96
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %140 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %142 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %145 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %147 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %146, i32 0, i32 0
  store i32 1, i32* %147, align 4
  br label %148

148:                                              ; preds = %136
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %72

151:                                              ; preds = %72
  %152 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %153 = icmp ne %struct.rx_desc* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %156 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %12

161:                                              ; preds = %12
  store i16 0, i16* %2, align 2
  br label %162

162:                                              ; preds = %161, %133, %95, %58
  %163 = load i16, i16* %2, align 2
  ret i16 %163
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local %struct.rx_desc* @pci_zalloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_tail_pointer_rsl(%struct.sk_buff*) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
