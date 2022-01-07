; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_netdev_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_netdev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i64 }
%struct.net_device = type { i32, i32 }
%struct.fcoe_interface = type { i32 }
%struct.fcoe_ctlr = type { i32 }
%struct.fcoe_port = type { i32, i64, i32, %struct.fcoe_interface* }

@NETIF_F_FCOE_MTU = common dso_local global i32 0, align 4
@FCOE_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Supports FCOE_MTU of %d bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fcoe_queue_timer = common dso_local global i32 0, align 4
@NETDEV_FCOE_WWNN = common dso_local global i32 0, align 4
@NETDEV_FCOE_WWPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.net_device*)* @fcoe_netdev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_netdev_config(%struct.fc_lport* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fcoe_interface*, align 8
  %10 = alloca %struct.fcoe_ctlr*, align 8
  %11 = alloca %struct.fcoe_port*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %13 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %12)
  store %struct.fcoe_port* %13, %struct.fcoe_port** %11, align 8
  %14 = load %struct.fcoe_port*, %struct.fcoe_port** %11, align 8
  %15 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %14, i32 0, i32 3
  %16 = load %struct.fcoe_interface*, %struct.fcoe_interface** %15, align 8
  store %struct.fcoe_interface* %16, %struct.fcoe_interface** %9, align 8
  %17 = load %struct.fcoe_interface*, %struct.fcoe_interface** %9, align 8
  %18 = call %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface* %17)
  store %struct.fcoe_ctlr* %18, %struct.fcoe_ctlr** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i64 @is_vlan_dev(%struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i64 @vlan_dev_vlan_id(%struct.net_device* %23)
  %25 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NETIF_F_FCOE_MTU, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load i32, i32* @FCOE_MTU, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @FCOE_NETDEV_DBG(%struct.net_device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %30
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @fc_set_mfs(%struct.fc_lport* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %104

57:                                               ; preds = %45
  %58 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = call i32 @fcoe_netdev_features_change(%struct.fc_lport* %58, %struct.net_device* %59)
  %61 = load %struct.fcoe_port*, %struct.fcoe_port** %11, align 8
  %62 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %61, i32 0, i32 2
  %63 = call i32 @skb_queue_head_init(i32* %62)
  %64 = load %struct.fcoe_port*, %struct.fcoe_port** %11, align 8
  %65 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.fcoe_port*, %struct.fcoe_port** %11, align 8
  %67 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %66, i32 0, i32 0
  %68 = load i32, i32* @fcoe_queue_timer, align 4
  %69 = call i32 @timer_setup(i32* %67, i32 %68, i32 0)
  %70 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %71 = call i32 @fcoe_link_speed_update(%struct.fc_lport* %70)
  %72 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %73 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %103, label %76

76:                                               ; preds = %57
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = load i32, i32* @NETDEV_FCOE_WWNN, align 4
  %79 = call i64 @fcoe_get_wwn(%struct.net_device* %77, i32* %7, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %10, align 8
  %83 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @fcoe_wwn_from_mac(i32 %84, i32 1, i32 0)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @fc_set_wwnn(%struct.fc_lport* %87, i32 %88)
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = load i32, i32* @NETDEV_FCOE_WWPN, align 4
  %92 = call i64 @fcoe_get_wwn(%struct.net_device* %90, i32* %8, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %10, align 8
  %96 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @fcoe_wwn_from_mac(i32 %97, i32 2, i32 0)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %94, %86
  %100 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @fc_set_wwpn(%struct.fc_lport* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %57
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %54
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface*) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i64 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i32 @FCOE_NETDEV_DBG(%struct.net_device*, i8*, i32) #1

declare dso_local i64 @fc_set_mfs(%struct.fc_lport*, i32) #1

declare dso_local i32 @fcoe_netdev_features_change(%struct.fc_lport*, %struct.net_device*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @fcoe_link_speed_update(%struct.fc_lport*) #1

declare dso_local i64 @fcoe_get_wwn(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @fcoe_wwn_from_mac(i32, i32, i32) #1

declare dso_local i32 @fc_set_wwnn(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_set_wwpn(%struct.fc_lport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
