; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_config_erp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_config_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@TXCSR1 = common dso_local global i32 0, align 4
@TXCSR1_ACK_TIMEOUT = common dso_local global i32 0, align 4
@TXCSR1_ACK_CONSUME_TIME = common dso_local global i32 0, align 4
@TXCSR1_TSF_OFFSET = common dso_local global i32 0, align 4
@IEEE80211_HEADER = common dso_local global i32 0, align 4
@TXCSR1_AUTORESPONDER = common dso_local global i32 0, align 4
@ARCSR2 = common dso_local global i32 0, align 4
@ARCSR2_SIGNAL = common dso_local global i32 0, align 4
@ARCSR2_SERVICE = common dso_local global i32 0, align 4
@ARCSR2_LENGTH = common dso_local global i32 0, align 4
@ACK_SIZE = common dso_local global i32 0, align 4
@ARCSR3 = common dso_local global i32 0, align 4
@ARCSR3_SIGNAL = common dso_local global i32 0, align 4
@ARCSR3_SERVICE = common dso_local global i32 0, align 4
@ARCSR4 = common dso_local global i32 0, align 4
@ARCSR4_SIGNAL = common dso_local global i32 0, align 4
@ARCSR4_SERVICE = common dso_local global i32 0, align 4
@ARCSR5 = common dso_local global i32 0, align 4
@ARCSR5_SIGNAL = common dso_local global i32 0, align 4
@ARCSR5_SERVICE = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@ARCSR1 = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@CSR11 = common dso_local global i32 0, align 4
@CSR11_SLOT_TIME = common dso_local global i32 0, align 4
@CSR18 = common dso_local global i32 0, align 4
@CSR18_SIFS = common dso_local global i32 0, align 4
@CSR18_PIFS = common dso_local global i32 0, align 4
@CSR19 = common dso_local global i32 0, align 4
@CSR19_DIFS = common dso_local global i32 0, align 4
@CSR19_EIFS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@CSR12 = common dso_local global i32 0, align 4
@CSR12_BEACON_INTERVAL = common dso_local global i32 0, align 4
@CSR12_CFP_MAX_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_erp*, i32)* @rt2500pci_config_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_config_erp(%struct.rt2x00_dev* %0, %struct.rt2x00lib_erp* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_erp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_erp* %1, %struct.rt2x00lib_erp** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %100

13:                                               ; preds = %3
  %14 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %15 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 3
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %19 = load i32, i32* @TXCSR1, align 4
  %20 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @TXCSR1_ACK_TIMEOUT, align 4
  %22 = call i32 @rt2x00_set_field32(i32* %8, i32 %21, i32 354)
  %23 = load i32, i32* @TXCSR1_ACK_CONSUME_TIME, align 4
  %24 = call i32 @rt2x00_set_field32(i32* %8, i32 %23, i32 162)
  %25 = load i32, i32* @TXCSR1_TSF_OFFSET, align 4
  %26 = load i32, i32* @IEEE80211_HEADER, align 4
  %27 = call i32 @rt2x00_set_field32(i32* %8, i32 %25, i32 %26)
  %28 = load i32, i32* @TXCSR1_AUTORESPONDER, align 4
  %29 = call i32 @rt2x00_set_field32(i32* %8, i32 %28, i32 1)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %31 = load i32, i32* @TXCSR1, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %30, i32 %31, i32 %32)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %35 = load i32, i32* @ARCSR2, align 4
  %36 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @ARCSR2_SIGNAL, align 4
  %38 = call i32 @rt2x00_set_field32(i32* %8, i32 %37, i32 0)
  %39 = load i32, i32* @ARCSR2_SERVICE, align 4
  %40 = call i32 @rt2x00_set_field32(i32* %8, i32 %39, i32 4)
  %41 = load i32, i32* @ARCSR2_LENGTH, align 4
  %42 = load i32, i32* @ACK_SIZE, align 4
  %43 = call i32 @GET_DURATION(i32 %42, i32 10)
  %44 = call i32 @rt2x00_set_field32(i32* %8, i32 %41, i32 %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %46 = load i32, i32* @ARCSR2, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %50 = load i32, i32* @ARCSR3, align 4
  %51 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @ARCSR3_SIGNAL, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 1, %53
  %55 = call i32 @rt2x00_set_field32(i32* %8, i32 %52, i32 %54)
  %56 = load i32, i32* @ARCSR3_SERVICE, align 4
  %57 = call i32 @rt2x00_set_field32(i32* %8, i32 %56, i32 4)
  %58 = load i32, i32* @ARCSR2_LENGTH, align 4
  %59 = load i32, i32* @ACK_SIZE, align 4
  %60 = call i32 @GET_DURATION(i32 %59, i32 20)
  %61 = call i32 @rt2x00_set_field32(i32* %8, i32 %58, i32 %60)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %63 = load i32, i32* @ARCSR3, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %62, i32 %63, i32 %64)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %67 = load i32, i32* @ARCSR4, align 4
  %68 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @ARCSR4_SIGNAL, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 2, %70
  %72 = call i32 @rt2x00_set_field32(i32* %8, i32 %69, i32 %71)
  %73 = load i32, i32* @ARCSR4_SERVICE, align 4
  %74 = call i32 @rt2x00_set_field32(i32* %8, i32 %73, i32 4)
  %75 = load i32, i32* @ARCSR2_LENGTH, align 4
  %76 = load i32, i32* @ACK_SIZE, align 4
  %77 = call i32 @GET_DURATION(i32 %76, i32 55)
  %78 = call i32 @rt2x00_set_field32(i32* %8, i32 %75, i32 %77)
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %80 = load i32, i32* @ARCSR4, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %84 = load i32, i32* @ARCSR5, align 4
  %85 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* @ARCSR5_SIGNAL, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 3, %87
  %89 = call i32 @rt2x00_set_field32(i32* %8, i32 %86, i32 %88)
  %90 = load i32, i32* @ARCSR5_SERVICE, align 4
  %91 = call i32 @rt2x00_set_field32(i32* %8, i32 %90, i32 132)
  %92 = load i32, i32* @ARCSR2_LENGTH, align 4
  %93 = load i32, i32* @ACK_SIZE, align 4
  %94 = call i32 @GET_DURATION(i32 %93, i32 110)
  %95 = call i32 @rt2x00_set_field32(i32* %8, i32 %92, i32 %94)
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %97 = load i32, i32* @ARCSR5, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %13, %3
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %107 = load i32, i32* @ARCSR1, align 4
  %108 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %109 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %105, %100
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %164

117:                                              ; preds = %112
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %119 = load i32, i32* @CSR11, align 4
  %120 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* @CSR11_SLOT_TIME, align 4
  %122 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %123 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @rt2x00_set_field32(i32* %8, i32 %121, i32 %124)
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %127 = load i32, i32* @CSR11, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %126, i32 %127, i32 %128)
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %131 = load i32, i32* @CSR18, align 4
  %132 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* @CSR18_SIFS, align 4
  %134 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %135 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @rt2x00_set_field32(i32* %8, i32 %133, i32 %136)
  %138 = load i32, i32* @CSR18_PIFS, align 4
  %139 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %140 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @rt2x00_set_field32(i32* %8, i32 %138, i32 %141)
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %144 = load i32, i32* @CSR18, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %143, i32 %144, i32 %145)
  %147 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %148 = load i32, i32* @CSR19, align 4
  %149 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %147, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* @CSR19_DIFS, align 4
  %151 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %152 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @rt2x00_set_field32(i32* %8, i32 %150, i32 %153)
  %155 = load i32, i32* @CSR19_EIFS, align 4
  %156 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %157 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @rt2x00_set_field32(i32* %8, i32 %155, i32 %158)
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %161 = load i32, i32* @CSR19, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %117, %112
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %164
  %170 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %171 = load i32, i32* @CSR12, align 4
  %172 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %170, i32 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* @CSR12_BEACON_INTERVAL, align 4
  %174 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %175 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %176, 16
  %178 = call i32 @rt2x00_set_field32(i32* %8, i32 %173, i32 %177)
  %179 = load i32, i32* @CSR12_CFP_MAX_DURATION, align 4
  %180 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %181 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %182, 16
  %184 = call i32 @rt2x00_set_field32(i32* %8, i32 %179, i32 %183)
  %185 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %186 = load i32, i32* @CSR12, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %185, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %169, %164
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @GET_DURATION(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
