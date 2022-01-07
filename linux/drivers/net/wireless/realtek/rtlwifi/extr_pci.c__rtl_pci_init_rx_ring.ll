; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.rtl_rx_desc*, i64, i32, %struct.rtl_rx_buffer_desc* }
%struct.rtl_rx_desc = type { i32 }
%struct.rtl_rx_buffer_desc = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)* }

@.str = private unnamed_addr constant [25 x i8] c"Cannot allocate RX ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HW_DESC_RXERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl_pci_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_pci_init_rx_ring(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_rx_buffer_desc*, align 8
  %10 = alloca %struct.rtl_rx_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_pci* @rtl_pcidev(i32 %13)
  store %struct.rtl_pci* %14, %struct.rtl_pci** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %7, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %113

21:                                               ; preds = %2
  store %struct.rtl_rx_buffer_desc* null, %struct.rtl_rx_buffer_desc** %9, align 8
  %22 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %23 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %26 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %32 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = call i8* @pci_zalloc_consistent(i32 %24, i32 %30, i32* %37)
  %39 = bitcast i8* %38 to %struct.rtl_rx_buffer_desc*
  %40 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %41 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store %struct.rtl_rx_buffer_desc* %39, %struct.rtl_rx_buffer_desc** %46, align 8
  %47 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %48 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load %struct.rtl_rx_buffer_desc*, %struct.rtl_rx_buffer_desc** %53, align 8
  %55 = icmp ne %struct.rtl_rx_buffer_desc* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %21
  %57 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %58 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load %struct.rtl_rx_buffer_desc*, %struct.rtl_rx_buffer_desc** %63, align 8
  %65 = ptrtoint %struct.rtl_rx_buffer_desc* %64 to i32
  %66 = and i32 %65, 255
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56, %21
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %218

72:                                               ; preds = %56
  %73 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %74 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %109, %72
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %83 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %88 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load %struct.rtl_rx_buffer_desc*, %struct.rtl_rx_buffer_desc** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.rtl_rx_buffer_desc, %struct.rtl_rx_buffer_desc* %94, i64 %96
  store %struct.rtl_rx_buffer_desc* %97, %struct.rtl_rx_buffer_desc** %9, align 8
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %99 = load %struct.rtl_rx_buffer_desc*, %struct.rtl_rx_buffer_desc** %9, align 8
  %100 = bitcast %struct.rtl_rx_buffer_desc* %99 to i32*
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @_rtl_pci_init_one_rxdesc(%struct.ieee80211_hw* %98, i32* null, i32* %100, i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %86
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %218

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %80

112:                                              ; preds = %80
  br label %217

113:                                              ; preds = %2
  store %struct.rtl_rx_desc* null, %struct.rtl_rx_desc** %10, align 8
  store i32 1, i32* %11, align 4
  %114 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %115 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %118 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = mul i64 4, %120
  %122 = trunc i64 %121 to i32
  %123 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %124 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = call i8* @pci_zalloc_consistent(i32 %116, i32 %122, i32* %129)
  %131 = bitcast i8* %130 to %struct.rtl_rx_desc*
  %132 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %133 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store %struct.rtl_rx_desc* %131, %struct.rtl_rx_desc** %138, align 8
  %139 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %140 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %145, align 8
  %147 = icmp ne %struct.rtl_rx_desc* %146, null
  br i1 %147, label %148, label %160

148:                                              ; preds = %113
  %149 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %150 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %155, align 8
  %157 = ptrtoint %struct.rtl_rx_desc* %156 to i64
  %158 = and i64 %157, 255
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %148, %113
  %161 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %218

164:                                              ; preds = %148
  %165 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %166 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i64 0, i64* %171, align 8
  store i32 0, i32* %8, align 4
  br label %172

172:                                              ; preds = %201, %164
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %175 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %204

178:                                              ; preds = %172
  %179 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %180 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %179, i32 0, i32 1
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.rtl_rx_desc, %struct.rtl_rx_desc* %186, i64 %188
  store %struct.rtl_rx_desc* %189, %struct.rtl_rx_desc** %10, align 8
  %190 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %191 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %10, align 8
  %192 = bitcast %struct.rtl_rx_desc* %191 to i32*
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @_rtl_pci_init_one_rxdesc(%struct.ieee80211_hw* %190, i32* null, i32* %192, i32 %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %178
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %3, align 4
  br label %218

200:                                              ; preds = %178
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %172

204:                                              ; preds = %172
  %205 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %206 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %205, i32 0, i32 0
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %210, align 8
  %212 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %213 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %10, align 8
  %214 = bitcast %struct.rtl_rx_desc* %213 to i32*
  %215 = load i32, i32* @HW_DESC_RXERO, align 4
  %216 = call i32 %211(%struct.ieee80211_hw* %212, i32* %214, i32 0, i32 %215, i32* %11)
  br label %217

217:                                              ; preds = %204, %112
  store i32 0, i32* %3, align 4
  br label %218

218:                                              ; preds = %217, %197, %160, %105, %68
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i8* @pci_zalloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @_rtl_pci_init_one_rxdesc(%struct.ieee80211_hw*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
