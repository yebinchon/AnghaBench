; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_ethtool.c_qeth_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_ethtool.c_qeth_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i64, i64, i32 }
%struct.carrier_info = type { i32, i32, i32 }

@DUPLEX_FULL = common dso_local global i8* null, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@ETH_TP_MDI_INVALID = common dso_local global i8* null, align 8
@SPEED_100 = common dso_local global i8* null, align 8
@PORT_TP = common dso_local global i8* null, align 8
@SPEED_1000 = common dso_local global i8* null, align 8
@PORT_FIBRE = common dso_local global i8* null, align 8
@SPEED_10000 = common dso_local global i8* null, align 8
@SPEED_25000 = common dso_local global i8* null, align 8
@SPEED_10 = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"card info: card_type=0x%02x, port_mode=0x%04x, port_speed=0x%08x\0A\00", align 1
@DUPLEX_HALF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @qeth_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.carrier_info, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  store %struct.qeth_card* %12, %struct.qeth_card** %6, align 8
  %13 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %14 = call i64 @IS_IQD(%struct.qeth_card* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %18 = call i64 @IS_VM_NIC(%struct.qeth_card* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %2
  store i32 133, i32* %7, align 4
  br label %26

21:                                               ; preds = %16
  %22 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %20
  %27 = load i8*, i8** @DUPLEX_FULL, align 8
  %28 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @AUTONEG_ENABLE, align 4
  %32 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 7
  store i32 %31, i32* %34, align 8
  %35 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load i8*, i8** @ETH_TP_MDI_INVALID, align 8
  %42 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** @ETH_TP_MDI_INVALID, align 8
  %46 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i8* %45, i8** %48, align 8
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %86 [
    i32 131, label %50
    i32 129, label %50
    i32 130, label %59
    i32 128, label %59
    i32 133, label %68
    i32 132, label %77
  ]

50:                                               ; preds = %26, %26
  %51 = load i8*, i8** @SPEED_100, align 8
  %52 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load i8*, i8** @PORT_TP, align 8
  %56 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  br label %95

59:                                               ; preds = %26, %26
  %60 = load i8*, i8** @SPEED_1000, align 8
  %61 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** @PORT_FIBRE, align 8
  %65 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i8* %64, i8** %67, align 8
  br label %95

68:                                               ; preds = %26
  %69 = load i8*, i8** @SPEED_10000, align 8
  %70 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load i8*, i8** @PORT_FIBRE, align 8
  %74 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  br label %95

77:                                               ; preds = %26
  %78 = load i8*, i8** @SPEED_25000, align 8
  %79 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** @PORT_FIBRE, align 8
  %83 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i8* %82, i8** %85, align 8
  br label %95

86:                                               ; preds = %26
  %87 = load i8*, i8** @SPEED_10, align 8
  %88 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** @PORT_TP, align 8
  %92 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %86, %77, %68, %59, %50
  %96 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %97 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %98 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @qeth_set_cmd_adv_sup(%struct.ethtool_link_ksettings* %96, i8* %100, i8* %104)
  %106 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %107 = call i32 @qeth_query_card_info(%struct.qeth_card* %106, %struct.carrier_info* %8)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @EOPNOTSUPP, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %207

113:                                              ; preds = %95
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %207

118:                                              ; preds = %113
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = getelementptr inbounds %struct.carrier_info, %struct.carrier_info* %8, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.carrier_info, %struct.carrier_info* %8, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.carrier_info, %struct.carrier_info* %8, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @netdev_dbg(%struct.net_device* %119, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %123, i32 %125)
  %127 = getelementptr inbounds %struct.carrier_info, %struct.carrier_info* %8, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %165 [
    i32 137, label %129
    i32 136, label %129
    i32 135, label %141
    i32 134, label %141
    i32 139, label %153
    i32 138, label %153
  ]

129:                                              ; preds = %118, %118
  %130 = load i8*, i8** @PORT_TP, align 8
  %131 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %132 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  store i8* %130, i8** %133, align 8
  %134 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %135 = load i8*, i8** @SPEED_1000, align 8
  %136 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %137 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @qeth_set_cmd_adv_sup(%struct.ethtool_link_ksettings* %134, i8* %135, i8* %139)
  br label %165

141:                                              ; preds = %118, %118
  %142 = load i8*, i8** @PORT_FIBRE, align 8
  %143 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %144 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  store i8* %142, i8** %145, align 8
  %146 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %147 = load i8*, i8** @SPEED_1000, align 8
  %148 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %149 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @qeth_set_cmd_adv_sup(%struct.ethtool_link_ksettings* %146, i8* %147, i8* %151)
  br label %165

153:                                              ; preds = %118, %118
  %154 = load i8*, i8** @PORT_FIBRE, align 8
  %155 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %156 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  store i8* %154, i8** %157, align 8
  %158 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %159 = load i8*, i8** @SPEED_10000, align 8
  %160 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %161 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @qeth_set_cmd_adv_sup(%struct.ethtool_link_ksettings* %158, i8* %159, i8* %163)
  br label %165

165:                                              ; preds = %118, %153, %141, %129
  %166 = getelementptr inbounds %struct.carrier_info, %struct.carrier_info* %8, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  switch i32 %167, label %178 [
    i32 146, label %168
    i32 145, label %173
  ]

168:                                              ; preds = %165
  %169 = load i8*, i8** @DUPLEX_FULL, align 8
  %170 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %171 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  store i8* %169, i8** %172, align 8
  br label %178

173:                                              ; preds = %165
  %174 = load i8*, i8** @DUPLEX_HALF, align 8
  %175 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %176 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i8* %174, i8** %177, align 8
  br label %178

178:                                              ; preds = %165, %173, %168
  %179 = getelementptr inbounds %struct.carrier_info, %struct.carrier_info* %8, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  switch i32 %180, label %206 [
    i32 142, label %181
    i32 144, label %186
    i32 141, label %191
    i32 143, label %196
    i32 140, label %201
  ]

181:                                              ; preds = %178
  %182 = load i8*, i8** @SPEED_10, align 8
  %183 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %184 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i8* %182, i8** %185, align 8
  br label %206

186:                                              ; preds = %178
  %187 = load i8*, i8** @SPEED_100, align 8
  %188 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %189 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  store i8* %187, i8** %190, align 8
  br label %206

191:                                              ; preds = %178
  %192 = load i8*, i8** @SPEED_1000, align 8
  %193 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %194 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i8* %192, i8** %195, align 8
  br label %206

196:                                              ; preds = %178
  %197 = load i8*, i8** @SPEED_10000, align 8
  %198 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %199 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  store i8* %197, i8** %200, align 8
  br label %206

201:                                              ; preds = %178
  %202 = load i8*, i8** @SPEED_25000, align 8
  %203 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %204 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  store i8* %202, i8** %205, align 8
  br label %206

206:                                              ; preds = %178, %201, %196, %191, %186, %181
  store i32 0, i32* %3, align 4
  br label %207

207:                                              ; preds = %206, %116, %112
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i64 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local i32 @qeth_set_cmd_adv_sup(%struct.ethtool_link_ksettings*, i8*, i8*) #1

declare dso_local i32 @qeth_query_card_info(%struct.qeth_card*, %struct.carrier_info*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
