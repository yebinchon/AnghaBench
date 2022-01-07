; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_wep_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_wep_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv }
%struct.security_priv = type { i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.arc4context = type { i32 }
%struct.rx_pkt_attrib = type { i64, i32, i32 }
%union.recv_frame = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, %struct.rx_pkt_attrib }

@_WEP40_ = common dso_local global i64 0, align 8
@_WEP104_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_wep_decrypt(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca %struct.arc4context, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca %struct.rx_pkt_attrib*, align 8
  %15 = alloca %struct.security_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to %union.recv_frame*
  %18 = bitcast %union.recv_frame* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store %struct.rx_pkt_attrib* %20, %struct.rx_pkt_attrib** %14, align 8
  %21 = load %struct._adapter*, %struct._adapter** %3, align 8
  %22 = getelementptr inbounds %struct._adapter, %struct._adapter* %21, i32 0, i32 0
  store %struct.security_priv* %22, %struct.security_priv** %15, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = bitcast i32* %23 to %union.recv_frame*
  %25 = bitcast %union.recv_frame* %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %9, align 8
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
  br i1 %41, label %42, label %115

42:                                               ; preds = %36, %2
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %45 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 3
  store i32 %52, i32* %13, align 4
  %53 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %54 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @memcpy(i32* %60, i32* %61, i32 3)
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 3
  %64 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %65 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %68 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @memcpy(i32* %63, i32* %73, i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = bitcast i32* %76 to %union.recv_frame*
  %78 = bitcast %union.recv_frame* %77 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %83 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %81, %84
  %86 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %87 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  store i32 %89, i32* %7, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %92 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %97 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  store i32* %100, i32** %10, align 8
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 3, %102
  %104 = call i32 @arcfour_init(%struct.arc4context* %6, i32* %101, i32 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @arcfour_encrypt(%struct.arc4context* %6, i32* %105, i32* %106, i32 %107)
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sub nsw i32 %110, 4
  %112 = call i32 @getcrc32(i32* %109, i32 %111)
  %113 = call i32 @cpu_to_le32(i32 %112)
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %113, i32* %114, align 16
  br label %115

115:                                              ; preds = %42, %36
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @arcfour_init(%struct.arc4context*, i32*, i32) #1

declare dso_local i32 @arcfour_encrypt(%struct.arc4context*, i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @getcrc32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
