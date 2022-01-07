; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_pci_tx_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32, i64, i64, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to allocate tx ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.rtw_pci_tx_ring*, i32, i32)* @rtw_pci_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_init_tx_ring(%struct.rtw_dev* %0, %struct.rtw_pci_tx_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca %struct.rtw_pci_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store %struct.rtw_pci_tx_ring* %1, %struct.rtw_pci_tx_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32* @pci_zalloc_consistent(%struct.pci_dev* %21, i32 %22, i32* %12)
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %28 = call i32 @rtw_err(%struct.rtw_dev* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %57

31:                                               ; preds = %4
  %32 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %7, align 8
  %33 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %32, i32 0, i32 1
  %34 = call i32 @skb_queue_head_init(i32* %33)
  %35 = load i32*, i32** %13, align 8
  %36 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %7, align 8
  %37 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %7, align 8
  %41 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %7, align 8
  %45 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %7, align 8
  %49 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %7, align 8
  %52 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %7, align 8
  %55 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %31, %26
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32* @pci_zalloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
