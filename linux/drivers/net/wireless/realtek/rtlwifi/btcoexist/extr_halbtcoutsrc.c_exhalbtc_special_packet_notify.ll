; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_special_packet_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_special_packet_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_4__, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PACKET_DHCP = common dso_local global i64 0, align 8
@BTC_PACKET_DHCP = common dso_local global i64 0, align 8
@PACKET_EAPOL = common dso_local global i64 0, align 8
@BTC_PACKET_EAPOL = common dso_local global i64 0, align 8
@PACKET_ARP = common dso_local global i64 0, align 8
@BTC_PACKET_ARP = common dso_local global i64 0, align 8
@BTC_PACKET_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_special_packet_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %123

10:                                               ; preds = %2
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %123

21:                                               ; preds = %10
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @PACKET_DHCP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @BTC_PACKET_DHCP, align 8
  store i64 %26, i64* %5, align 8
  br label %43

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @PACKET_EAPOL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @BTC_PACKET_EAPOL, align 8
  store i64 %32, i64* %5, align 8
  br label %42

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @PACKET_ARP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @BTC_PACKET_ARP, align 8
  store i64 %38, i64* %5, align 8
  br label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @BTC_PACKET_UNKNOWN, align 8
  store i64 %40, i64* %5, align 8
  br label %123

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = call i32 @halbtc_leave_low_power(%struct.btc_coexist* %44)
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %47 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_HARDWARE_TYPE_8821(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %43
  %52 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %53 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @ex_btc8821a2ant_special_packet_notify(%struct.btc_coexist* %58, i64 %59)
  br label %72

61:                                               ; preds = %51
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %63 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @ex_btc8821a1ant_special_packet_notify(%struct.btc_coexist* %68, i64 %69)
  br label %71

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %71, %57
  br label %120

73:                                               ; preds = %43
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %75 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %73
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %81 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @ex_btc8723b2ant_special_packet_notify(%struct.btc_coexist* %86, i64 %87)
  br label %100

89:                                               ; preds = %79
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %91 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @ex_btc8723b1ant_special_packet_notify(%struct.btc_coexist* %96, i64 %97)
  br label %99

99:                                               ; preds = %95, %89
  br label %100

100:                                              ; preds = %99, %85
  br label %119

101:                                              ; preds = %73
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %103 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %109 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %115 = load i64, i64* %5, align 8
  %116 = call i32 @ex_btc8192e2ant_special_packet_notify(%struct.btc_coexist* %114, i64 %115)
  br label %117

117:                                              ; preds = %113, %107
  br label %118

118:                                              ; preds = %117, %101
  br label %119

119:                                              ; preds = %118, %100
  br label %120

120:                                              ; preds = %119, %72
  %121 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %122 = call i32 @halbtc_normal_low_power(%struct.btc_coexist* %121)
  br label %123

123:                                              ; preds = %120, %39, %20, %9
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_leave_low_power(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a2ant_special_packet_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @ex_btc8821a1ant_special_packet_notify(%struct.btc_coexist*, i64) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_special_packet_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @ex_btc8723b1ant_special_packet_notify(%struct.btc_coexist*, i64) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

declare dso_local i32 @ex_btc8192e2ant_special_packet_notify(%struct.btc_coexist*, i64) #1

declare dso_local i32 @halbtc_normal_low_power(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
