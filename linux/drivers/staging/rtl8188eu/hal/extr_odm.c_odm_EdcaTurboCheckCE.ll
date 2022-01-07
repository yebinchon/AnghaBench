; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_EdcaTurboCheckCE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_odm_EdcaTurboCheckCE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { %struct.TYPE_4__, %struct.adapter* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.adapter = type { %struct.TYPE_3__*, %struct.mlme_ext_priv, %struct.registry_priv, %struct.recv_priv, %struct.xmit_priv }
%struct.TYPE_3__ = type { i64 }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64 }
%struct.registry_priv = type { i32 }
%struct.recv_priv = type { i32, i32, i32 }
%struct.xmit_priv = type { i32, i32 }

@HT_IOT_PEER_MAX = common dso_local global i64 0, align 8
@HT_IOT_PEER_RALINK = common dso_local global i64 0, align 8
@HT_IOT_PEER_ATHEROS = common dso_local global i64 0, align 8
@UP_LINK = common dso_local global i64 0, align 8
@DOWN_LINK = common dso_local global i64 0, align 8
@HT_IOT_PEER_CISCO = common dso_local global i64 0, align 8
@WIRELESS_11_24N = common dso_local global i32 0, align 4
@EDCAParam = common dso_local global i64** null, align 8
@HT_IOT_PEER_UNKNOWN = common dso_local global i64 0, align 8
@REG_EDCA_BE_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_EdcaTurboCheckCE(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xmit_priv*, align 8
  %10 = alloca %struct.recv_priv*, align 8
  %11 = alloca %struct.registry_priv*, align 8
  %12 = alloca %struct.mlme_ext_priv*, align 8
  %13 = alloca %struct.mlme_ext_info*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %14 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %15 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %14, i32 0, i32 1
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 4
  store %struct.xmit_priv* %18, %struct.xmit_priv** %9, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 3
  store %struct.recv_priv* %20, %struct.recv_priv** %10, align 8
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 2
  store %struct.registry_priv* %22, %struct.registry_priv** %11, align 8
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 1
  store %struct.mlme_ext_priv* %24, %struct.mlme_ext_priv** %12, align 8
  %25 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %12, align 8
  %26 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %25, i32 0, i32 1
  store %struct.mlme_ext_info* %26, %struct.mlme_ext_info** %13, align 8
  %27 = load %struct.registry_priv*, %struct.registry_priv** %11, align 8
  %28 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %170

32:                                               ; preds = %1
  %33 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %13, align 8
  %34 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HT_IOT_PEER_MAX, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %170

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.recv_priv*, %struct.recv_priv** %10, align 8
  %44 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %150, label %47

47:                                               ; preds = %42, %39
  %48 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %49 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %52 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %6, align 4
  %55 = load %struct.recv_priv*, %struct.recv_priv** %10, align 8
  %56 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.recv_priv*, %struct.recv_priv** %10, align 8
  %59 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %7, align 4
  %62 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %13, align 8
  %63 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HT_IOT_PEER_RALINK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %47
  %68 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %13, align 8
  %69 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HT_IOT_PEER_ATHEROS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67, %47
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 2
  %77 = icmp sgt i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i64, i64* @UP_LINK, align 8
  store i64 %79, i64* %4, align 8
  br label %82

80:                                               ; preds = %73
  %81 = load i64, i64* @DOWN_LINK, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %78
  br label %93

83:                                               ; preds = %67
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 %85, 2
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i64, i64* @DOWN_LINK, align 8
  store i64 %89, i64* %4, align 8
  br label %92

90:                                               ; preds = %83
  %91 = load i64, i64* @UP_LINK, align 8
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92, %82
  %94 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %95 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %93
  %101 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %102 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %146, label %106

106:                                              ; preds = %100, %93
  %107 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %13, align 8
  %108 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @HT_IOT_PEER_CISCO, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %12, align 8
  %114 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @WIRELESS_11_24N, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load i64**, i64*** @EDCAParam, align 8
  %121 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %13, align 8
  %122 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i64*, i64** %120, i64 %123
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %4, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %5, align 8
  br label %137

129:                                              ; preds = %112, %106
  %130 = load i64**, i64*** @EDCAParam, align 8
  %131 = load i64, i64* @HT_IOT_PEER_UNKNOWN, align 8
  %132 = getelementptr inbounds i64*, i64** %130, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %4, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %5, align 8
  br label %137

137:                                              ; preds = %129, %119
  %138 = load %struct.adapter*, %struct.adapter** %3, align 8
  %139 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @usb_write32(%struct.adapter* %138, i32 %139, i64 %140)
  %142 = load i64, i64* %4, align 8
  %143 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %144 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i64 %142, i64* %145, align 8
  br label %146

146:                                              ; preds = %137, %100
  %147 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %148 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i32 1, i32* %149, align 8
  br label %169

150:                                              ; preds = %42
  %151 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %152 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load %struct.adapter*, %struct.adapter** %3, align 8
  %158 = load i32, i32* @REG_EDCA_BE_PARAM, align 4
  %159 = load %struct.adapter*, %struct.adapter** %3, align 8
  %160 = getelementptr inbounds %struct.adapter, %struct.adapter* %159, i32 0, i32 0
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @usb_write32(%struct.adapter* %157, i32 %158, i64 %163)
  %165 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %166 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %156, %150
  br label %169

169:                                              ; preds = %168, %146
  br label %170

170:                                              ; preds = %169, %38, %31
  %171 = load %struct.recv_priv*, %struct.recv_priv** %10, align 8
  %172 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %171, i32 0, i32 0
  store i32 0, i32* %172, align 4
  %173 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %174 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %177 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.recv_priv*, %struct.recv_priv** %10, align 8
  %179 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.recv_priv*, %struct.recv_priv** %10, align 8
  %182 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 4
  ret void
}

declare dso_local i32 @usb_write32(%struct.adapter*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
