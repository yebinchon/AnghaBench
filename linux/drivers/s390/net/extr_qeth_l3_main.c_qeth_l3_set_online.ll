; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_set_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qeth_card = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"setonlin\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"2err%04x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@QETH_DIAGS_CMD_TRAP = common dso_local global i32 0, align 4
@QETH_DIAGS_TRAP_ARM = common dso_local global i32 0, align 4
@CARD_STATE_HARDSETUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"softsetp\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"3err%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"4err%04x\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"5err%04x\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"6err%d\00", align 1
@CARD_STATE_SOFTSETUP = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @qeth_l3_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_set_online(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %8 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %8, i32 0, i32 0
  %10 = call %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_6__* %9)
  store %struct.qeth_card* %10, %struct.qeth_card** %4, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 5
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
  br label %179

32:                                               ; preds = %1
  %33 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %34 = load i32, i32* @QETH_DIAGS_CMD_TRAP, align 4
  %35 = call i64 @qeth_is_diagass_supported(%struct.qeth_card* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
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
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %43, %37
  br label %57

53:                                               ; preds = %32
  %54 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i32, i32* @CARD_STATE_HARDSETUP, align 4
  %59 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %60 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %62 = call i32 @qeth_print_status_message(%struct.qeth_card* %61)
  %63 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %64 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %63, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %66 = call i32 @qeth_l3_setadapter_parms(%struct.qeth_card* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %70, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %57
  %74 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %107, label %79

79:                                               ; preds = %73
  %80 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %81 = call i32 @qeth_l3_start_ipassists(%struct.qeth_card* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %85, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %179

88:                                               ; preds = %79
  %89 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %90 = call i32 @qeth_l3_setrouting_v4(%struct.qeth_card* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %94, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %99 = call i32 @qeth_l3_setrouting_v6(%struct.qeth_card* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %103, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %97
  br label %107

107:                                              ; preds = %106, %73
  %108 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %109 = call i32 @qeth_init_qdio_queues(%struct.qeth_card* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %113, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %179

118:                                              ; preds = %107
  %119 = load i32, i32* @CARD_STATE_SOFTSETUP, align 4
  %120 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %121 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %123 = call i32 @qeth_set_allowed_threads(%struct.qeth_card* %122, i32 -1, i32 0)
  %124 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %125 = call i32 @qeth_l3_recover_ip(%struct.qeth_card* %124)
  %126 = load %struct.net_device*, %struct.net_device** %5, align 8
  %127 = call i32 @qeth_netdev_is_registered(%struct.net_device* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %118
  %130 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @qeth_l3_setup_netdev(%struct.qeth_card* %130, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %179

136:                                              ; preds = %129
  br label %165

137:                                              ; preds = %118
  %138 = call i32 (...) @rtnl_lock()
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.net_device*, %struct.net_device** %5, align 8
  %143 = call i32 @netif_carrier_on(%struct.net_device* %142)
  br label %147

144:                                              ; preds = %137
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = call i32 @netif_carrier_off(%struct.net_device* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = call i32 @netif_device_attach(%struct.net_device* %148)
  %150 = load %struct.net_device*, %struct.net_device** %5, align 8
  %151 = call i32 @qeth_enable_hw_features(%struct.net_device* %150)
  %152 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %153 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %159 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  store i64 0, i64* %160, align 8
  %161 = load %struct.net_device*, %struct.net_device** %5, align 8
  %162 = call i32 @dev_open(%struct.net_device* %161, i32* null)
  br label %163

163:                                              ; preds = %157, %147
  %164 = call i32 (...) @rtnl_unlock()
  br label %165

165:                                              ; preds = %163, %136
  %166 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %167 = call i32 @qeth_trace_features(%struct.qeth_card* %166)
  %168 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %169 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* @KOBJ_CHANGE, align 4
  %172 = call i32 @kobject_uevent(i32* %170, i32 %171)
  %173 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %174 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %173, i32 0, i32 1
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %177 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %176, i32 0, i32 0
  %178 = call i32 @mutex_unlock(i32* %177)
  store i32 0, i32* %2, align 4
  br label %201

179:                                              ; preds = %135, %112, %84, %26
  %180 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %181 = call i32 @qeth_l3_stop_card(%struct.qeth_card* %180)
  %182 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %183 = call i32 @CARD_DDEV(%struct.qeth_card* %182)
  %184 = call i32 @ccw_device_set_offline(i32 %183)
  %185 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %186 = call i32 @CARD_WDEV(%struct.qeth_card* %185)
  %187 = call i32 @ccw_device_set_offline(i32 %186)
  %188 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %189 = call i32 @CARD_RDEV(%struct.qeth_card* %188)
  %190 = call i32 @ccw_device_set_offline(i32 %189)
  %191 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %192 = call i32 @CARD_DDEV(%struct.qeth_card* %191)
  %193 = call i32 @qdio_free(i32 %192)
  %194 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %195 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %194, i32 0, i32 1
  %196 = call i32 @mutex_unlock(i32* %195)
  %197 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %198 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %197, i32 0, i32 0
  %199 = call i32 @mutex_unlock(i32* %198)
  %200 = load i32, i32* %6, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %179, %165
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_core_hardsetup_card(%struct.qeth_card*, i32*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i64 @qeth_is_diagass_supported(%struct.qeth_card*, i32) #1

declare dso_local i64 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_print_status_message(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_setadapter_parms(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_start_ipassists(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_setrouting_v4(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_setrouting_v6(%struct.qeth_card*) #1

declare dso_local i32 @qeth_init_qdio_queues(%struct.qeth_card*) #1

declare dso_local i32 @qeth_set_allowed_threads(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_l3_recover_ip(%struct.qeth_card*) #1

declare dso_local i32 @qeth_netdev_is_registered(%struct.net_device*) #1

declare dso_local i32 @qeth_l3_setup_netdev(%struct.qeth_card*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @qeth_enable_hw_features(%struct.net_device*) #1

declare dso_local i32 @dev_open(%struct.net_device*, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qeth_trace_features(%struct.qeth_card*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qeth_l3_stop_card(%struct.qeth_card*) #1

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
