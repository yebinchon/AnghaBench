; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_pci_rx_ring = type { %struct.sk_buff**, %struct.TYPE_2__ }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32, i64, i64, i32 }
%struct.pci_dev = type { i32 }

@RTK_PCI_RX_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate rx ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to init rx buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.rtw_pci_rx_ring*, i32, i32)* @rtw_pci_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_init_rx_ring(%struct.rtw_dev* %0, %struct.rtw_pci_rx_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca %struct.rtw_pci_rx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store %struct.rtw_pci_rx_ring* %1, %struct.rtw_pci_rx_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %20 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.pci_dev* @to_pci_dev(i32 %21)
  store %struct.pci_dev* %22, %struct.pci_dev** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @RTK_PCI_RX_BUF_SIZE, align 4
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call i32* @pci_zalloc_consistent(%struct.pci_dev* %27, i32 %28, i32* %12)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %4
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %34 = call i32 @rtw_err(%struct.rtw_dev* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %150

37:                                               ; preds = %4
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %7, align 8
  %40 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %81, %37
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load i32, i32* %15, align 4
  %48 = call %struct.sk_buff* @dev_alloc_skb(i32 %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %11, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %18, align 4
  br label %103

55:                                               ; preds = %46
  %56 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @memset(i32 %58, i32 0, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %7, align 8
  %63 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %62, i32 0, i32 0
  %64 = load %struct.sk_buff**, %struct.sk_buff*** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %64, i64 %66
  store %struct.sk_buff* %61, %struct.sk_buff** %67, align 8
  %68 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %7, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @rtw_pci_reset_rx_desc(%struct.rtw_dev* %68, %struct.sk_buff* %69, %struct.rtw_pci_rx_ring* %70, i32 %71, i32 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %55
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %17, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %78)
  br label %103

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %42

84:                                               ; preds = %42
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %7, align 8
  %87 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %7, align 8
  %91 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %7, align 8
  %95 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 4
  %97 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %7, align 8
  %98 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %7, align 8
  %101 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  store i32 0, i32* %5, align 4
  br label %150

103:                                              ; preds = %76, %51
  store i32 0, i32* %16, align 4
  br label %104

104:                                              ; preds = %138, %103
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %141

108:                                              ; preds = %104
  %109 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %7, align 8
  %110 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %109, i32 0, i32 0
  %111 = load %struct.sk_buff**, %struct.sk_buff*** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %111, i64 %113
  %115 = load %struct.sk_buff*, %struct.sk_buff** %114, align 8
  store %struct.sk_buff* %115, %struct.sk_buff** %11, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %117 = icmp ne %struct.sk_buff* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %108
  br label %138

119:                                              ; preds = %108
  %120 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %12, align 4
  %125 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %129 = call i32 @pci_unmap_single(%struct.pci_dev* %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %131 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %130)
  %132 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %7, align 8
  %133 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %132, i32 0, i32 0
  %134 = load %struct.sk_buff**, %struct.sk_buff*** %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %134, i64 %136
  store %struct.sk_buff* null, %struct.sk_buff** %137, align 8
  br label %138

138:                                              ; preds = %119, %118
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %16, align 4
  br label %104

141:                                              ; preds = %104
  %142 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %143 = load i32, i32* %14, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @pci_free_consistent(%struct.pci_dev* %142, i32 %143, i32* %144, i32 %145)
  %147 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %148 = call i32 @rtw_err(%struct.rtw_dev* %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i32, i32* %18, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %141, %84, %32
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32* @pci_zalloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rtw_pci_reset_rx_desc(%struct.rtw_dev*, %struct.sk_buff*, %struct.rtw_pci_rx_ring*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
