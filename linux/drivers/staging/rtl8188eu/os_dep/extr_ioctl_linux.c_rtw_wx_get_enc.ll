; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_get_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_get_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct.adapter = type { %struct.TYPE_4__, %struct.mlme_priv }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlme_priv = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@Ndis802_11AuthModeOpen = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@Ndis802_11AuthModeShared = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @rtw_wx_get_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_wx_get_enc(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca %struct.iw_point*, align 8
  %13 = alloca %struct.mlme_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call i64 @rtw_netdev_priv(%struct.net_device* %14)
  %16 = inttoptr i64 %15 to %struct.adapter*
  store %struct.adapter* %16, %struct.adapter** %11, align 8
  %17 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %18 = bitcast %union.iwreq_data* %17 to %struct.iw_point*
  store %struct.iw_point* %18, %struct.iw_point** %12, align 8
  %19 = load %struct.adapter*, %struct.adapter** %11, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  store %struct.mlme_priv* %20, %struct.mlme_priv** %13, align 8
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %22 = load i32, i32* @_FW_LINKED, align 4
  %23 = call i32 @check_fwstate(%struct.mlme_priv* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %4
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %27 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %28 = call i32 @check_fwstate(%struct.mlme_priv* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %32 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %34 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %35 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %176

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %41 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @WEP_KEYS, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %176

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %10, align 4
  br label %62

57:                                               ; preds = %39
  %58 = load %struct.adapter*, %struct.adapter** %11, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %66 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.adapter*, %struct.adapter** %11, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %167 [
    i32 128, label %71
    i32 129, label %71
    i32 132, label %79
    i32 131, label %155
    i32 130, label %155
  ]

71:                                               ; preds = %62, %62
  %72 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %73 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %75 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %76 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %175

79:                                               ; preds = %62
  %80 = load %struct.adapter*, %struct.adapter** %11, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %89 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %91 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %146

94:                                               ; preds = %79
  %95 = load i8*, i8** %9, align 8
  %96 = load %struct.adapter*, %struct.adapter** %11, align 8
  %97 = getelementptr inbounds %struct.adapter, %struct.adapter* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.adapter*, %struct.adapter** %11, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memcpy(i8* %95, i32 %104, i32 %112)
  %114 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %115 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %116 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.adapter*, %struct.adapter** %11, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @Ndis802_11AuthModeOpen, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %94
  %126 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %127 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %128 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %145

131:                                              ; preds = %94
  %132 = load %struct.adapter*, %struct.adapter** %11, align 8
  %133 = getelementptr inbounds %struct.adapter, %struct.adapter* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @Ndis802_11AuthModeShared, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %140 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %141 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %131
  br label %145

145:                                              ; preds = %144, %125
  br label %154

146:                                              ; preds = %79
  %147 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %148 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %147, i32 0, i32 0
  store i32 0, i32* %148, align 4
  %149 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %150 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %151 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %146, %145
  br label %175

155:                                              ; preds = %62, %62
  %156 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %157 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %156, i32 0, i32 0
  store i32 16, i32* %157, align 4
  %158 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %159 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %164 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %175

167:                                              ; preds = %62
  %168 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %169 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %168, i32 0, i32 0
  store i32 0, i32* %169, align 4
  %170 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %171 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %172 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %167, %155, %154, %71
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %51, %30
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
