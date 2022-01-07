; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_set_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.qeth_card = type { i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.net_device* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"setonlin\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"2err%04x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@QETH_DIAGS_CMD_TRAP = common dso_local global i32 0, align 4
@QETH_DIAGS_TRAP_ARM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"The device represents a Bridge Capable Port\0A\00", align 1
@CARD_STATE_HARDSETUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"softsetp\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"6err%d\00", align 1
@CARD_STATE_SOFTSETUP = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @qeth_l2_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_set_online(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %8 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %8, i32 0, i32 0
  %10 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_10__* %9)
  store %struct.qeth_card* %10, %struct.qeth_card** %4, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 6
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %21 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %20, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %23 = call i32 @qeth_core_hardsetup_card(%struct.qeth_card* %22, i32* %7)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %27, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %172

32:                                               ; preds = %1
  %33 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %34 = load i32, i32* @QETH_DIAGS_CMD_TRAP, align 4
  %35 = call i64 @qeth_is_diagass_supported(%struct.qeth_card* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = load i32, i32* @QETH_DIAGS_TRAP_ARM, align 4
  %46 = call i64 @qeth_hw_trap(%struct.qeth_card* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %43, %37
  br label %57

53:                                               ; preds = %32
  %54 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %59 = call i32 @qeth_bridgeport_query_support(%struct.qeth_card* %58)
  %60 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %68 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %67, i32 0, i32 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = call i32 @dev_info(i32* %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %66, %57
  %73 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %74 = call i32 @qeth_l2_register_dev_addr(%struct.qeth_card* %73)
  %75 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %76 = call i32 @qeth_l2_vnicc_init(%struct.qeth_card* %75)
  %77 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %78 = call i32 @qeth_trace_features(%struct.qeth_card* %77)
  %79 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %80 = call i32 @qeth_l2_trace_features(%struct.qeth_card* %79)
  %81 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %82 = call i32 @qeth_l2_setup_bridgeport_attrs(%struct.qeth_card* %81)
  %83 = load i32, i32* @CARD_STATE_HARDSETUP, align 4
  %84 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %85 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %87 = call i32 @qeth_print_status_message(%struct.qeth_card* %86)
  %88 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %89 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %88, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %91 = call i64 @IS_OSD(%struct.qeth_card* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %72
  %94 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %95 = call i64 @IS_OSX(%struct.qeth_card* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93, %72
  %98 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %99 = call i32 @qeth_l2_start_ipassists(%struct.qeth_card* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %172

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %93
  %105 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %106 = call i32 @qeth_init_qdio_queues(%struct.qeth_card* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %110, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %172

115:                                              ; preds = %104
  %116 = load i32, i32* @CARD_STATE_SOFTSETUP, align 4
  %117 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %118 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %120 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %119, i32 -1, i32 0)
  %121 = load %struct.net_device*, %struct.net_device** %5, align 8
  %122 = call i32 @qeth_netdev_is_registered(%struct.net_device* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %115
  %125 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @qeth_l2_setup_netdev(%struct.qeth_card* %125, i32 %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %172

131:                                              ; preds = %124
  br label %160

132:                                              ; preds = %115
  %133 = call i32 (...) @rtnl_lock()
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.net_device*, %struct.net_device** %5, align 8
  %138 = call i32 @netif_carrier_on(%struct.net_device* %137)
  br label %142

139:                                              ; preds = %132
  %140 = load %struct.net_device*, %struct.net_device** %5, align 8
  %141 = call i32 @netif_carrier_off(%struct.net_device* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.net_device*, %struct.net_device** %5, align 8
  %144 = call i32 @netif_device_attach(%struct.net_device* %143)
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = call i32 @qeth_enable_hw_features(%struct.net_device* %145)
  %147 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %148 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %142
  %153 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %154 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load %struct.net_device*, %struct.net_device** %5, align 8
  %157 = call i32 @dev_open(%struct.net_device* %156, i32* null)
  br label %158

158:                                              ; preds = %152, %142
  %159 = call i32 (...) @rtnl_unlock()
  br label %160

160:                                              ; preds = %158, %131
  %161 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %162 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* @KOBJ_CHANGE, align 4
  %165 = call i32 @kobject_uevent(i32* %163, i32 %164)
  %166 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %167 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %166, i32 0, i32 1
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %170 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %169, i32 0, i32 0
  %171 = call i32 @mutex_unlock(i32* %170)
  store i32 0, i32* %2, align 4
  br label %194

172:                                              ; preds = %130, %109, %102, %26
  %173 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %174 = call i32 @qeth_l2_stop_card(%struct.qeth_card* %173)
  %175 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %176 = call i32 @CARD_DDEV(%struct.qeth_card* %175)
  %177 = call i32 @ccw_device_set_offline(i32 %176)
  %178 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %179 = call i32 @CARD_WDEV(%struct.qeth_card* %178)
  %180 = call i32 @ccw_device_set_offline(i32 %179)
  %181 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %182 = call i32 @CARD_RDEV(%struct.qeth_card* %181)
  %183 = call i32 @ccw_device_set_offline(i32 %182)
  %184 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %185 = call i32 @CARD_DDEV(%struct.qeth_card* %184)
  %186 = call i32 @qdio_free(i32 %185)
  %187 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %188 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %187, i32 0, i32 1
  %189 = call i32 @mutex_unlock(i32* %188)
  %190 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %191 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %190, i32 0, i32 0
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %172, %160
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_core_hardsetup_card(%struct.qeth_card*, i32*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i64 @qeth_is_diagass_supported(%struct.qeth_card*, i32) #1

declare dso_local i64 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_bridgeport_query_support(%struct.qeth_card*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @qeth_l2_register_dev_addr(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l2_vnicc_init(%struct.qeth_card*) #1

declare dso_local i32 @qeth_trace_features(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l2_trace_features(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l2_setup_bridgeport_attrs(%struct.qeth_card*) #1

declare dso_local i32 @qeth_print_status_message(%struct.qeth_card*) #1

declare dso_local i64 @IS_OSD(%struct.qeth_card*) #1

declare dso_local i64 @IS_OSX(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l2_start_ipassists(%struct.qeth_card*) #1

declare dso_local i32 @qeth_init_qdio_queues(%struct.qeth_card*) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_netdev_is_registered(%struct.net_device*) #1

declare dso_local i32 @qeth_l2_setup_netdev(%struct.qeth_card*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @qeth_enable_hw_features(%struct.net_device*) #1

declare dso_local i32 @dev_open(%struct.net_device*, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qeth_l2_stop_card(%struct.qeth_card*) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_WDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i32 @qdio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
