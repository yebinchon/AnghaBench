; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_wep_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_wep_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.security_priv }
%struct.security_priv = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }
%struct.arc4context = type { i32 }
%struct.rx_pkt_attrib = type { i64, i32, i64, i32, i32 }
%union.recv_frame = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, %struct.rx_pkt_attrib }

@_WEP40_ = common dso_local global i64 0, align 8
@_WEP104_ = common dso_local global i64 0, align 8
@_module_rtl871x_security_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [172 x i8] c"rtw_wep_decrypt:icv error crc[3](%x)!=payload[length-1](%x) || crc[2](%x)!=payload[length-2](%x) || crc[1](%x)!=payload[length-3](%x) || crc[0](%x)!=payload[length-4](%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_wep_decrypt(%struct.adapter* %0, i64* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca [4 x i64], align 16
  %6 = alloca %struct.arc4context, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca [16 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca %struct.rx_pkt_attrib*, align 8
  %15 = alloca %struct.security_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i64* %1, i64** %4, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = bitcast i64* %16 to %union.recv_frame*
  %18 = bitcast %union.recv_frame* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store %struct.rx_pkt_attrib* %20, %struct.rx_pkt_attrib** %14, align 8
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  store %struct.security_priv* %22, %struct.security_priv** %15, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = bitcast i64* %23 to %union.recv_frame*
  %25 = bitcast %union.recv_frame* %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to i64*
  store i64* %30, i64** %9, align 8
  %31 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %32 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @_WEP40_, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %38 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @_WEP104_, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %194

42:                                               ; preds = %36, %2
  %43 = load i64*, i64** %9, align 8
  %44 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %45 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %43, i64 %47
  store i64* %48, i64** %11, align 8
  %49 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %50 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %13, align 8
  %52 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %53 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %59 = load i64*, i64** %11, align 8
  %60 = call i32 @memcpy(i64* %58, i64* %59, i32 3)
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 3
  %62 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %63 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @memcpy(i64* %61, i64* %69, i32 %70)
  %72 = load i64*, i64** %4, align 8
  %73 = bitcast i64* %72 to %union.recv_frame*
  %74 = bitcast %union.recv_frame* %73 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %79 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %77, %80
  %82 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %83 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %81, %84
  store i32 %85, i32* %7, align 4
  %86 = load i64*, i64** %9, align 8
  %87 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %88 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %86, i64 %90
  %92 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %93 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %91, i64 %95
  store i64* %96, i64** %10, align 8
  %97 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 3, %98
  %100 = call i32 @arcfour_init(%struct.arc4context* %6, i64* %97, i32 %99)
  %101 = load i64*, i64** %10, align 8
  %102 = load i64*, i64** %10, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @arcfour_encrypt(%struct.arc4context* %6, i64* %101, i64* %102, i32 %103)
  %105 = load i64*, i64** %10, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, 4
  %108 = call i32 @getcrc32(i64* %105, i32 %107)
  %109 = call i32 @le32_to_cpu(i32 %108)
  %110 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %111 = bitcast i64* %110 to i32*
  store i32 %109, i32* %111, align 16
  %112 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %113, %119
  br i1 %120, label %151, label %121

121:                                              ; preds = %42
  %122 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  %123 = load i64, i64* %122, align 16
  %124 = load i64*, i64** %10, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %124, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %123, %129
  br i1 %130, label %151, label %131

131:                                              ; preds = %121
  %132 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %10, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %135, 3
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %133, %139
  br i1 %140, label %151, label %141

141:                                              ; preds = %131
  %142 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %143 = load i64, i64* %142, align 16
  %144 = load i64*, i64** %10, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sub nsw i32 %145, 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %144, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %143, %149
  br i1 %150, label %151, label %188

151:                                              ; preds = %141, %131, %121, %42
  %152 = load i32, i32* @_module_rtl871x_security_c_, align 4
  %153 = load i32, i32* @_drv_err_, align 4
  %154 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** %10, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %156, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  %163 = load i64, i64* %162, align 16
  %164 = load i64*, i64** %10, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sub nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64*, i64** %10, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 %173, 3
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %172, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %179 = load i64, i64* %178, align 16
  %180 = load i64*, i64** %10, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sub nsw i32 %181, 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %180, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 @RT_TRACE(i32 %152, i32 %153, i8* %186)
  br label %188

188:                                              ; preds = %151, %141
  %189 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %190 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %191 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @WEP_SW_DEC_CNT_INC(%struct.security_priv* %189, i32 %192)
  br label %194

194:                                              ; preds = %188, %36
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @arcfour_init(%struct.arc4context*, i64*, i32) #1

declare dso_local i32 @arcfour_encrypt(%struct.arc4context*, i64*, i64*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @getcrc32(i64*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @WEP_SW_DEC_CNT_INC(%struct.security_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
