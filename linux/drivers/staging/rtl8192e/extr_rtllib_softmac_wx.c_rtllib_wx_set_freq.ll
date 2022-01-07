; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac_wx.c_rtllib_wx_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i32*, i64, i32, %struct.TYPE_2__, i32, i32 (i32, i64)* }
%struct.TYPE_2__ = type { i64 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_freq }
%struct.iw_freq = type { i32, i32 }

@IW_MODE_INFRA = common dso_local global i64 0, align 8
@rtllib_wlan_frequencies = common dso_local global i32* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@RTLLIB_LINKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_wx_set_freq(%struct.rtllib_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iw_freq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %14 = bitcast %union.iwreq_data* %13 to %struct.iw_freq*
  store %struct.iw_freq* %14, %struct.iw_freq** %10, align 8
  %15 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %16 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %15, i32 0, i32 3
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %19 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IW_MODE_INFRA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %144

24:                                               ; preds = %4
  %25 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %26 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %68

29:                                               ; preds = %24
  %30 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %31 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 241200000
  br i1 %33, label %34, label %67

34:                                               ; preds = %29
  %35 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %36 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 248700000
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %41 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 100000
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %57, %39
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 14
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** @rtllib_wlan_frequencies, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %48, %53
  br label %55

55:                                               ; preds = %47, %44
  %56 = phi i1 [ false, %44 ], [ %54, %47 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %44

60:                                               ; preds = %55
  %61 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %62 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %66 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %34, %29
  br label %68

68:                                               ; preds = %67, %24
  %69 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %70 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %75 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 14
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %80 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %78, %73, %68
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %9, align 4
  br label %144

86:                                               ; preds = %78
  %87 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %88 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %91 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  br label %144

100:                                              ; preds = %86
  %101 = load %struct.iw_freq*, %struct.iw_freq** %10, align 8
  %102 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %106 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i64 %104, i64* %107, align 8
  %108 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %109 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %108, i32 0, i32 6
  %110 = load i32 (i32, i64)*, i32 (i32, i64)** %109, align 8
  %111 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %112 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %115 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 %110(i32 %113, i64 %117)
  %119 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %120 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IW_MODE_ADHOC, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %100
  %125 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %126 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IW_MODE_MASTER, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %124, %100
  %131 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %132 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @RTLLIB_LINKED, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %138 = call i32 @rtllib_stop_send_beacons(%struct.rtllib_device* %137)
  %139 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %140 = call i32 @rtllib_start_send_beacons(%struct.rtllib_device* %139)
  br label %141

141:                                              ; preds = %136, %130
  br label %142

142:                                              ; preds = %141, %124
  br label %143

143:                                              ; preds = %142
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %143, %97, %83, %23
  %145 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %146 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %145, i32 0, i32 3
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load i32, i32* %9, align 4
  ret i32 %148
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtllib_stop_send_beacons(%struct.rtllib_device*) #1

declare dso_local i32 @rtllib_start_send_beacons(%struct.rtllib_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
