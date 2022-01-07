; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.security_priv }
%struct.security_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.sta_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.rx_pkt_attrib = type { i64, i32, i32, i32, i32* }
%union.recv_frame = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, %struct.rx_pkt_attrib }

@_AES_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_aes_decrypt(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca %struct.rx_pkt_attrib*, align 8
  %12 = alloca %struct.security_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %union.recv_frame*
  %15 = bitcast %union.recv_frame* %14 to %struct.TYPE_8__*
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store %struct.rx_pkt_attrib* %17, %struct.rx_pkt_attrib** %11, align 8
  %18 = load %struct._adapter*, %struct._adapter** %3, align 8
  %19 = getelementptr inbounds %struct._adapter, %struct._adapter* %18, i32 0, i32 1
  store %struct.security_priv* %19, %struct.security_priv** %12, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = bitcast i32* %20 to %union.recv_frame*
  %22 = bitcast %union.recv_frame* %21 to %struct.TYPE_8__*
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %6, align 8
  %28 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %11, align 8
  %29 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @_AES_, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %106

33:                                               ; preds = %2
  %34 = load %struct._adapter*, %struct._adapter** %3, align 8
  %35 = getelementptr inbounds %struct._adapter, %struct._adapter* %34, i32 0, i32 0
  %36 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %11, align 8
  %37 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call %struct.sta_info* @r8712_get_stainfo(i32* %35, i32* %39)
  store %struct.sta_info* %40, %struct.sta_info** %10, align 8
  %41 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %42 = icmp ne %struct.sta_info* %41, null
  br i1 %42, label %43, label %105

43:                                               ; preds = %33
  %44 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %11, align 8
  %45 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @is_multicast_ether_addr(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %11, align 8
  %52 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load %struct.security_priv*, %struct.security_priv** %12, align 8
  %60 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 6
  %64 = and i32 %63, 3
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32* %70, i32** %7, align 8
  %71 = load %struct.security_priv*, %struct.security_priv** %12, align 8
  %72 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %49
  br label %106

76:                                               ; preds = %49
  br label %83

77:                                               ; preds = %43
  %78 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %79 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32* %82, i32** %7, align 8
  br label %83

83:                                               ; preds = %77, %76
  %84 = load i32*, i32** %4, align 8
  %85 = bitcast i32* %84 to %union.recv_frame*
  %86 = bitcast %union.recv_frame* %85 to %struct.TYPE_8__*
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %11, align 8
  %91 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %89, %92
  %94 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %11, align 8
  %95 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  store i32 %97, i32* %5, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %11, align 8
  %100 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @aes_decipher(i32* %98, i32 %101, i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %83, %33
  br label %106

106:                                              ; preds = %75, %105, %2
  ret void
}

declare dso_local %struct.sta_info* @r8712_get_stainfo(i32*, i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @aes_decipher(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
