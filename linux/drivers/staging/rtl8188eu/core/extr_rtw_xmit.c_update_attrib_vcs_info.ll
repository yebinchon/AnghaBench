; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_update_attrib_vcs_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_update_attrib_vcs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.mlme_ext_priv }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.mlme_ext_priv = type { i64, i64, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64, i32 }
%struct.xmit_frame = type { %struct.pkt_attrib }
%struct.pkt_attrib = type { i32, i64, i8*, i64, i64, %struct.sta_info* }
%struct.sta_info = type { i64, i64 }

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
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca %struct.mlme_ext_priv*, align 8
  %9 = alloca %struct.mlme_ext_info*, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %11 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %12 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %11, i32 0, i32 0
  store %struct.pkt_attrib* %12, %struct.pkt_attrib** %6, align 8
  %13 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %14 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %13, i32 0, i32 5
  %15 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  store %struct.sta_info* %15, %struct.sta_info** %7, align 8
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 3
  store %struct.mlme_ext_priv* %17, %struct.mlme_ext_priv** %8, align 8
  %18 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %19 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %18, i32 0, i32 2
  store %struct.mlme_ext_info* %19, %struct.mlme_ext_info** %9, align 8
  %20 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %21 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %31 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WIRELESS_11_24N, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %39, %33
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %46, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i8*, i8** @RTS_CTS, align 8
  %54 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %55 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %80

56:                                               ; preds = %45
  %57 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i8*, i8** @RTS_CTS, align 8
  %63 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %64 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  br label %79

65:                                               ; preds = %56
  %66 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i8*, i8** @CTS_TO_SELF, align 8
  %72 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %73 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %78

74:                                               ; preds = %65
  %75 = load i8*, i8** @NONE_VCS, align 8
  %76 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %77 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %52
  br label %191

81:                                               ; preds = %39
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %84 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @HT_IOT_PEER_ATHEROS, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %90 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.adapter*, %struct.adapter** %3, align 8
  %95 = getelementptr inbounds %struct.adapter, %struct.adapter* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @_AES_, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i8*, i8** @CTS_TO_SELF, align 8
  %102 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %103 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %190

104:                                              ; preds = %93, %88, %82
  %105 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %106 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %111 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %109, %104
  %115 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %116 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i8*, i8** @RTS_CTS, align 8
  %121 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %122 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  br label %133

123:                                              ; preds = %114
  %124 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %125 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i8*, i8** @CTS_TO_SELF, align 8
  %130 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %131 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %123
  br label %133

133:                                              ; preds = %132, %119
  br label %190

134:                                              ; preds = %109
  %135 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %136 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %134
  %140 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %141 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %10, align 4
  %143 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %144 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load i32, i32* %10, align 4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %161, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %10, align 4
  %152 = icmp eq i32 %151, 3
  br i1 %152, label %161, label %153

153:                                              ; preds = %150, %139
  %154 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %155 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %10, align 4
  %160 = icmp eq i32 %159, 3
  br i1 %160, label %161, label %165

161:                                              ; preds = %158, %150, %147
  %162 = load i8*, i8** @RTS_CTS, align 8
  %163 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %164 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  br label %190

165:                                              ; preds = %158, %153
  br label %166

166:                                              ; preds = %165, %134
  %167 = load i64, i64* %5, align 8
  %168 = load %struct.adapter*, %struct.adapter** %3, align 8
  %169 = getelementptr inbounds %struct.adapter, %struct.adapter* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %167, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load i8*, i8** @RTS_CTS, align 8
  %175 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %176 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %175, i32 0, i32 2
  store i8* %174, i8** %176, align 8
  br label %190

177:                                              ; preds = %166
  %178 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %179 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i8*, i8** @RTS_CTS, align 8
  %184 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %185 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  br label %190

186:                                              ; preds = %177
  %187 = load i8*, i8** @NONE_VCS, align 8
  %188 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %189 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %186, %182, %173, %161, %133, %100
  br label %191

191:                                              ; preds = %190, %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
