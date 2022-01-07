; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_port_del_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_port_del_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethsw_port_priv = type { i32*, i32, %struct.net_device*, %struct.ethsw_core* }
%struct.net_device = type { i32 }
%struct.ethsw_core = type { i32*, %struct.TYPE_4__**, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.dpsw_vlan_if_cfg = type { i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@ETHSW_VLAN_PVID = common dso_local global i32 0, align 4
@ETHSW_VLAN_UNTAGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dpsw_vlan_remove_if_untagged err %d\0A\00", align 1
@ETHSW_VLAN_MEMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"dpsw_vlan_remove_if err %d\0A\00", align 1
@ETHSW_VLAN_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethsw_port_priv*, i64)* @ethsw_port_del_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_port_del_vlan(%struct.ethsw_port_priv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethsw_port_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ethsw_core*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.dpsw_vlan_if_cfg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ethsw_port_priv* %0, %struct.ethsw_port_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %11, i32 0, i32 3
  %13 = load %struct.ethsw_core*, %struct.ethsw_core** %12, align 8
  store %struct.ethsw_core* %13, %struct.ethsw_core** %6, align 8
  %14 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %14, i32 0, i32 2
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %170

27:                                               ; preds = %2
  %28 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %29 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ETHSW_VLAN_PVID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %39 = call i32 @ethsw_port_set_pvid(%struct.ethsw_port_priv* %38, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %170

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %27
  %46 = getelementptr inbounds %struct.dpsw_vlan_if_cfg, %struct.dpsw_vlan_if_cfg* %8, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.dpsw_vlan_if_cfg, %struct.dpsw_vlan_if_cfg* %8, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %54 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ETHSW_VLAN_UNTAGGED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %45
  %63 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %64 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %67 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @dpsw_vlan_remove_if_untagged(i32 %65, i32 0, i32 %68, i64 %69, %struct.dpsw_vlan_if_cfg* %8)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @netdev_err(%struct.net_device* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %62
  %78 = load i32, i32* @ETHSW_VLAN_UNTAGGED, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %81 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %79
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %77, %45
  %88 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %89 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ETHSW_VLAN_MEMBER, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %169

97:                                               ; preds = %87
  %98 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %99 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %102 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @dpsw_vlan_remove_if(i32 %100, i32 0, i32 %103, i64 %104, %struct.dpsw_vlan_if_cfg* %8)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load %struct.net_device*, %struct.net_device** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @netdev_err(%struct.net_device* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %170

113:                                              ; preds = %97
  %114 = load i32, i32* @ETHSW_VLAN_MEMBER, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %117 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %5, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %115
  store i32 %122, i32* %120, align 4
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %148, %113
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %126 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %123
  %131 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %132 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %133, i64 %135
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ETHSW_VLAN_MEMBER, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %170

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %123

151:                                              ; preds = %123
  %152 = load i32, i32* @ETHSW_VLAN_GLOBAL, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %155 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %5, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %153
  store i32 %160, i32* %158, align 4
  %161 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %162 = load i64, i64* %5, align 8
  %163 = call i32 @ethsw_dellink_switch(%struct.ethsw_core* %161, i64 %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %151
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %3, align 4
  br label %170

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %168, %87
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %166, %146, %108, %42, %24
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @ethsw_port_set_pvid(%struct.ethsw_port_priv*, i32) #1

declare dso_local i32 @dpsw_vlan_remove_if_untagged(i32, i32, i32, i64, %struct.dpsw_vlan_if_cfg*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @dpsw_vlan_remove_if(i32, i32, i32, i64, %struct.dpsw_vlan_if_cfg*) #1

declare dso_local i32 @ethsw_dellink_switch(%struct.ethsw_core*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
