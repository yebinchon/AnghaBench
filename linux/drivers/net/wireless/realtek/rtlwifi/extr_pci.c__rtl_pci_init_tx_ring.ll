; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i8*, %struct.rtl_tx_desc*, i64, i64, i8*, %struct.rtl_tx_buffer_desc* }
%struct.rtl_tx_desc = type { i32 }
%struct.rtl_tx_buffer_desc = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)* }

@.str = private unnamed_addr constant [37 x i8] c"Cannot allocate TX ring (prio = %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"queue:%d, ring_addr:%p\0A\00", align 1
@HW_DESC_TX_NEXTDESC_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @_rtl_pci_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_pci_init_tx_ring(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_pci*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_tx_buffer_desc*, align 8
  %11 = alloca %struct.rtl_tx_desc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_pci* @rtl_pcidev(i32 %17)
  store %struct.rtl_pci* %18, %struct.rtl_pci** %8, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  store %struct.rtl_priv* %20, %struct.rtl_priv** %9, align 8
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %3
  %26 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %27 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @pci_zalloc_consistent(i32 %28, i32 %32, i8** %12)
  %34 = bitcast i8* %33 to %struct.rtl_tx_buffer_desc*
  store %struct.rtl_tx_buffer_desc* %34, %struct.rtl_tx_buffer_desc** %10, align 8
  %35 = load %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_buffer_desc** %10, align 8
  %36 = icmp ne %struct.rtl_tx_buffer_desc* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_buffer_desc** %10, align 8
  %39 = ptrtoint %struct.rtl_tx_buffer_desc* %38 to i64
  %40 = and i64 %39, 255
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %25
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %186

47:                                               ; preds = %37
  %48 = load %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_buffer_desc** %10, align 8
  %49 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %50 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 8
  store %struct.rtl_tx_buffer_desc* %48, %struct.rtl_tx_buffer_desc** %55, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %58 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 7
  store i8* %56, i8** %63, align 8
  %64 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %65 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %72 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %47, %3
  %79 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %80 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @pci_zalloc_consistent(i32 %81, i32 %85, i8** %13)
  %87 = bitcast i8* %86 to %struct.rtl_tx_desc*
  store %struct.rtl_tx_desc* %87, %struct.rtl_tx_desc** %11, align 8
  %88 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %11, align 8
  %89 = icmp ne %struct.rtl_tx_desc* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %78
  %91 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %11, align 8
  %92 = ptrtoint %struct.rtl_tx_desc* %91 to i64
  %93 = and i64 %92, 255
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90, %78
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %186

100:                                              ; preds = %90
  %101 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %11, align 8
  %102 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %103 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  store %struct.rtl_tx_desc* %101, %struct.rtl_tx_desc** %108, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %111 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  store i8* %109, i8** %116, align 8
  %117 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %118 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %126 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 %124, i32* %131, align 8
  %132 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %133 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = call i32 @skb_queue_head_init(i32* %138)
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %141 = load i32, i32* @COMP_INIT, align 4
  %142 = load i32, i32* @DBG_LOUD, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %11, align 8
  %145 = call i32 @RT_TRACE(%struct.rtl_priv* %140, i32 %141, i32 %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %143, %struct.rtl_tx_desc* %144)
  %146 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %147 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %185, label %150

150:                                              ; preds = %100
  store i32 0, i32* %15, align 4
  br label %151

151:                                              ; preds = %181, %150
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %151
  %156 = load i8*, i8** %13, align 8
  %157 = ptrtoint i8* %156 to i64
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 1
  %160 = load i32, i32* %7, align 4
  %161 = urem i32 %159, %160
  %162 = zext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = add i64 %157, %163
  store i64 %164, i64* %14, align 8
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %166 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %170, align 8
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %173 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %11, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.rtl_tx_desc, %struct.rtl_tx_desc* %173, i64 %175
  %177 = bitcast %struct.rtl_tx_desc* %176 to i32*
  %178 = load i32, i32* @HW_DESC_TX_NEXTDESC_ADDR, align 4
  %179 = bitcast i64* %14 to i32*
  %180 = call i32 %171(%struct.ieee80211_hw* %172, i32* %177, i32 1, i32 %178, i32* %179)
  br label %181

181:                                              ; preds = %155
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %151

184:                                              ; preds = %151
  br label %185

185:                                              ; preds = %184, %100
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %95, %42
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i8* @pci_zalloc_consistent(i32, i32, i8**) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, %struct.rtl_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
