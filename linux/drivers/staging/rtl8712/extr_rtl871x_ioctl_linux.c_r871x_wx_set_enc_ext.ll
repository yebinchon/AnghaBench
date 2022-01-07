; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_wx_set_enc_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r871x_wx_set_enc_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.iw_encode_ext = type { i32, i32, i32, %struct.iw_encode_ext* }
%struct.ieee_param = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.ieee_param*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE_CMD_SET_ENCRYPTION = common dso_local global i32 0, align 4
@IEEE_CRYPT_ALG_NAME_LEN = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_RX_SEQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r871x_wx_set_enc_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r871x_wx_set_enc_ext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_point*, align 8
  %11 = alloca %struct.iw_encode_ext*, align 8
  %12 = alloca %struct.ieee_param*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.iw_point*
  store %struct.iw_point* %17, %struct.iw_point** %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %19, %struct.iw_encode_ext** %11, align 8
  store %struct.ieee_param* null, %struct.ieee_param** %12, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %21 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %27 [
    i32 130, label %23
    i32 128, label %24
    i32 129, label %25
    i32 131, label %26
  ]

23:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %30

24:                                               ; preds = %4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %30

25:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %30

26:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %140

30:                                               ; preds = %26, %25, %24, %23
  %31 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %32 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 40, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.ieee_param* @kzalloc(i32 %37, i32 %38)
  store %struct.ieee_param* %39, %struct.ieee_param** %12, align 8
  %40 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %41 = icmp ne %struct.ieee_param* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %140

45:                                               ; preds = %30
  %46 = load i32, i32* @IEEE_CMD_SET_ENCRYPTION, align 4
  %47 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %48 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %50 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @eth_broadcast_addr(i32 %51)
  %53 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %54 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* @IEEE_CRYPT_ALG_NAME_LEN, align 4
  %61 = call i32 @strlcpy(i8* %58, i8* %59, i32 %60)
  %62 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %63 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %45
  %69 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %70 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %68, %45
  %74 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %75 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %82 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %87 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %92 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %96 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IW_ENCODE_EXT_RX_SEQ_VALID, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %85
  %102 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %103 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load %struct.ieee_param*, %struct.ieee_param** %105, align 8
  %107 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %108 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %107, i32 0, i32 3
  %109 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %108, align 8
  %110 = call i32 @memcpy(%struct.ieee_param* %106, %struct.iw_encode_ext* %109, i32 8)
  br label %111

111:                                              ; preds = %101, %85
  %112 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %113 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %118 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %121 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i32 %119, i32* %123, align 8
  %124 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %125 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %124, i64 1
  %126 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %127 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %126, i64 1
  %128 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %129 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @memcpy(%struct.ieee_param* %125, %struct.iw_encode_ext* %127, i32 %130)
  br label %132

132:                                              ; preds = %116, %111
  %133 = load %struct.net_device*, %struct.net_device** %6, align 8
  %134 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @wpa_set_encryption(%struct.net_device* %133, %struct.ieee_param* %134, i32 %135)
  store i32 %136, i32* %15, align 4
  %137 = load %struct.ieee_param*, %struct.ieee_param** %12, align 8
  %138 = call i32 @kfree(%struct.ieee_param* %137)
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %132, %42, %27
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.ieee_param* @kzalloc(i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.ieee_param*, %struct.iw_encode_ext*, i32) #1

declare dso_local i32 @wpa_set_encryption(%struct.net_device*, %struct.ieee_param*, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
