; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct._adapter = type { %struct.TYPE_2__, %struct.mlme_priv }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, %union.Keytype* }
%union.Keytype = type { i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8711_wx_get_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8711_wx_get_enc(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._adapter*, align 8
  %12 = alloca %struct.iw_point*, align 8
  %13 = alloca %struct.mlme_priv*, align 8
  %14 = alloca %union.Keytype*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct._adapter* @netdev_priv(%struct.net_device* %15)
  store %struct._adapter* %16, %struct._adapter** %11, align 8
  %17 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %18 = bitcast %union.iwreq_data* %17 to %struct.iw_point*
  store %struct.iw_point* %18, %struct.iw_point** %12, align 8
  %19 = load %struct._adapter*, %struct._adapter** %11, align 8
  %20 = getelementptr inbounds %struct._adapter, %struct._adapter* %19, i32 0, i32 1
  store %struct.mlme_priv* %20, %struct.mlme_priv** %13, align 8
  %21 = load %struct._adapter*, %struct._adapter** %11, align 8
  %22 = getelementptr inbounds %struct._adapter, %struct._adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load %union.Keytype*, %union.Keytype** %23, align 8
  store %union.Keytype* %24, %union.Keytype** %14, align 8
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %26 = load i32, i32* @_FW_LINKED, align 4
  %27 = call i32 @check_fwstate(%struct.mlme_priv* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %4
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %31 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %32 = call i32 @check_fwstate(%struct.mlme_priv* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %36 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %38 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %39 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %177

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %4
  %44 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %45 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @WEP_KEYS, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %177

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %10, align 4
  br label %66

61:                                               ; preds = %43
  %62 = load %struct._adapter*, %struct._adapter** %11, align 8
  %63 = getelementptr inbounds %struct._adapter, %struct._adapter* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %70 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct._adapter*, %struct._adapter** %11, align 8
  %72 = getelementptr inbounds %struct._adapter, %struct._adapter* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %168 [
    i32 128, label %75
    i32 129, label %75
    i32 132, label %83
    i32 131, label %156
    i32 130, label %156
  ]

75:                                               ; preds = %66, %66
  %76 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %77 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %79 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %80 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %176

83:                                               ; preds = %66
  %84 = load %struct._adapter*, %struct._adapter** %11, align 8
  %85 = getelementptr inbounds %struct._adapter, %struct._adapter* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %93 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %95 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %147

98:                                               ; preds = %83
  %99 = load i8*, i8** %9, align 8
  %100 = load %union.Keytype*, %union.Keytype** %14, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %union.Keytype, %union.Keytype* %100, i64 %102
  %104 = bitcast %union.Keytype* %103 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = load %struct._adapter*, %struct._adapter** %11, align 8
  %107 = getelementptr inbounds %struct._adapter, %struct._adapter* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memcpy(i8* %99, i32 %105, i32 %113)
  %115 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %116 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %117 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct._adapter*, %struct._adapter** %11, align 8
  %121 = getelementptr inbounds %struct._adapter, %struct._adapter* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @Ndis802_11AuthModeOpen, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %98
  %127 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %128 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %129 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %146

132:                                              ; preds = %98
  %133 = load %struct._adapter*, %struct._adapter** %11, align 8
  %134 = getelementptr inbounds %struct._adapter, %struct._adapter* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @Ndis802_11AuthModeShared, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %141 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %142 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %132
  br label %146

146:                                              ; preds = %145, %126
  br label %155

147:                                              ; preds = %83
  %148 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %149 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %148, i32 0, i32 0
  store i32 0, i32* %149, align 4
  %150 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %151 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %152 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %147, %146
  br label %176

156:                                              ; preds = %66, %66
  %157 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %158 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %157, i32 0, i32 0
  store i32 16, i32* %158, align 4
  %159 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %160 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %165 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %176

168:                                              ; preds = %66
  %169 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %170 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %169, i32 0, i32 0
  store i32 0, i32* %170, align 4
  %171 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %172 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %173 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %168, %156, %155, %75
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %176, %55, %34
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
