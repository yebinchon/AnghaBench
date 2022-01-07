; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_reset_buf_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_reset_buf_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i64 }
%struct.rtw_pci = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }

@RTK_PCI_CTRL = common dso_local global i64 0, align 8
@RTW_TX_QUEUE_BCN = common dso_local global i64 0, align 8
@RTK_PCI_TXBD_DESA_BCNQ = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_H2C = common dso_local global i64 0, align 8
@RTK_PCI_TXBD_NUM_H2CQ = common dso_local global i32 0, align 4
@RTK_PCI_TXBD_DESA_H2CQ = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_BK = common dso_local global i64 0, align 8
@RTK_PCI_TXBD_NUM_BKQ = common dso_local global i32 0, align 4
@RTK_PCI_TXBD_DESA_BKQ = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_BE = common dso_local global i64 0, align 8
@RTK_PCI_TXBD_NUM_BEQ = common dso_local global i32 0, align 4
@RTK_PCI_TXBD_DESA_BEQ = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_VO = common dso_local global i64 0, align 8
@RTK_PCI_TXBD_NUM_VOQ = common dso_local global i32 0, align 4
@RTK_PCI_TXBD_DESA_VOQ = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_VI = common dso_local global i64 0, align 8
@RTK_PCI_TXBD_NUM_VIQ = common dso_local global i32 0, align 4
@RTK_PCI_TXBD_DESA_VIQ = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_MGMT = common dso_local global i64 0, align 8
@RTK_PCI_TXBD_NUM_MGMTQ = common dso_local global i32 0, align 4
@RTK_PCI_TXBD_DESA_MGMTQ = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_HI0 = common dso_local global i64 0, align 8
@RTK_PCI_TXBD_NUM_HI0Q = common dso_local global i32 0, align 4
@RTK_PCI_TXBD_DESA_HI0Q = common dso_local global i32 0, align 4
@RTW_RX_QUEUE_MPDU = common dso_local global i64 0, align 8
@RTK_PCI_RXBD_NUM_MPDUQ = common dso_local global i32 0, align 4
@RTK_PCI_RXBD_DESA_MPDUQ = common dso_local global i32 0, align 4
@RTK_PCI_TXBD_RWPTR_CLR = common dso_local global i32 0, align 4
@RTK_PCI_TXBD_H2CQ_CSR = common dso_local global i32 0, align 4
@BIT_CLR_H2CQ_HOST_IDX = common dso_local global i32 0, align 4
@BIT_CLR_H2CQ_HW_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_pci_reset_buf_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_reset_buf_desc(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.rtw_pci*
  store %struct.rtw_pci* %10, %struct.rtw_pci** %3, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = load i64, i64* @RTK_PCI_CTRL, align 8
  %13 = add nsw i64 %12, 3
  %14 = call i32 @rtw_read8(%struct.rtw_dev* %11, i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = load i64, i64* @RTK_PCI_CTRL, align 8
  %17 = add nsw i64 %16, 3
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, 247
  %20 = call i32 @rtw_write8(%struct.rtw_dev* %15, i64 %17, i32 %19)
  %21 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %22 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i64, i64* @RTW_TX_QUEUE_BCN, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %30 = load i32, i32* @RTK_PCI_TXBD_DESA_BCNQ, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @rtw_write32(%struct.rtw_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %34 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i64, i64* @RTW_TX_QUEUE_H2C, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  %41 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %42 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i64, i64* @RTW_TX_QUEUE_H2C, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  %49 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %50 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i64, i64* @RTW_TX_QUEUE_H2C, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %57 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i64, i64* @RTW_TX_QUEUE_H2C, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %64 = load i32, i32* @RTK_PCI_TXBD_NUM_H2CQ, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @rtw_write16(%struct.rtw_dev* %63, i32 %64, i32 %65)
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %68 = load i32, i32* @RTK_PCI_TXBD_DESA_H2CQ, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @rtw_write32(%struct.rtw_dev* %67, i32 %68, i32 %69)
  %71 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %72 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i64, i64* @RTW_TX_QUEUE_BK, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %4, align 4
  %79 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %80 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i64, i64* @RTW_TX_QUEUE_BK, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %6, align 4
  %87 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %88 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i64, i64* @RTW_TX_QUEUE_BK, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %95 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i64, i64* @RTW_TX_QUEUE_BK, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %102 = load i32, i32* @RTK_PCI_TXBD_NUM_BKQ, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @rtw_write16(%struct.rtw_dev* %101, i32 %102, i32 %103)
  %105 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %106 = load i32, i32* @RTK_PCI_TXBD_DESA_BKQ, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @rtw_write32(%struct.rtw_dev* %105, i32 %106, i32 %107)
  %109 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %110 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i64, i64* @RTW_TX_QUEUE_BE, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %4, align 4
  %117 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %118 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i64, i64* @RTW_TX_QUEUE_BE, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %6, align 4
  %125 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %126 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i64, i64* @RTW_TX_QUEUE_BE, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %133 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i64, i64* @RTW_TX_QUEUE_BE, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %140 = load i32, i32* @RTK_PCI_TXBD_NUM_BEQ, align 4
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @rtw_write16(%struct.rtw_dev* %139, i32 %140, i32 %141)
  %143 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %144 = load i32, i32* @RTK_PCI_TXBD_DESA_BEQ, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @rtw_write32(%struct.rtw_dev* %143, i32 %144, i32 %145)
  %147 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %148 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i64, i64* @RTW_TX_QUEUE_VO, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %4, align 4
  %155 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %156 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = load i64, i64* @RTW_TX_QUEUE_VO, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %6, align 4
  %163 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %164 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i64, i64* @RTW_TX_QUEUE_VO, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  store i64 0, i64* %169, align 8
  %170 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %171 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %170, i32 0, i32 1
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = load i64, i64* @RTW_TX_QUEUE_VO, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  store i64 0, i64* %176, align 8
  %177 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %178 = load i32, i32* @RTK_PCI_TXBD_NUM_VOQ, align 4
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @rtw_write16(%struct.rtw_dev* %177, i32 %178, i32 %179)
  %181 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %182 = load i32, i32* @RTK_PCI_TXBD_DESA_VOQ, align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @rtw_write32(%struct.rtw_dev* %181, i32 %182, i32 %183)
  %185 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %186 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %185, i32 0, i32 1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = load i64, i64* @RTW_TX_QUEUE_VI, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %4, align 4
  %193 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %194 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %193, i32 0, i32 1
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = load i64, i64* @RTW_TX_QUEUE_VI, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %6, align 4
  %201 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %202 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %201, i32 0, i32 1
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i64, i64* @RTW_TX_QUEUE_VI, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 3
  store i64 0, i64* %207, align 8
  %208 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %209 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %208, i32 0, i32 1
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = load i64, i64* @RTW_TX_QUEUE_VI, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  store i64 0, i64* %214, align 8
  %215 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %216 = load i32, i32* @RTK_PCI_TXBD_NUM_VIQ, align 4
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @rtw_write16(%struct.rtw_dev* %215, i32 %216, i32 %217)
  %219 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %220 = load i32, i32* @RTK_PCI_TXBD_DESA_VIQ, align 4
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @rtw_write32(%struct.rtw_dev* %219, i32 %220, i32 %221)
  %223 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %224 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %223, i32 0, i32 1
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = load i64, i64* @RTW_TX_QUEUE_MGMT, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %4, align 4
  %231 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %232 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %231, i32 0, i32 1
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %232, align 8
  %234 = load i64, i64* @RTW_TX_QUEUE_MGMT, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  store i32 %238, i32* %6, align 4
  %239 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %240 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %239, i32 0, i32 1
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = load i64, i64* @RTW_TX_QUEUE_MGMT, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 3
  store i64 0, i64* %245, align 8
  %246 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %247 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %246, i32 0, i32 1
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = load i64, i64* @RTW_TX_QUEUE_MGMT, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 2
  store i64 0, i64* %252, align 8
  %253 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %254 = load i32, i32* @RTK_PCI_TXBD_NUM_MGMTQ, align 4
  %255 = load i32, i32* %4, align 4
  %256 = call i32 @rtw_write16(%struct.rtw_dev* %253, i32 %254, i32 %255)
  %257 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %258 = load i32, i32* @RTK_PCI_TXBD_DESA_MGMTQ, align 4
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @rtw_write32(%struct.rtw_dev* %257, i32 %258, i32 %259)
  %261 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %262 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %261, i32 0, i32 1
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %262, align 8
  %264 = load i64, i64* @RTW_TX_QUEUE_HI0, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %4, align 4
  %269 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %270 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %269, i32 0, i32 1
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = load i64, i64* @RTW_TX_QUEUE_HI0, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %6, align 4
  %277 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %278 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %277, i32 0, i32 1
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = load i64, i64* @RTW_TX_QUEUE_HI0, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 3
  store i64 0, i64* %283, align 8
  %284 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %285 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %284, i32 0, i32 1
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %285, align 8
  %287 = load i64, i64* @RTW_TX_QUEUE_HI0, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 2
  store i64 0, i64* %290, align 8
  %291 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %292 = load i32, i32* @RTK_PCI_TXBD_NUM_HI0Q, align 4
  %293 = load i32, i32* %4, align 4
  %294 = call i32 @rtw_write16(%struct.rtw_dev* %291, i32 %292, i32 %293)
  %295 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %296 = load i32, i32* @RTK_PCI_TXBD_DESA_HI0Q, align 4
  %297 = load i32, i32* %6, align 4
  %298 = call i32 @rtw_write32(%struct.rtw_dev* %295, i32 %296, i32 %297)
  %299 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %300 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %299, i32 0, i32 0
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %300, align 8
  %302 = load i64, i64* @RTW_RX_QUEUE_MPDU, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  store i32 %306, i32* %4, align 4
  %307 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %308 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %307, i32 0, i32 0
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = load i64, i64* @RTW_RX_QUEUE_MPDU, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %6, align 4
  %315 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %316 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %315, i32 0, i32 0
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %316, align 8
  %318 = load i64, i64* @RTW_RX_QUEUE_MPDU, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 3
  store i64 0, i64* %321, align 8
  %322 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %323 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %322, i32 0, i32 0
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %323, align 8
  %325 = load i64, i64* @RTW_RX_QUEUE_MPDU, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 2
  store i64 0, i64* %328, align 8
  %329 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %330 = load i32, i32* @RTK_PCI_RXBD_NUM_MPDUQ, align 4
  %331 = load i32, i32* %4, align 4
  %332 = and i32 %331, 4095
  %333 = call i32 @rtw_write16(%struct.rtw_dev* %329, i32 %330, i32 %332)
  %334 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %335 = load i32, i32* @RTK_PCI_RXBD_DESA_MPDUQ, align 4
  %336 = load i32, i32* %6, align 4
  %337 = call i32 @rtw_write32(%struct.rtw_dev* %334, i32 %335, i32 %336)
  %338 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %339 = load i32, i32* @RTK_PCI_TXBD_RWPTR_CLR, align 4
  %340 = call i32 @rtw_write32(%struct.rtw_dev* %338, i32 %339, i32 -1)
  %341 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %342 = load i32, i32* @RTK_PCI_TXBD_H2CQ_CSR, align 4
  %343 = load i32, i32* @BIT_CLR_H2CQ_HOST_IDX, align 4
  %344 = call i32 @rtw_write32_set(%struct.rtw_dev* %341, i32 %342, i32 %343)
  %345 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %346 = load i32, i32* @RTK_PCI_TXBD_H2CQ_CSR, align 4
  %347 = load i32, i32* @BIT_CLR_H2CQ_HW_IDX, align 4
  %348 = call i32 @rtw_write32_set(%struct.rtw_dev* %345, i32 %346, i32 %347)
  ret void
}

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i64) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
