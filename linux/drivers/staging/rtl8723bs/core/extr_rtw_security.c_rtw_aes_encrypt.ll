; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv, %struct.security_priv }
%struct.xmit_priv = type { i64 }
%struct.security_priv = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.pkt_attrib = type { i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.xmit_frame = type { i32*, %struct.pkt_attrib }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@TXDESC_OFFSET = common dso_local global i32 0, align 4
@_AES_ = common dso_local global i64 0, align 8
@_module_rtl871x_security_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rtw_aes_encrypt: stainfo!= NULL!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_aes_encrypt(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pkt_attrib*, align 8
  %13 = alloca %struct.security_priv*, align 8
  %14 = alloca %struct.xmit_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.xmit_frame*
  %18 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %17, i32 0, i32 1
  store %struct.pkt_attrib* %18, %struct.pkt_attrib** %12, align 8
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  store %struct.security_priv* %20, %struct.security_priv** %13, align 8
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  store %struct.xmit_priv* %22, %struct.xmit_priv** %14, align 8
  %23 = load i32, i32* @_SUCCESS, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = bitcast i32* %24 to %struct.xmit_frame*
  %26 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %150

31:                                               ; preds = %2
  %32 = load i32, i32* @TXDESC_OFFSET, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = bitcast i32* %33 to %struct.xmit_frame*
  %35 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %9, align 8
  %40 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %41 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @_AES_, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %148

45:                                               ; preds = %31
  %46 = load i32, i32* @_module_rtl871x_security_c_, align 4
  %47 = load i32, i32* @_drv_err_, align 4
  %48 = call i32 @RT_TRACE(i32 %46, i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %50 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_MCAST(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %56 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %59 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %10, align 8
  br label %69

64:                                               ; preds = %45
  %65 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %66 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %10, align 8
  br label %69

69:                                               ; preds = %64, %54
  store i32 16, i32* %8, align 4
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %139, %69
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %73 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %142

76:                                               ; preds = %70
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %77, 1
  %79 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %80 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %76
  %84 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %85 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %88 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %92 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %96 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  store i64 %98, i64* %7, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %101 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @aes_cipher(i32* %99, i64 %102, i32* %103, i64 %104)
  br label %138

106:                                              ; preds = %76
  %107 = load %struct.xmit_priv*, %struct.xmit_priv** %14, align 8
  %108 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %111 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %115 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %119 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  store i64 %121, i64* %7, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %124 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @aes_cipher(i32* %122, i64 %125, i32* %126, i64 %127)
  %129 = load %struct.xmit_priv*, %struct.xmit_priv** %14, align 8
  %130 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 %131
  store i32* %133, i32** %9, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = ptrtoint i32* %134 to i32
  %136 = call i64 @RND4(i32 %135)
  %137 = inttoptr i64 %136 to i32*
  store i32* %137, i32** %9, align 8
  br label %138

138:                                              ; preds = %106, %83
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %6, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %6, align 8
  br label %70

142:                                              ; preds = %70
  %143 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %144 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %145 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @AES_SW_ENC_CNT_INC(%struct.security_priv* %143, i32 %146)
  br label %148

148:                                              ; preds = %142, %31
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %29
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i64 @IS_MCAST(i32) #1

declare dso_local i32 @aes_cipher(i32*, i64, i32*, i64) #1

declare dso_local i64 @RND4(i32) #1

declare dso_local i32 @AES_SW_ENC_CNT_INC(%struct.security_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
