; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_wep_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_wep_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv, %struct.security_priv }
%struct.xmit_priv = type { i64 }
%struct.security_priv = type { i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.arc4context = type { i32 }
%struct.pkt_attrib = type { i64, i64, i32, i32, i64, i64, i32 }
%struct.xmit_frame = type { i32*, %struct.pkt_attrib }

@TXDESC_OFFSET = common dso_local global i32 0, align 4
@_WEP40_ = common dso_local global i64 0, align 8
@_WEP104_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_wep_encrypt(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i8], align 1
  %6 = alloca %struct.arc4context, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [16 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.pkt_attrib*, align 8
  %16 = alloca %struct.security_priv*, align 8
  %17 = alloca %struct.xmit_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = bitcast i32* %18 to %struct.xmit_frame*
  %20 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %19, i32 0, i32 1
  store %struct.pkt_attrib* %20, %struct.pkt_attrib** %15, align 8
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  store %struct.security_priv* %22, %struct.security_priv** %16, align 8
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  store %struct.xmit_priv* %24, %struct.xmit_priv** %17, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = bitcast i32* %25 to %struct.xmit_frame*
  %27 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %197

31:                                               ; preds = %2
  %32 = load i32, i32* @TXDESC_OFFSET, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = bitcast i32* %33 to %struct.xmit_frame*
  %35 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %10, align 8
  %40 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %41 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @_WEP40_, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %31
  %46 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %47 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @_WEP104_, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %197

51:                                               ; preds = %45, %31
  %52 = load %struct.security_priv*, %struct.security_priv** %16, align 8
  %53 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.security_priv*, %struct.security_priv** %16, align 8
  %56 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %188, %51
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %63 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %191

66:                                               ; preds = %60
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %69 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  store i32* %72, i32** %12, align 8
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @memcpy(i32* %73, i32* %74, i32 3)
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 3
  %77 = load %struct.security_priv*, %struct.security_priv** %16, align 8
  %78 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load %struct.security_priv*, %struct.security_priv** %16, align 8
  %81 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @memcpy(i32* %76, i32* %86, i32 %87)
  %89 = load i32*, i32** %10, align 8
  %90 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %91 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %96 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  store i32* %99, i32** %11, align 8
  %100 = load i64, i64* %7, align 8
  %101 = add nsw i64 %100, 1
  %102 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %103 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %142

106:                                              ; preds = %66
  %107 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %108 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %111 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 %109, %113
  %115 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %116 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = sub nsw i64 %114, %118
  %120 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %121 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  store i64 %123, i64* %8, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @getcrc32(i32* %124, i64 %125)
  %127 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %128 = bitcast i8* %127 to i32*
  store i32 %126, i32* %128, align 1
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 3, %130
  %132 = call i32 @arcfour_init(%struct.arc4context* %6, i32* %129, i32 %131)
  %133 = load i32*, i32** %11, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = load i64, i64* %8, align 8
  %136 = call i32 (%struct.arc4context*, i32*, ...) @arcfour_encrypt(%struct.arc4context* %6, i32* %133, i32* %134, i64 %135)
  %137 = load i32*, i32** %11, align 8
  %138 = load i64, i64* %8, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %141 = call i32 (%struct.arc4context*, i32*, ...) @arcfour_encrypt(%struct.arc4context* %6, i32* %139, i8* %140, i32 4)
  br label %187

142:                                              ; preds = %66
  %143 = load %struct.xmit_priv*, %struct.xmit_priv** %17, align 8
  %144 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %147 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = sub nsw i64 %145, %149
  %151 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %152 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = sub nsw i64 %150, %154
  %156 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %157 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %155, %158
  store i64 %159, i64* %8, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @getcrc32(i32* %160, i64 %161)
  %163 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %164 = bitcast i8* %163 to i32*
  store i32 %162, i32* %164, align 1
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 3, %166
  %168 = call i32 @arcfour_init(%struct.arc4context* %6, i32* %165, i32 %167)
  %169 = load i32*, i32** %11, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = load i64, i64* %8, align 8
  %172 = call i32 (%struct.arc4context*, i32*, ...) @arcfour_encrypt(%struct.arc4context* %6, i32* %169, i32* %170, i64 %171)
  %173 = load i32*, i32** %11, align 8
  %174 = load i64, i64* %8, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %177 = call i32 (%struct.arc4context*, i32*, ...) @arcfour_encrypt(%struct.arc4context* %6, i32* %175, i8* %176, i32 4)
  %178 = load %struct.xmit_priv*, %struct.xmit_priv** %17, align 8
  %179 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 %180
  store i32* %182, i32** %10, align 8
  %183 = load i32*, i32** %10, align 8
  %184 = ptrtoint i32* %183 to i32
  %185 = call i64 @RND4(i32 %184)
  %186 = inttoptr i64 %185 to i32*
  store i32* %186, i32** %10, align 8
  br label %187

187:                                              ; preds = %142, %106
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* %7, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %7, align 8
  br label %60

191:                                              ; preds = %60
  %192 = load %struct.security_priv*, %struct.security_priv** %16, align 8
  %193 = load %struct.pkt_attrib*, %struct.pkt_attrib** %15, align 8
  %194 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @WEP_SW_ENC_CNT_INC(%struct.security_priv* %192, i32 %195)
  br label %197

197:                                              ; preds = %30, %191, %45
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @getcrc32(i32*, i64) #1

declare dso_local i32 @arcfour_init(%struct.arc4context*, i32*, i32) #1

declare dso_local i32 @arcfour_encrypt(%struct.arc4context*, i32*, ...) #1

declare dso_local i64 @RND4(i32) #1

declare dso_local i32 @WEP_SW_ENC_CNT_INC(%struct.security_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
