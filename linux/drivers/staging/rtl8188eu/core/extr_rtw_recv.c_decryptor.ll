; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_decryptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_decryptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.security_priv }
%struct.TYPE_4__ = type { i32 }
%struct.security_priv = type { i32, i32, i32, i32 }
%struct.recv_frame = type { %struct.TYPE_3__*, %struct.rx_pkt_attrib }
%struct.TYPE_3__ = type { i32* }
%struct.rx_pkt_attrib = type { i32, i32, i32, i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"prxstat->decrypted=%x prxattrib->encrypt=0x%03x\0A\00", align 1
@WEP_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"prxattrib->key_index(%d)>WEP_KEYS\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.recv_frame* (%struct.adapter*, %struct.recv_frame*)* @decryptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.recv_frame* @decryptor(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.recv_frame*, align 8
  %5 = alloca %struct.rx_pkt_attrib*, align 8
  %6 = alloca %struct.security_priv*, align 8
  %7 = alloca %struct.recv_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %4, align 8
  %10 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %11 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %10, i32 0, i32 1
  store %struct.rx_pkt_attrib* %11, %struct.rx_pkt_attrib** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store %struct.security_priv* %13, %struct.security_priv** %6, align 8
  %14 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  store %struct.recv_frame* %14, %struct.recv_frame** %7, align 8
  %15 = load i64, i64* @_SUCCESS, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %17 = load i32, i32* @_drv_info_, align 4
  %18 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %19 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %22 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @RT_TRACE(i32 %16, i32 %17, i8* %25)
  %27 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %28 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %2
  %32 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %33 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %38 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 6
  %46 = and i32 %45, 3
  %47 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %48 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %50 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WEP_KEYS, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %31
  %55 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %56 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DBG_88E(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %60 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %69 [
    i32 128, label %62
    i32 129, label %62
    i32 130, label %68
    i32 131, label %68
  ]

62:                                               ; preds = %54, %54
  %63 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %64 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %67 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %75

68:                                               ; preds = %54, %54
  br label %69

69:                                               ; preds = %54, %68
  %70 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %71 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %74 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %62
  br label %76

76:                                               ; preds = %75, %31
  br label %77

77:                                               ; preds = %76, %2
  %78 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %79 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %77
  %83 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %84 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %82
  %88 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %89 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %88, i32 0, i32 2
  store i32 0, i32* %89, align 4
  %90 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %91 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %108 [
    i32 128, label %93
    i32 129, label %93
    i32 130, label %98
    i32 131, label %103
  ]

93:                                               ; preds = %87, %87
  %94 = load %struct.adapter*, %struct.adapter** %3, align 8
  %95 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %96 = bitcast %struct.recv_frame* %95 to i32*
  %97 = call i64 @rtw_wep_decrypt(%struct.adapter* %94, i32* %96)
  store i64 %97, i64* %8, align 8
  br label %109

98:                                               ; preds = %87
  %99 = load %struct.adapter*, %struct.adapter** %3, align 8
  %100 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %101 = bitcast %struct.recv_frame* %100 to i32*
  %102 = call i64 @rtw_tkip_decrypt(%struct.adapter* %99, i32* %101)
  store i64 %102, i64* %8, align 8
  br label %109

103:                                              ; preds = %87
  %104 = load %struct.adapter*, %struct.adapter** %3, align 8
  %105 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %106 = bitcast %struct.recv_frame* %105 to i32*
  %107 = call i64 @rtw_aes_decrypt(%struct.adapter* %104, i32* %106)
  store i64 %107, i64* %8, align 8
  br label %109

108:                                              ; preds = %87
  br label %109

109:                                              ; preds = %108, %103, %98, %93
  br label %134

110:                                              ; preds = %82, %77
  %111 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %112 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %133

115:                                              ; preds = %110
  %116 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %117 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %122 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %127 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 130
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %120
  %131 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %132 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %131, i32 0, i32 2
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %125, %115, %110
  br label %134

134:                                              ; preds = %133, %109
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* @_FAIL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load %struct.recv_frame*, %struct.recv_frame** %7, align 8
  %140 = load %struct.adapter*, %struct.adapter** %3, align 8
  %141 = getelementptr inbounds %struct.adapter, %struct.adapter* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = call i32 @rtw_free_recvframe(%struct.recv_frame* %139, i32* %142)
  store %struct.recv_frame* null, %struct.recv_frame** %7, align 8
  br label %144

144:                                              ; preds = %138, %134
  %145 = load %struct.recv_frame*, %struct.recv_frame** %7, align 8
  ret %struct.recv_frame* %145
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @DBG_88E(i8*, i32) #1

declare dso_local i64 @rtw_wep_decrypt(%struct.adapter*, i32*) #1

declare dso_local i64 @rtw_tkip_decrypt(%struct.adapter*, i32*) #1

declare dso_local i64 @rtw_aes_decrypt(%struct.adapter*, i32*) #1

declare dso_local i32 @rtw_free_recvframe(%struct.recv_frame*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
