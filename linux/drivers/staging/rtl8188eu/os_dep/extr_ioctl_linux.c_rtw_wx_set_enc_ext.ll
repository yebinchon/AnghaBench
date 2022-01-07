; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_set_enc_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_set_enc_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.ieee_param = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64 }
%struct.iw_encode_ext = type { i32, i32, i32, %struct.iw_encode_ext* }

@IEEE_CMD_SET_ENCRYPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@IEEE_CRYPT_ALG_NAME_LEN = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_RX_SEQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @rtw_wx_set_enc_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_wx_set_enc_ext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee_param*, align 8
  %13 = alloca %struct.iw_point*, align 8
  %14 = alloca %struct.iw_encode_ext*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.ieee_param* null, %struct.ieee_param** %12, align 8
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.iw_point*
  store %struct.iw_point* %17, %struct.iw_point** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %19, %struct.iw_encode_ext** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %21 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add i64 40, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @rtw_malloc(i32 %26)
  %28 = inttoptr i64 %27 to %struct.ieee_param*
  store %struct.ieee_param* %28, %struct.ieee_param** %12, align 8
  %29 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %30 = icmp ne %struct.ieee_param* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %148

32:                                               ; preds = %4
  %33 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @memset(%struct.ieee_param* %33, i32 0, i32 %34)
  %36 = load i32, i32* @IEEE_CMD_SET_ENCRYPTION, align 4
  %37 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %38 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %40 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @eth_broadcast_addr(i32 %41)
  %43 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %44 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %50 [
    i32 130, label %46
    i32 128, label %47
    i32 129, label %48
    i32 131, label %49
  ]

46:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %51

47:                                               ; preds = %32
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %51

48:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %51

49:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %51

50:                                               ; preds = %32
  store i32 -1, i32* %15, align 4
  br label %144

51:                                               ; preds = %49, %48, %47, %46
  %52 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %53 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* @IEEE_CRYPT_ALG_NAME_LEN, align 4
  %60 = call i32 @strlcpy(i8* %57, i8* %58, i32 %59)
  %61 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %62 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %69 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %51
  %73 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %74 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 128
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %79 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %86 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %77, %72
  %90 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %91 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 255
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %96 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  %99 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %100 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IW_ENCODE_EXT_RX_SEQ_VALID, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %89
  %106 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %107 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %112 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %111, i32 0, i32 3
  %113 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %112, align 8
  %114 = call i32 @memcpy(i32 %110, %struct.iw_encode_ext* %113, i32 8)
  br label %115

115:                                              ; preds = %105, %89
  %116 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %117 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %115
  %121 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %122 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %125 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  store i32 %123, i32* %127, align 8
  %128 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %129 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %134 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %133, i64 1
  %135 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %136 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @memcpy(i32 %132, %struct.iw_encode_ext* %134, i32 %137)
  br label %139

139:                                              ; preds = %120, %115
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @wpa_set_encryption(%struct.net_device* %140, %struct.ieee_param* %141, i32 %142)
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %139, %50
  %145 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %146 = call i32 @kfree(%struct.ieee_param* %145)
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %144, %31
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i64 @rtw_malloc(i32) #1

declare dso_local i32 @memset(%struct.ieee_param*, i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.iw_encode_ext*, i32) #1

declare dso_local i32 @wpa_set_encryption(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
