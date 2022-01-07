; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i64 }
%struct.rtw_pci = type { i32*, i32 }

@IMR_HIGHDOK = common dso_local global i32 0, align 4
@IMR_MGNTDOK = common dso_local global i32 0, align 4
@IMR_BKDOK = common dso_local global i32 0, align 4
@IMR_BEDOK = common dso_local global i32 0, align 4
@IMR_VIDOK = common dso_local global i32 0, align 4
@IMR_VODOK = common dso_local global i32 0, align 4
@IMR_ROK = common dso_local global i32 0, align 4
@IMR_BCNDMAINT_E = common dso_local global i32 0, align 4
@IMR_TXFOVW = common dso_local global i32 0, align 4
@IMR_H2CDOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_init(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.rtw_pci*
  store %struct.rtw_pci* %8, %struct.rtw_pci** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @IMR_HIGHDOK, align 4
  %10 = load i32, i32* @IMR_MGNTDOK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IMR_BKDOK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IMR_BEDOK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IMR_VIDOK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IMR_VODOK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IMR_ROK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IMR_BCNDMAINT_E, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %25 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @IMR_TXFOVW, align 4
  %29 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %30 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @IMR_H2CDOK, align 4
  %34 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %35 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %33, i32* %37, align 4
  %38 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %39 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %42 = call i32 @rtw_pci_init_trx_ring(%struct.rtw_dev* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rtw_pci_init_trx_ring(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
