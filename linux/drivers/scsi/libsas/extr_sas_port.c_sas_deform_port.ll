; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_port.c_sas_deform_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_port.c_sas_deform_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_phy = type { i32, %struct.asd_sas_port*, i32, i32, %struct.sas_ha_struct* }
%struct.asd_sas_port = type { i32, i32, i32*, i32, i64, i64, i64, i64, i32, i32, i32, %struct.domain_device* }
%struct.domain_device = type { %struct.expander_device, i32, i32 }
%struct.expander_device = type { i32 }
%struct.sas_ha_struct = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sas_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.asd_sas_phy*)* }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@DISCE_REVALIDATE_DOMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_deform_port(%struct.asd_sas_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_sas_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.asd_sas_port*, align 8
  %7 = alloca %struct.sas_internal*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.expander_device*, align 8
  store %struct.asd_sas_phy* %0, %struct.asd_sas_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %12 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %11, i32 0, i32 4
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  store %struct.sas_ha_struct* %13, %struct.sas_ha_struct** %5, align 8
  %14 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %15 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %14, i32 0, i32 1
  %16 = load %struct.asd_sas_port*, %struct.asd_sas_port** %15, align 8
  store %struct.asd_sas_port* %16, %struct.asd_sas_port** %6, align 8
  %17 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %18 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.sas_internal* @to_sas_internal(i32 %22)
  store %struct.sas_internal* %23, %struct.sas_internal** %7, align 8
  %24 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %25 = icmp ne %struct.asd_sas_port* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %173

27:                                               ; preds = %2
  %28 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %29 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %28, i32 0, i32 11
  %30 = load %struct.domain_device*, %struct.domain_device** %29, align 8
  store %struct.domain_device* %30, %struct.domain_device** %8, align 8
  %31 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %32 = icmp ne %struct.domain_device* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %35 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %40 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @sas_unregister_domain_devices(%struct.asd_sas_port* %44, i32 %45)
  %47 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %48 = call i32 @sas_destruct_devices(%struct.asd_sas_port* %47)
  %49 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %50 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @sas_port_delete(i32* %51)
  %53 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %54 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  br label %68

55:                                               ; preds = %38
  %56 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %57 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %60 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sas_port_delete_phy(i32* %58, i32 %61)
  %63 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %64 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %65 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @sas_device_set_phy(%struct.domain_device* %63, i32* %66)
  br label %68

68:                                               ; preds = %55, %43
  %69 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %70 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (%struct.asd_sas_phy*)*, i32 (%struct.asd_sas_phy*)** %72, align 8
  %74 = icmp ne i32 (%struct.asd_sas_phy*)* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %77 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32 (%struct.asd_sas_phy*)*, i32 (%struct.asd_sas_phy*)** %79, align 8
  %81 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %82 = call i32 %80(%struct.asd_sas_phy* %81)
  br label %83

83:                                               ; preds = %75, %68
  %84 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %85 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %84, i32 0, i32 1
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %89 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %88, i32 0, i32 3
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %92 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %91, i32 0, i32 2
  %93 = call i32 @list_del_init(i32* %92)
  %94 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %95 = call i32 @sas_phy_set_target(%struct.asd_sas_phy* %94, i32* null)
  %96 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %97 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %96, i32 0, i32 1
  store %struct.asd_sas_port* null, %struct.asd_sas_port** %97, align 8
  %98 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %99 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 8
  %102 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %3, align 8
  %103 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 1, %104
  %106 = xor i32 %105, -1
  %107 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %108 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %112 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %83
  %116 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %117 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %116, i32 0, i32 10
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %120 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %123 = call i32 @memset(i32 %121, i32 0, i32 %122)
  %124 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %125 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %128 = call i32 @memset(i32 %126, i32 0, i32 %127)
  %129 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %130 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %129, i32 0, i32 7
  store i64 0, i64* %130, align 8
  %131 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %132 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %131, i32 0, i32 6
  store i64 0, i64* %132, align 8
  %133 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %134 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %136 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  %137 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %138 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %115, %83
  %140 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %141 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %140, i32 0, i32 3
  %142 = call i32 @spin_unlock(i32* %141)
  %143 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %144 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %143, i32 0, i32 1
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  %147 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %148 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %168

151:                                              ; preds = %139
  %152 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %153 = icmp ne %struct.domain_device* %152, null
  br i1 %153, label %154, label %168

154:                                              ; preds = %151
  %155 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %156 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @dev_is_expander(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %162 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %161, i32 0, i32 0
  store %struct.expander_device* %162, %struct.expander_device** %10, align 8
  %163 = load %struct.expander_device*, %struct.expander_device** %10, align 8
  %164 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %163, i32 0, i32 0
  store i32 -1, i32* %164, align 4
  %165 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %166 = load i32, i32* @DISCE_REVALIDATE_DOMAIN, align 4
  %167 = call i32 @sas_discover_event(%struct.asd_sas_port* %165, i32 %166)
  br label %168

168:                                              ; preds = %160, %154, %151, %139
  %169 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %170 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @flush_workqueue(i32 %171)
  br label %173

173:                                              ; preds = %168, %26
  ret void
}

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @sas_unregister_domain_devices(%struct.asd_sas_port*, i32) #1

declare dso_local i32 @sas_destruct_devices(%struct.asd_sas_port*) #1

declare dso_local i32 @sas_port_delete(i32*) #1

declare dso_local i32 @sas_port_delete_phy(i32*, i32) #1

declare dso_local i32 @sas_device_set_phy(%struct.domain_device*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @sas_phy_set_target(%struct.asd_sas_phy*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i32 @sas_discover_event(%struct.asd_sas_port*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
