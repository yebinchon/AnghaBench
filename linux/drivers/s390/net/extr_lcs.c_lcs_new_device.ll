; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_new_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32, i32* }
%struct.lcs_card = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.net_device*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32, i32, i32*, i32, i32, %struct.lcs_card* }

@ENODEV = common dso_local global i32 0, align 4
@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"newdev\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"lcsnewdv\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dtctfail\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Detecting a network adapter for LCS devices failed with rc=%d (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"samedev\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"errinit\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c" Initialization failed\0A\00", align 1
@DEV_STATE_RECOVER = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@DEV_STATE_UP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"LCS device %s %s IPv6 support\0A\00", align 1
@LCS_IPASS_IPV6_SUPPORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"LCS device %s %s Multicast support\0A\00", align 1
@LCS_IPASS_MULTICAST_SUPPORT = common dso_local global i32 0, align 4
@LCS_MAC_LENGTH = common dso_local global i32 0, align 4
@eth_type_trans = common dso_local global i32 0, align 4
@fddi_type_trans = common dso_local global i32 0, align 4
@lcs_mc_netdev_ops = common dso_local global i32 0, align 4
@lcs_netdev_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @lcs_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_new_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.lcs_card*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  store %struct.net_device* null, %struct.net_device** %5, align 8
  %8 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %8, i32 0, i32 0
  %10 = call %struct.lcs_card* @dev_get_drvdata(i32* %9)
  store %struct.lcs_card* %10, %struct.lcs_card** %4, align 8
  %11 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %12 = icmp ne %struct.lcs_card* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %175

16:                                               ; preds = %1
  %17 = load i32, i32* @setup, align 4
  %18 = call i32 @LCS_DBF_TEXT(i32 2, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @setup, align 4
  %20 = call i32 @LCS_DBF_HEX(i32 3, i32 %19, %struct.lcs_card** %4, i32 8)
  %21 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %22 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %27 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %30 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %35 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %38 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %41 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ccw_device_set_online(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %16
  br label %172

48:                                               ; preds = %16
  %49 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %50 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ccw_device_set_online(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %166

57:                                               ; preds = %48
  %58 = load i32, i32* @setup, align 4
  %59 = call i32 @LCS_DBF_TEXT(i32 3, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %61 = call i32 @lcs_setup_card(%struct.lcs_card* %60)
  %62 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %63 = call i32 @lcs_detect(%struct.lcs_card* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load i32, i32* @setup, align 4
  %68 = call i32 @LCS_DBF_TEXT(i32 2, i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %70 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %69, i32 0, i32 0
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %75 = call i32 @lcs_stopcard(%struct.lcs_card* %74)
  br label %160

76:                                               ; preds = %57
  %77 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %78 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %77, i32 0, i32 5
  %79 = load %struct.net_device*, %struct.net_device** %78, align 8
  %80 = icmp ne %struct.net_device* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32, i32* @setup, align 4
  %83 = call i32 @LCS_DBF_TEXT(i32 2, i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @setup, align 4
  %85 = call i32 @LCS_DBF_HEX(i32 3, i32 %84, %struct.lcs_card** %4, i32 8)
  br label %94

86:                                               ; preds = %76
  %87 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %88 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %90 [
  ]

90:                                               ; preds = %86
  %91 = load i32, i32* @setup, align 4
  %92 = call i32 @LCS_DBF_TEXT(i32 3, i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %160

94:                                               ; preds = %81
  %95 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %96 = call i32 @lcs_set_allowed_threads(%struct.lcs_card* %95, i32 -1)
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @DEV_STATE_RECOVER, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %94
  %101 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %102 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %101, i32 0, i32 5
  %103 = load %struct.net_device*, %struct.net_device** %102, align 8
  %104 = call i32 @lcs_set_multicast_list(%struct.net_device* %103)
  %105 = load i32, i32* @IFF_UP, align 4
  %106 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %107 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %106, i32 0, i32 5
  %108 = load %struct.net_device*, %struct.net_device** %107, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %105
  store i32 %111, i32* %109, align 4
  %112 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %113 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %112, i32 0, i32 5
  %114 = load %struct.net_device*, %struct.net_device** %113, align 8
  %115 = call i32 @netif_carrier_on(%struct.net_device* %114)
  %116 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %117 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %116, i32 0, i32 5
  %118 = load %struct.net_device*, %struct.net_device** %117, align 8
  %119 = call i32 @netif_wake_queue(%struct.net_device* %118)
  %120 = load i32, i32* @DEV_STATE_UP, align 4
  %121 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %122 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %126

123:                                              ; preds = %94
  %124 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %125 = call i32 @lcs_stopcard(%struct.lcs_card* %124)
  br label %126

126:                                              ; preds = %123, %100
  %127 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %128 = call i64 @lcs_register_netdev(%struct.ccwgroup_device* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %160

131:                                              ; preds = %126
  %132 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %133 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %132, i32 0, i32 5
  %134 = load %struct.net_device*, %struct.net_device** %133, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %138 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @LCS_IPASS_IPV6_SUPPORT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %145 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %136, i8* %144)
  %146 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %147 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %146, i32 0, i32 5
  %148 = load %struct.net_device*, %struct.net_device** %147, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %152 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @LCS_IPASS_MULTICAST_SUPPORT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %159 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %150, i8* %158)
  store i32 0, i32* %2, align 4
  br label %175

160:                                              ; preds = %130, %90, %66
  %161 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %162 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @ccw_device_set_offline(i32 %164)
  br label %166

166:                                              ; preds = %160, %56
  %167 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %168 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ccw_device_set_offline(i32 %170)
  br label %172

172:                                              ; preds = %166, %47
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %172, %131, %13
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.lcs_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @LCS_DBF_HEX(i32, i32, %struct.lcs_card**, i32) #1

declare dso_local i32 @ccw_device_set_online(i32) #1

declare dso_local i32 @lcs_setup_card(%struct.lcs_card*) #1

declare dso_local i32 @lcs_detect(%struct.lcs_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @lcs_stopcard(%struct.lcs_card*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @lcs_set_allowed_threads(%struct.lcs_card*, i32) #1

declare dso_local i32 @lcs_set_multicast_list(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @lcs_register_netdev(%struct.ccwgroup_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
