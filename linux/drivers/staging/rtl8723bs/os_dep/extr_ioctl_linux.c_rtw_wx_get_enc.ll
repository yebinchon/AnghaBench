; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_wx_get_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_wx_get_enc.c"
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
  %11 = alloca i32, align 4
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca %struct.iw_point*, align 8
  %14 = alloca %struct.mlme_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call i64 @rtw_netdev_priv(%struct.net_device* %15)
  %17 = inttoptr i64 %16 to %struct.adapter*
  store %struct.adapter* %17, %struct.adapter** %12, align 8
  %18 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %19 = bitcast %union.iwreq_data* %18 to %struct.iw_point*
  store %struct.iw_point* %19, %struct.iw_point** %13, align 8
  %20 = load %struct.adapter*, %struct.adapter** %12, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  store %struct.mlme_priv* %21, %struct.mlme_priv** %14, align 8
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %14, align 8
  %23 = load i32, i32* @_FW_LINKED, align 4
  %24 = call i32 @check_fwstate(%struct.mlme_priv* %22, i32 %23)
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %40

26:                                               ; preds = %4
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %14, align 8
  %28 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %29 = call i32 @check_fwstate(%struct.mlme_priv* %27, i32 %28)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %33 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %35 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %36 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %178

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %42 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @WEP_KEYS, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %178

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %10, align 4
  br label %63

58:                                               ; preds = %40
  %59 = load %struct.adapter*, %struct.adapter** %12, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %67 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.adapter*, %struct.adapter** %12, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %168 [
    i32 128, label %72
    i32 129, label %72
    i32 132, label %80
    i32 131, label %156
    i32 130, label %156
  ]

72:                                               ; preds = %63, %63
  %73 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %74 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %76 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %77 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %176

80:                                               ; preds = %63
  %81 = load %struct.adapter*, %struct.adapter** %12, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %90 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %92 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %147

95:                                               ; preds = %80
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.adapter*, %struct.adapter** %12, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.adapter*, %struct.adapter** %12, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memcpy(i8* %96, i32 %105, i32 %113)
  %115 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %116 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %117 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.adapter*, %struct.adapter** %12, align 8
  %121 = getelementptr inbounds %struct.adapter, %struct.adapter* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @Ndis802_11AuthModeOpen, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %95
  %127 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %128 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %129 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %146

132:                                              ; preds = %95
  %133 = load %struct.adapter*, %struct.adapter** %12, align 8
  %134 = getelementptr inbounds %struct.adapter, %struct.adapter* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @Ndis802_11AuthModeShared, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %141 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %142 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %132
  br label %146

146:                                              ; preds = %145, %126
  br label %155

147:                                              ; preds = %80
  %148 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %149 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %148, i32 0, i32 0
  store i32 0, i32* %149, align 4
  %150 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %151 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %152 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %147, %146
  br label %176

156:                                              ; preds = %63, %63
  %157 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %158 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %157, i32 0, i32 0
  store i32 16, i32* %158, align 4
  %159 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %160 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %165 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %176

168:                                              ; preds = %63
  %169 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %170 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %169, i32 0, i32 0
  store i32 0, i32* %170, align 4
  %171 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %172 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %173 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %168, %156, %155, %72
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %176, %52, %31
  %179 = load i32, i32* %5, align 4
  ret i32 %179
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
