; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00_intf = type { i32 }
%struct.rt2x00intf_conf = type { i32, i8**, i8** }

@CONFIG_UPDATE_TYPE = common dso_local global i32 0, align 4
@TXRX_CSR9 = common dso_local global i32 0, align 4
@TXRX_CSR9_TSF_SYNC = common dso_local global i32 0, align 4
@CONFIG_UPDATE_MAC = common dso_local global i32 0, align 4
@MAC_CSR3_UNICAST_TO_ME_MASK = common dso_local global i32 0, align 4
@MAC_CSR2 = common dso_local global i32 0, align 4
@CONFIG_UPDATE_BSSID = common dso_local global i32 0, align 4
@MAC_CSR5_BSS_ID_MASK = common dso_local global i32 0, align 4
@MAC_CSR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00_intf*, %struct.rt2x00intf_conf*, i32)* @rt61pci_config_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_intf(%struct.rt2x00_dev* %0, %struct.rt2x00_intf* %1, %struct.rt2x00intf_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00_intf*, align 8
  %7 = alloca %struct.rt2x00intf_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00_intf* %1, %struct.rt2x00_intf** %6, align 8
  store %struct.rt2x00intf_conf* %2, %struct.rt2x00intf_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @CONFIG_UPDATE_TYPE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %16 = load i32, i32* @TXRX_CSR9, align 4
  %17 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @TXRX_CSR9_TSF_SYNC, align 4
  %19 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %20 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rt2x00_set_field32(i32* %9, i32 %18, i32 %21)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %24 = load i32, i32* @TXRX_CSR9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %14, %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CONFIG_UPDATE_MAC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %34 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %33, i32 0, i32 2
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @le32_to_cpu(i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @MAC_CSR3_UNICAST_TO_ME_MASK, align 4
  %40 = call i32 @rt2x00_set_field32(i32* %9, i32 %39, i32 255)
  %41 = load i32, i32* %9, align 4
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %44 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* %42, i8** %46, align 8
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %48 = load i32, i32* @MAC_CSR2, align 4
  %49 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %50 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %47, i32 %48, i8** %51, i32 8)
  br label %53

53:                                               ; preds = %32, %27
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @CONFIG_UPDATE_BSSID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %60 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @le32_to_cpu(i8* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @MAC_CSR5_BSS_ID_MASK, align 4
  %66 = call i32 @rt2x00_set_field32(i32* %9, i32 %65, i32 3)
  %67 = load i32, i32* %9, align 4
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %70 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  store i8* %68, i8** %72, align 8
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %74 = load i32, i32* @MAC_CSR4, align 4
  %75 = load %struct.rt2x00intf_conf*, %struct.rt2x00intf_conf** %7, align 8
  %76 = getelementptr inbounds %struct.rt2x00intf_conf, %struct.rt2x00intf_conf* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %73, i32 %74, i8** %77, i32 8)
  br label %79

79:                                               ; preds = %58, %53
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev*, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
