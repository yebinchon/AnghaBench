; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_tkip_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_tkip_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv, %struct.security_priv }
%struct.xmit_priv = type { i64 }
%struct.security_priv = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.arc4context = type { i32 }
%union.pn48 = type { i32 }
%struct.pkt_attrib = type { i64, i64, i32, i32, i64, i64, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.xmit_frame = type { i32*, %struct.pkt_attrib }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@TXDESC_OFFSET = common dso_local global i32 0, align 4
@_TKIP_ = common dso_local global i64 0, align 8
@_module_rtl871x_security_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rtw_tkip_encrypt: stainfo!= NULL!!!\0A\00", align 1
@_drv_info_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"pattrib->iv_len =%x, pattrib->icv_len =%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_tkip_encrypt(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca [16 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.arc4context, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %union.pn48, align 4
  %21 = alloca %struct.pkt_attrib*, align 8
  %22 = alloca %struct.security_priv*, align 8
  %23 = alloca %struct.xmit_priv*, align 8
  %24 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = bitcast i32* %25 to %struct.xmit_frame*
  %27 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %26, i32 0, i32 1
  store %struct.pkt_attrib* %27, %struct.pkt_attrib** %21, align 8
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 1
  store %struct.security_priv* %29, %struct.security_priv** %22, align 8
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  store %struct.xmit_priv* %31, %struct.xmit_priv** %23, align 8
  %32 = load i32, i32* @_SUCCESS, align 4
  store i32 %32, i32* %24, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = bitcast i32* %33 to %struct.xmit_frame*
  %35 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @_FAIL, align 4
  store i32 %39, i32* %3, align 4
  br label %233

40:                                               ; preds = %2
  %41 = load i32, i32* @TXDESC_OFFSET, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = bitcast i32* %42 to %struct.xmit_frame*
  %44 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %16, align 8
  %49 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %50 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @_TKIP_, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %231

54:                                               ; preds = %40
  %55 = load i32, i32* @_module_rtl871x_security_c_, align 4
  %56 = load i32, i32* @_drv_err_, align 4
  %57 = call i32 @RT_TRACE(i32 %55, i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %59 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_MCAST(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load %struct.security_priv*, %struct.security_priv** %22, align 8
  %65 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.security_priv*, %struct.security_priv** %22, align 8
  %68 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %19, align 8
  br label %78

73:                                               ; preds = %54
  %74 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %75 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %19, align 8
  br label %78

78:                                               ; preds = %73, %63
  store i32 16, i32* %15, align 4
  store i64 0, i64* %13, align 8
  br label %79

79:                                               ; preds = %222, %78
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %82 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %225

85:                                               ; preds = %79
  %86 = load i32*, i32** %16, align 8
  %87 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %88 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  store i32* %91, i32** %18, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %94 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %99 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  store i32* %102, i32** %17, align 8
  %103 = load i32*, i32** %18, align 8
  %104 = getelementptr inbounds %union.pn48, %union.pn48* %20, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @GET_TKIP_PN(i32* %103, i32 %105)
  %107 = bitcast %union.pn48* %20 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %6, align 8
  %110 = bitcast %union.pn48* %20 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 16
  store i32 %112, i32* %7, align 4
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %114 = bitcast i32* %113 to i64*
  %115 = load i32*, i32** %19, align 8
  %116 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %117 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %116, i32 0, i32 7
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @phase1(i64* %114, i32* %115, i32* %119, i32 %120)
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %123 = load i32*, i32** %19, align 8
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %125 = bitcast i32* %124 to i64*
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @phase2(i32* %122, i32* %123, i64* %125, i64 %126)
  %128 = load i64, i64* %13, align 8
  %129 = add nsw i64 %128, 1
  %130 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %131 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %178

134:                                              ; preds = %85
  %135 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %136 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %139 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = sub nsw i64 %137, %141
  %143 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %144 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = sub nsw i64 %142, %146
  %148 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %149 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  store i64 %151, i64* %14, align 8
  %152 = load i32, i32* @_module_rtl871x_security_c_, align 4
  %153 = load i32, i32* @_drv_info_, align 4
  %154 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %155 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %158 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 @RT_TRACE(i32 %152, i32 %153, i8* %160)
  %162 = load i32*, i32** %17, align 8
  %163 = load i64, i64* %14, align 8
  %164 = call i32 @getcrc32(i32* %162, i64 %163)
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %164, i32* %165, align 16
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %167 = call i32 @arcfour_init(%struct.arc4context* %12, i32* %166, i32 16)
  %168 = load i32*, i32** %17, align 8
  %169 = load i32*, i32** %17, align 8
  %170 = load i64, i64* %14, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 @arcfour_encrypt(%struct.arc4context* %12, i32* %168, i32* %169, i32 %171)
  %173 = load i32*, i32** %17, align 8
  %174 = load i64, i64* %14, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %177 = call i32 @arcfour_encrypt(%struct.arc4context* %12, i32* %175, i32* %176, i32 4)
  br label %221

178:                                              ; preds = %85
  %179 = load %struct.xmit_priv*, %struct.xmit_priv** %23, align 8
  %180 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %183 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = sub nsw i64 %181, %185
  %187 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %188 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = sub nsw i64 %186, %190
  %192 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %193 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %191, %194
  store i64 %195, i64* %14, align 8
  %196 = load i32*, i32** %17, align 8
  %197 = load i64, i64* %14, align 8
  %198 = call i32 @getcrc32(i32* %196, i64 %197)
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %198, i32* %199, align 16
  %200 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %201 = call i32 @arcfour_init(%struct.arc4context* %12, i32* %200, i32 16)
  %202 = load i32*, i32** %17, align 8
  %203 = load i32*, i32** %17, align 8
  %204 = load i64, i64* %14, align 8
  %205 = trunc i64 %204 to i32
  %206 = call i32 @arcfour_encrypt(%struct.arc4context* %12, i32* %202, i32* %203, i32 %205)
  %207 = load i32*, i32** %17, align 8
  %208 = load i64, i64* %14, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %211 = call i32 @arcfour_encrypt(%struct.arc4context* %12, i32* %209, i32* %210, i32 4)
  %212 = load %struct.xmit_priv*, %struct.xmit_priv** %23, align 8
  %213 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i32*, i32** %16, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 %214
  store i32* %216, i32** %16, align 8
  %217 = load i32*, i32** %16, align 8
  %218 = ptrtoint i32* %217 to i32
  %219 = call i64 @RND4(i32 %218)
  %220 = inttoptr i64 %219 to i32*
  store i32* %220, i32** %16, align 8
  br label %221

221:                                              ; preds = %178, %134
  br label %222

222:                                              ; preds = %221
  %223 = load i64, i64* %13, align 8
  %224 = add nsw i64 %223, 1
  store i64 %224, i64* %13, align 8
  br label %79

225:                                              ; preds = %79
  %226 = load %struct.security_priv*, %struct.security_priv** %22, align 8
  %227 = load %struct.pkt_attrib*, %struct.pkt_attrib** %21, align 8
  %228 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @TKIP_SW_ENC_CNT_INC(%struct.security_priv* %226, i32 %229)
  br label %231

231:                                              ; preds = %225, %40
  %232 = load i32, i32* %24, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %231, %38
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i64 @IS_MCAST(i32) #1

declare dso_local i32 @GET_TKIP_PN(i32*, i32) #1

declare dso_local i32 @phase1(i64*, i32*, i32*, i32) #1

declare dso_local i32 @phase2(i32*, i32*, i64*, i64) #1

declare dso_local i32 @getcrc32(i32*, i64) #1

declare dso_local i32 @arcfour_init(%struct.arc4context*, i32*, i32) #1

declare dso_local i32 @arcfour_encrypt(%struct.arc4context*, i32*, i32*, i32) #1

declare dso_local i64 @RND4(i32) #1

declare dso_local i32 @TKIP_SW_ENC_CNT_INC(%struct.security_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
