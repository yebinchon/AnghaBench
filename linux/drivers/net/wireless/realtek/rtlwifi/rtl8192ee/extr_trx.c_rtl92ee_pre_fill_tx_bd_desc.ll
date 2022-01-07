; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_pre_fill_tx_bd_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_pre_fill_tx_bd_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rtl_pci = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }

@RTL8192EE_SEG_NUM = common dso_local global i32 0, align 4
@BEACON_QUEUE = common dso_local global i64 0, align 8
@TX_DESC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_pre_fill_tx_bd_desc(%struct.ieee80211_hw* %0, i64* %1, i64* %2, i64 %3, %struct.sk_buff* %4, i64 %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtl_priv*, align 8
  %14 = alloca %struct.rtl_pci*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  store i64 %5, i64* %12, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %30 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %29)
  store %struct.rtl_priv* %30, %struct.rtl_priv** %13, align 8
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %32 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %31)
  %33 = call %struct.rtl_pci* @rtl_pcidev(i32 %32)
  store %struct.rtl_pci* %33, %struct.rtl_pci** %14, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  store i32 40, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 40, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %37 = load i32, i32* @RTL8192EE_SEG_NUM, align 4
  %38 = add nsw i32 %37, 1
  %39 = shl i32 1, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %24, align 8
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %26, align 4
  %48 = load i64*, i64** %9, align 8
  %49 = bitcast i64* %48 to i32*
  store i32* %49, i32** %27, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = bitcast i64* %50 to i32*
  store i32* %51, i32** %28, align 8
  store i32 2, i32* %18, align 4
  %52 = load %struct.rtl_pci*, %struct.rtl_pci** %14, align 8
  %53 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %19, align 4
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %63 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %6
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @BEACON_QUEUE, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  store i32 8, i32* %23, align 4
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %6
  %77 = load i32, i32* %18, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %22, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %23, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %18, align 4
  %86 = mul nsw i32 %85, 128
  %87 = sdiv i32 %84, %86
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = mul nsw i32 %89, 128
  %91 = mul nsw i32 %88, %90
  %92 = load i32, i32* %19, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %79
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %94, %79
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.rtl_pci*, %struct.rtl_pci** %14, align 8
  %100 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* @TX_DESC_SIZE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %105, %109
  store i64 %110, i64* %25, align 8
  %111 = load i32*, i32** %28, align 8
  %112 = call i32 @set_tx_buff_desc_len_0(i32* %111, i32 0)
  %113 = load i32*, i32** %28, align 8
  %114 = call i32 @set_tx_buff_desc_psb(i32* %113, i32 0)
  %115 = load i32*, i32** %28, align 8
  %116 = call i32 @set_tx_buff_desc_own(i32* %115, i32 0)
  store i64 1, i64* %21, align 8
  br label %117

117:                                              ; preds = %139, %98
  %118 = load i64, i64* %21, align 8
  %119 = load i64, i64* %24, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %117
  %122 = load i32*, i32** %28, align 8
  %123 = load i64, i64* %21, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @set_txbuffer_desc_len_with_offset(i32* %122, i32 %124, i32 0)
  %126 = load i32*, i32** %28, align 8
  %127 = load i64, i64* %21, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @set_txbuffer_desc_amsdu_with_offset(i32* %126, i32 %128, i32 0)
  %130 = load i32*, i32** %28, align 8
  %131 = load i64, i64* %21, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @set_txbuffer_desc_add_low_with_offset(i32* %130, i32 %132, i64 0)
  %134 = load i32*, i32** %28, align 8
  %135 = load i64, i64* %21, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i32, i32* %26, align 4
  %138 = call i32 @set_txbuffer_desc_add_high_with_offset(i32* %134, i32 %136, i32 0, i32 %137)
  br label %139

139:                                              ; preds = %121
  %140 = load i64, i64* %21, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %21, align 8
  br label %117

142:                                              ; preds = %117
  %143 = load i32*, i32** %27, align 8
  %144 = load i32, i32* @TX_DESC_SIZE, align 4
  %145 = call i32 @clear_pci_tx_desc_content(i32* %143, i32 %144)
  %146 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  %147 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %142
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* @BEACON_QUEUE, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load i32*, i32** %28, align 8
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 8
  %159 = call i32 @set_tx_buff_desc_len_0(i32* %156, i32 %158)
  br label %164

160:                                              ; preds = %151
  %161 = load i32*, i32** %28, align 8
  %162 = load i32, i32* %16, align 4
  %163 = call i32 @set_tx_buff_desc_len_0(i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %155
  br label %169

165:                                              ; preds = %142
  %166 = load i32*, i32** %28, align 8
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @set_tx_buff_desc_len_0(i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %164
  %170 = load i32*, i32** %28, align 8
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @set_tx_buff_desc_psb(i32* %170, i32 %171)
  %173 = load i32*, i32** %28, align 8
  %174 = load i64, i64* %25, align 8
  %175 = call i32 @set_tx_buff_desc_addr_low_0(i32* %173, i64 %174)
  %176 = load i32*, i32** %28, align 8
  %177 = load i64, i64* %25, align 8
  %178 = trunc i64 %177 to i32
  %179 = ashr i32 %178, 32
  %180 = load i32, i32* %26, align 4
  %181 = call i32 @set_tx_buff_desc_addr_high_0(i32* %176, i32 %179, i32 %180)
  %182 = load i32*, i32** %28, align 8
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @set_txbuffer_desc_len_with_offset(i32* %182, i32 1, i32 %183)
  %185 = load i32*, i32** %28, align 8
  %186 = call i32 @set_txbuffer_desc_amsdu_with_offset(i32* %185, i32 1, i32 0)
  %187 = load i32*, i32** %28, align 8
  %188 = load i64, i64* %12, align 8
  %189 = call i32 @set_txbuffer_desc_add_low_with_offset(i32* %187, i32 1, i64 %188)
  %190 = load i32*, i32** %28, align 8
  %191 = load i64, i64* %12, align 8
  %192 = trunc i64 %191 to i32
  %193 = ashr i32 %192, 32
  %194 = load i32, i32* %26, align 4
  %195 = call i32 @set_txbuffer_desc_add_high_with_offset(i32* %190, i32 1, i32 %193, i32 %194)
  %196 = load i32*, i32** %27, align 8
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @set_tx_desc_pkt_size(i32* %196, i32 %197)
  %199 = load i32*, i32** %27, align 8
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @set_tx_desc_tx_buffer_size(i32* %199, i32 %200)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @set_tx_buff_desc_len_0(i32*, i32) #1

declare dso_local i32 @set_tx_buff_desc_psb(i32*, i32) #1

declare dso_local i32 @set_tx_buff_desc_own(i32*, i32) #1

declare dso_local i32 @set_txbuffer_desc_len_with_offset(i32*, i32, i32) #1

declare dso_local i32 @set_txbuffer_desc_amsdu_with_offset(i32*, i32, i32) #1

declare dso_local i32 @set_txbuffer_desc_add_low_with_offset(i32*, i32, i64) #1

declare dso_local i32 @set_txbuffer_desc_add_high_with_offset(i32*, i32, i32, i32) #1

declare dso_local i32 @clear_pci_tx_desc_content(i32*, i32) #1

declare dso_local i32 @set_tx_buff_desc_addr_low_0(i32*, i64) #1

declare dso_local i32 @set_tx_buff_desc_addr_high_0(i32*, i32, i32) #1

declare dso_local i32 @set_tx_desc_pkt_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
