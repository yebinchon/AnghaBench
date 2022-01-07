; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_update_attrib_vcs_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_update_attrib_vcs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i8*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.mlme_ext_priv }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.mlme_ext_priv = type { i64, i64, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64, i32 }
%struct.xmit_frame = type { %struct.pkt_attrib }
%struct.pkt_attrib = type { i32, i64, i32, i8*, i64, i64, i64 }

@WIRELESS_11_24N = common dso_local global i64 0, align 8
@RTS_CTS = common dso_local global i8* null, align 8
@CTS_TO_SELF = common dso_local global i8* null, align 8
@NONE_VCS = common dso_local global i8* null, align 8
@HT_IOT_PEER_ATHEROS = common dso_local global i64 0, align 8
@_AES_ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.xmit_frame*)* @update_attrib_vcs_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_attrib_vcs_info(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.xmit_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pkt_attrib*, align 8
  %7 = alloca %struct.mlme_ext_priv*, align 8
  %8 = alloca %struct.mlme_ext_info*, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %10 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %11 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %10, i32 0, i32 0
  store %struct.pkt_attrib* %11, %struct.pkt_attrib** %6, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 5
  store %struct.mlme_ext_priv* %13, %struct.mlme_ext_priv** %7, align 8
  %14 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %14, i32 0, i32 2
  store %struct.mlme_ext_info* %15, %struct.mlme_ext_info** %8, align 8
  %16 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %17 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %27 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %31 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WIRELESS_11_24N, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %35, %29
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %42, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i8*, i8** @RTS_CTS, align 8
  %50 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %51 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  br label %76

52:                                               ; preds = %41
  %53 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %54 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8*, i8** @RTS_CTS, align 8
  %59 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %60 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  br label %75

61:                                               ; preds = %52
  %62 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %63 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i8*, i8** @CTS_TO_SELF, align 8
  %68 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %69 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  br label %74

70:                                               ; preds = %61
  %71 = load i8*, i8** @NONE_VCS, align 8
  %72 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %73 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %57
  br label %76

76:                                               ; preds = %75, %48
  br label %187

77:                                               ; preds = %35
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %8, align 8
  %80 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @HT_IOT_PEER_ATHEROS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %86 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.adapter*, %struct.adapter** %3, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @_AES_, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i8*, i8** @CTS_TO_SELF, align 8
  %98 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %99 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  br label %186

100:                                              ; preds = %89, %84, %78
  %101 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %102 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %107 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %105, %100
  %111 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %112 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i8*, i8** @RTS_CTS, align 8
  %117 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %118 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  br label %129

119:                                              ; preds = %110
  %120 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %121 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i8*, i8** @CTS_TO_SELF, align 8
  %126 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %127 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %124, %119
  br label %129

129:                                              ; preds = %128, %115
  br label %186

130:                                              ; preds = %105
  %131 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %132 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %130
  %136 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %8, align 8
  %137 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %9, align 4
  %139 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %140 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %157, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %157, label %149

149:                                              ; preds = %146, %135
  %150 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %151 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %9, align 4
  %156 = icmp eq i32 %155, 3
  br i1 %156, label %157, label %161

157:                                              ; preds = %154, %146, %143
  %158 = load i8*, i8** @RTS_CTS, align 8
  %159 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %160 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %159, i32 0, i32 3
  store i8* %158, i8** %160, align 8
  br label %186

161:                                              ; preds = %154, %149
  br label %162

162:                                              ; preds = %161, %130
  %163 = load i64, i64* %5, align 8
  %164 = load %struct.adapter*, %struct.adapter** %3, align 8
  %165 = getelementptr inbounds %struct.adapter, %struct.adapter* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %163, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load i8*, i8** @RTS_CTS, align 8
  %171 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %172 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %171, i32 0, i32 3
  store i8* %170, i8** %172, align 8
  br label %186

173:                                              ; preds = %162
  %174 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %175 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i8*, i8** @RTS_CTS, align 8
  %180 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %181 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  br label %186

182:                                              ; preds = %173
  %183 = load i8*, i8** @NONE_VCS, align 8
  %184 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %185 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %184, i32 0, i32 3
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %182, %178, %169, %157, %129, %96
  br label %187

187:                                              ; preds = %186, %76
  %188 = load %struct.adapter*, %struct.adapter** %3, align 8
  %189 = getelementptr inbounds %struct.adapter, %struct.adapter* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load %struct.adapter*, %struct.adapter** %3, align 8
  %194 = getelementptr inbounds %struct.adapter, %struct.adapter* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %197 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %192, %187
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
