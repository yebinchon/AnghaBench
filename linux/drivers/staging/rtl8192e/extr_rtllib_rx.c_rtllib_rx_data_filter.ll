; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_data_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_data_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_4__ = type { i64, i64 }

@RTLLIB_FCTL_DSTODS = common dso_local global i32 0, align 4
@RTLLIB_FCTL_TODS = common dso_local global i32 0, align 4
@RTLLIB_FCTL_FROMDS = common dso_local global i32 0, align 4
@RTLLIB_STYPE_DATA = common dso_local global i64 0, align 8
@RTLLIB_STYPE_DATA_CFACK = common dso_local global i64 0, align 8
@RTLLIB_STYPE_DATA_CFPOLL = common dso_local global i64 0, align 8
@RTLLIB_STYPE_DATA_CFACKPOLL = common dso_local global i64 0, align 8
@RTLLIB_STYPE_QOS_DATA = common dso_local global i64 0, align 8
@RTLLIB_STYPE_NULLFUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"RX: dropped data frame with no data (type=0x%02x, subtype=0x%02x)\0A\00", align 1
@IW_MODE_MESH = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, i32, i64*, i64*, i64*, i64*)* @rtllib_rx_data_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_rx_data_filter(%struct.rtllib_device* %0, i32 %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtllib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @WLAN_FC_GET_TYPE(i32 %16)
  store i64 %17, i64* %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @WLAN_FC_GET_STYPE(i32 %18)
  store i64 %19, i64* %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @RTLLIB_FCTL_DSTODS, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @RTLLIB_FCTL_DSTODS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %6
  %26 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %27 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64*, i64** %12, align 8
  %31 = call i64 @ether_addr_equal(i64* %29, i64* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %35 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @is_zero_ether_addr(i64* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 -1, i32* %7, align 4
  br label %154

41:                                               ; preds = %33, %25, %6
  %42 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %43 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %49 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @RTLLIB_FCTL_TODS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @RTLLIB_FCTL_FROMDS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %80, label %63

63:                                               ; preds = %58
  %64 = load i64*, i64** %10, align 8
  %65 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %66 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = call i64 @ether_addr_equal(i64* %64, i64* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %63
  %72 = load i64*, i64** %12, align 8
  %73 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %74 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = call i64 @ether_addr_equal(i64* %72, i64* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 -1, i32* %7, align 4
  br label %154

80:                                               ; preds = %71, %63, %58, %53
  br label %81

81:                                               ; preds = %80, %47, %41
  %82 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %83 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %120, label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* @RTLLIB_STYPE_DATA, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %87
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* @RTLLIB_STYPE_DATA_CFACK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %91
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* @RTLLIB_STYPE_DATA_CFPOLL, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* @RTLLIB_STYPE_DATA_CFACKPOLL, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @RTLLIB_STYPE_QOS_DATA, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* @RTLLIB_STYPE_NULLFUNC, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %113 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call i32 @netdev_dbg(%struct.TYPE_6__* %114, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %115, i64 %116)
  br label %118

118:                                              ; preds = %111, %107
  store i32 -1, i32* %7, align 4
  br label %154

119:                                              ; preds = %103, %99, %95, %91, %87
  br label %120

120:                                              ; preds = %119, %81
  %121 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %122 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @IW_MODE_MESH, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %153

126:                                              ; preds = %120
  %127 = load i64*, i64** %11, align 8
  %128 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %129 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* @ETH_ALEN, align 4
  %134 = call i64 @memcmp(i64* %127, i64* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %126
  store i32 -1, i32* %7, align 4
  br label %154

137:                                              ; preds = %126
  %138 = load i64*, i64** %10, align 8
  %139 = call i64 @is_multicast_ether_addr(i64* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %137
  %142 = load i64*, i64** %12, align 8
  %143 = load %struct.rtllib_device*, %struct.rtllib_device** %8, align 8
  %144 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* @ETH_ALEN, align 4
  %148 = call i64 @memcmp(i64* %142, i64* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  store i32 -1, i32* %7, align 4
  br label %154

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %137
  br label %153

153:                                              ; preds = %152, %120
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %153, %150, %136, %118, %79, %40
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i64 @WLAN_FC_GET_TYPE(i32) #1

declare dso_local i64 @WLAN_FC_GET_STYPE(i32) #1

declare dso_local i64 @ether_addr_equal(i64*, i64*) #1

declare dso_local i32 @is_zero_ether_addr(i64*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_6__*, i8*, i64, i64) #1

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
