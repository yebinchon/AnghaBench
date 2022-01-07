; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_wx_set_enc_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_wx_set_enc_ext.c"
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

@GFP_KERNEL = common dso_local global i32 0, align 4
@IEEE_CMD_SET_ENCRYPTION = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"BIP\00", align 1
@IEEE_CRYPT_ALG_NAME_LEN = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_RX_SEQ_VALID = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
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
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ieee_param* @kzalloc(i32 %26, i32 %27)
  store %struct.ieee_param* %28, %struct.ieee_param** %12, align 8
  %29 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %30 = icmp eq %struct.ieee_param* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %161

32:                                               ; preds = %4
  %33 = load i32, i32* @IEEE_CMD_SET_ENCRYPTION, align 4
  %34 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %35 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %37 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @memset(i32 %38, i32 255, i32 %39)
  %41 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %42 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %49 [
    i32 130, label %44
    i32 128, label %45
    i32 129, label %46
    i32 131, label %47
    i32 132, label %48
  ]

44:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %50

45:                                               ; preds = %32
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %50

46:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %50

47:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %50

48:                                               ; preds = %32
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %50

49:                                               ; preds = %32
  store i32 -1, i32* %15, align 4
  br label %157

50:                                               ; preds = %48, %47, %46, %45, %44
  %51 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %52 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* @IEEE_CRYPT_ALG_NAME_LEN, align 4
  %59 = call i32 @strncpy(i8* %56, i8* %57, i32 %58)
  %60 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %61 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %50
  %67 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %68 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %50
  %72 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %73 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 128
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %78 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %76
  %84 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %85 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 132
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83, %76
  %90 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %91 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %89, %83, %71
  %95 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %96 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 255
  %99 = sub nsw i32 %98, 1
  %100 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %101 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 4
  %104 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %105 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IW_ENCODE_EXT_RX_SEQ_VALID, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %94
  %111 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %112 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %117 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %116, i32 0, i32 3
  %118 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %117, align 8
  %119 = call i32 @memcpy(i32 %115, %struct.iw_encode_ext* %118, i32 8)
  br label %120

120:                                              ; preds = %110, %94
  %121 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %122 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %120
  %126 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %127 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %130 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  store i32 %128, i32* %132, align 8
  %133 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %134 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %139 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %138, i64 1
  %140 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %14, align 8
  %141 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memcpy(i32 %137, %struct.iw_encode_ext* %139, i32 %142)
  br label %144

144:                                              ; preds = %125, %120
  %145 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %146 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %144
  %153 = load %struct.net_device*, %struct.net_device** %6, align 8
  %154 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @wpa_set_encryption(%struct.net_device* %153, %struct.ieee_param* %154, i32 %155)
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %152, %49
  %158 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %159 = call i32 @kfree(%struct.ieee_param* %158)
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %157, %31
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local %struct.ieee_param* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.iw_encode_ext*, i32) #1

declare dso_local i32 @wpa_set_encryption(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
