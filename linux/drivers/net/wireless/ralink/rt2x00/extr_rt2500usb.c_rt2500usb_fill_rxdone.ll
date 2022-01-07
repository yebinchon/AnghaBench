; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_fill_rxdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_fill_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.queue_entry_priv_usb* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i8* }
%struct.queue_entry_priv_usb = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.rxdone_entry_desc = type { i64, i64, i8*, i32, i8*, i8*, i32, i8** }
%struct.skb_frame_desc = type { i64, i32 }

@RXD_W0_CRC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RXD_W0_PHYSICAL_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_PLCP_CRC = common dso_local global i32 0, align 4
@RXD_W0_CIPHER = common dso_local global i32 0, align 4
@RXD_W0_CIPHER_ERROR = common dso_local global i32 0, align 4
@RX_CRYPTO_FAIL_KEY = common dso_local global i64 0, align 8
@CIPHER_NONE = common dso_local global i64 0, align 8
@RXDONE_CRYPTO_IV = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_CRYPTO_SUCCESS = common dso_local global i64 0, align 8
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_CRYPTO_FAIL_MIC = common dso_local global i64 0, align 8
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RXD_W1_SIGNAL = common dso_local global i32 0, align 4
@RXD_W1_RSSI = common dso_local global i32 0, align 4
@RXD_W0_DATABYTE_COUNT = common dso_local global i32 0, align 4
@RXD_W0_OFDM = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_PLCP = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_BITRATE = common dso_local global i32 0, align 4
@RXD_W0_MY_BSS = common dso_local global i32 0, align 4
@RXDONE_MY_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.rxdone_entry_desc*)* @rt2500usb_fill_rxdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500usb_fill_rxdone(%struct.queue_entry* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.rxdone_entry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.queue_entry_priv_usb*, align 8
  %7 = alloca %struct.skb_frame_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %4, align 8
  %11 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %12 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %14, align 8
  store %struct.rt2x00_dev* %15, %struct.rt2x00_dev** %5, align 8
  %16 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %17 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %16, i32 0, i32 2
  %18 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %17, align 8
  store %struct.queue_entry_priv_usb* %18, %struct.queue_entry_priv_usb** %6, align 8
  %19 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %20 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_7__* %21)
  store %struct.skb_frame_desc* %22, %struct.skb_frame_desc** %7, align 8
  %23 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %24 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.queue_entry_priv_usb*, %struct.queue_entry_priv_usb** %6, align 8
  %29 = getelementptr inbounds %struct.queue_entry_priv_usb, %struct.queue_entry_priv_usb* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %34 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %32, %37
  %39 = add nsw i64 %27, %38
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %8, align 8
  %41 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %42 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %46 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i64 %43, i32* %44, i32 %47)
  %49 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %50 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @rt2x00_desc_read(i32* %53, i32 0)
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @rt2x00_desc_read(i32* %55, i32 1)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @RXD_W0_CRC_ERROR, align 4
  %59 = call i8* @rt2x00_get_field32(i32 %57, i32 %58)
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %2
  %62 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %63 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %64 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %2
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @RXD_W0_PHYSICAL_ERROR, align 4
  %70 = call i8* @rt2x00_get_field32(i32 %68, i32 %69)
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @RX_FLAG_FAILED_PLCP_CRC, align 4
  %74 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %75 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @RXD_W0_CIPHER, align 4
  %81 = call i8* @rt2x00_get_field32(i32 %79, i32 %80)
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %84 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @RXD_W0_CIPHER_ERROR, align 4
  %87 = call i8* @rt2x00_get_field32(i32 %85, i32 %86)
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load i64, i64* @RX_CRYPTO_FAIL_KEY, align 8
  %91 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %92 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %78
  %94 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %95 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CIPHER_NONE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %147

99:                                               ; preds = %93
  %100 = load i32*, i32** %8, align 8
  %101 = call i8* @_rt2x00_desc_read(i32* %100, i32 2)
  %102 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %103 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %102, i32 0, i32 7
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  store i8* %101, i8** %105, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i8* @_rt2x00_desc_read(i32* %106, i32 3)
  %108 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %109 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %108, i32 0, i32 7
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  store i8* %107, i8** %111, align 8
  %112 = load i32, i32* @RXDONE_CRYPTO_IV, align 4
  %113 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %114 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %118 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %119 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %123 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @RX_CRYPTO_SUCCESS, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %99
  %128 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %129 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %130 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %146

133:                                              ; preds = %99
  %134 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %135 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @RX_CRYPTO_FAIL_MIC, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %141 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %142 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %133
  br label %146

146:                                              ; preds = %145, %127
  br label %147

147:                                              ; preds = %146, %93
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @RXD_W1_SIGNAL, align 4
  %150 = call i8* @rt2x00_get_field32(i32 %148, i32 %149)
  %151 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %152 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %151, i32 0, i32 5
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @RXD_W1_RSSI, align 4
  %155 = call i8* @rt2x00_get_field32(i32 %153, i32 %154)
  %156 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %157 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = ptrtoint i8* %155 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = inttoptr i64 %161 to i8*
  %163 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %164 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %163, i32 0, i32 4
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @RXD_W0_DATABYTE_COUNT, align 4
  %167 = call i8* @rt2x00_get_field32(i32 %165, i32 %166)
  %168 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %169 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @RXD_W0_OFDM, align 4
  %172 = call i8* @rt2x00_get_field32(i32 %170, i32 %171)
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %147
  %175 = load i32, i32* @RXDONE_SIGNAL_PLCP, align 4
  %176 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %177 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %186

180:                                              ; preds = %147
  %181 = load i32, i32* @RXDONE_SIGNAL_BITRATE, align 4
  %182 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %183 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %180, %174
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @RXD_W0_MY_BSS, align 4
  %189 = call i8* @rt2x00_get_field32(i32 %187, i32 %188)
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load i32, i32* @RXDONE_MY_BSS, align 4
  %193 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %194 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %191, %186
  %198 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %199 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %198, i32 0, i32 0
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %202 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @skb_trim(%struct.TYPE_7__* %200, i8* %203)
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32) #1

declare dso_local i8* @rt2x00_get_field32(i32, i32) #1

declare dso_local i8* @_rt2x00_desc_read(i32*, i32) #1

declare dso_local i32 @skb_trim(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
