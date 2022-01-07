; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_link_speed_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_link_speed_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@FC_PORTSPEED_1GBIT = common dso_local global i32 0, align 4
@FC_PORTSPEED_10GBIT = common dso_local global i32 0, align 4
@FC_PORTSPEED_20GBIT = common dso_local global i32 0, align 4
@FC_PORTSPEED_40GBIT = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseKX_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKX4_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseKR_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseR_FEC = common dso_local global i32 0, align 4
@SUPPORTED_20000baseMLD2_Full = common dso_local global i32 0, align 4
@SUPPORTED_20000baseKR2_Full = common dso_local global i32 0, align 4
@SUPPORTED_40000baseKR4_Full = common dso_local global i32 0, align 4
@SUPPORTED_40000baseCR4_Full = common dso_local global i32 0, align 4
@SUPPORTED_40000baseSR4_Full = common dso_local global i32 0, align 4
@SUPPORTED_40000baseLR4_Full = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcoe_link_speed_update(%struct.fc_lport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %7 = call %struct.net_device* @fcoe_get_netdev(%struct.fc_lport* %6)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call i32 @__ethtool_get_link_ksettings(%struct.net_device* %8, %struct.ethtool_link_ksettings* %5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %108, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @FC_PORTSPEED_1GBIT, align 4
  %13 = load i32, i32* @FC_PORTSPEED_10GBIT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FC_PORTSPEED_20GBIT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FC_PORTSPEED_40GBIT, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %21 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %30 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SUPPORTED_1000baseKX_Full, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %28, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %11
  %37 = load i32, i32* @FC_PORTSPEED_1GBIT, align 4
  %38 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %11
  %43 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %49 = load i32, i32* @SUPPORTED_10000baseKX4_Full, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SUPPORTED_10000baseKR_Full, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SUPPORTED_10000baseR_FEC, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %47, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load i32, i32* @FC_PORTSPEED_10GBIT, align 4
  %59 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %60 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %42
  %64 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SUPPORTED_20000baseMLD2_Full, align 4
  %70 = load i32, i32* @SUPPORTED_20000baseKR2_Full, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load i32, i32* @FC_PORTSPEED_20GBIT, align 4
  %76 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %77 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %63
  %81 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SUPPORTED_40000baseKR4_Full, align 4
  %87 = load i32, i32* @SUPPORTED_40000baseCR4_Full, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @SUPPORTED_40000baseSR4_Full, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @SUPPORTED_40000baseLR4_Full, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %85, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %80
  %96 = load i32, i32* @FC_PORTSPEED_40GBIT, align 4
  %97 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %98 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %80
  %102 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @eth2fc_speed(i32 %104)
  %106 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %107 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  store i32 0, i32* %2, align 4
  br label %109

108:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %101
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.net_device* @fcoe_get_netdev(%struct.fc_lport*) #1

declare dso_local i32 @__ethtool_get_link_ksettings(%struct.net_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @eth2fc_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
