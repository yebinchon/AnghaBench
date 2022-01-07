; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_tkip_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_security.c_r8712_tkip_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.security_priv }
%struct.security_priv = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.arc4context = type { i32 }
%union.pn48 = type { i32 }
%struct.sta_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.rx_pkt_attrib = type { i64, i32, i32, i32*, i32 }
%union.recv_frame = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, %struct.rx_pkt_attrib }

@_TKIP_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_tkip_decrypt(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca %struct.arc4context, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.pn48, align 4
  %18 = alloca %struct.sta_info*, align 8
  %19 = alloca %struct.rx_pkt_attrib*, align 8
  %20 = alloca %struct.security_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %16, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = bitcast i32* %21 to %union.recv_frame*
  %23 = bitcast %union.recv_frame* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store %struct.rx_pkt_attrib* %25, %struct.rx_pkt_attrib** %19, align 8
  %26 = load %struct._adapter*, %struct._adapter** %3, align 8
  %27 = getelementptr inbounds %struct._adapter, %struct._adapter* %26, i32 0, i32 1
  store %struct.security_priv* %27, %struct.security_priv** %20, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = bitcast i32* %28 to %union.recv_frame*
  %30 = bitcast %union.recv_frame* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %12, align 8
  %36 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %19, align 8
  %37 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @_TKIP_, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %155

41:                                               ; preds = %2
  %42 = load %struct._adapter*, %struct._adapter** %3, align 8
  %43 = getelementptr inbounds %struct._adapter, %struct._adapter* %42, i32 0, i32 0
  %44 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %19, align 8
  %45 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call %struct.sta_info* @r8712_get_stainfo(i32* %43, i32* %47)
  store %struct.sta_info* %48, %struct.sta_info** %18, align 8
  %49 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %50 = icmp ne %struct.sta_info* %49, null
  br i1 %50, label %51, label %154

51:                                               ; preds = %41
  %52 = load i32*, i32** %12, align 8
  %53 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %19, align 8
  %54 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %19, align 8
  %60 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %19, align 8
  %65 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32* %68, i32** %13, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = bitcast i32* %69 to %union.recv_frame*
  %71 = bitcast %union.recv_frame* %70 to %struct.TYPE_6__*
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %19, align 8
  %76 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %74, %77
  %79 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %19, align 8
  %80 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  store i32 %82, i32* %11, align 4
  %83 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %19, align 8
  %84 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @is_multicast_ether_addr(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %51
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %16, align 4
  %92 = load %struct.security_priv*, %struct.security_priv** %20, align 8
  %93 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = ashr i32 %95, 6
  %97 = and i32 %96, 3
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32* %103, i32** %15, align 8
  %104 = load %struct.security_priv*, %struct.security_priv** %20, align 8
  %105 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %88
  br label %155

109:                                              ; preds = %88
  br label %116

110:                                              ; preds = %51
  %111 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %112 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32* %115, i32** %15, align 8
  br label %116

116:                                              ; preds = %110, %109
  %117 = load i32*, i32** %14, align 8
  %118 = getelementptr inbounds %union.pn48, %union.pn48* %17, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @GET_TKIP_PN(i32* %117, i32 %119)
  %121 = bitcast %union.pn48* %17 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %5, align 8
  %124 = bitcast %union.pn48* %17 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 16
  store i32 %126, i32* %6, align 4
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %128 = bitcast i32* %127 to i64*
  %129 = load i32*, i32** %15, align 8
  %130 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %19, align 8
  %131 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @phase1(i64* %128, i32* %129, i32* %133, i32 %134)
  %136 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %137 = load i32*, i32** %15, align 8
  %138 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %139 = bitcast i32* %138 to i16*
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @phase2(i32* %136, i32* %137, i16* %139, i64 %140)
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %143 = call i32 @arcfour_init(%struct.arc4context* %10, i32* %142, i32 16)
  %144 = load i32*, i32** %13, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @arcfour_encrypt(%struct.arc4context* %10, i32* %144, i32* %145, i32 %146)
  %148 = load i32*, i32** %13, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sub nsw i32 %149, 4
  %151 = call i32 @getcrc32(i32* %148, i32 %150)
  %152 = call i32 @cpu_to_le32(i32 %151)
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %152, i32* %153, align 16
  br label %154

154:                                              ; preds = %116, %41
  br label %155

155:                                              ; preds = %108, %154, %2
  ret void
}

declare dso_local %struct.sta_info* @r8712_get_stainfo(i32*, i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @GET_TKIP_PN(i32*, i32) #1

declare dso_local i32 @phase1(i64*, i32*, i32*, i32) #1

declare dso_local i32 @phase2(i32*, i32*, i16*, i64) #1

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
