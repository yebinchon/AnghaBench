; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_add_vlan_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_add_vlan_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smcd_dev = type { %struct.ism_dev* }
%struct.ism_dev = type { i32 }
%union.ism_set_vlan_id = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ISM_ADD_VLAN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smcd_dev*, i32)* @ism_add_vlan_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_add_vlan_id(%struct.smcd_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.smcd_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ism_dev*, align 8
  %6 = alloca %union.ism_set_vlan_id, align 4
  store %struct.smcd_dev* %0, %struct.smcd_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.smcd_dev*, %struct.smcd_dev** %3, align 8
  %8 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %7, i32 0, i32 0
  %9 = load %struct.ism_dev*, %struct.ism_dev** %8, align 8
  store %struct.ism_dev* %9, %struct.ism_dev** %5, align 8
  %10 = call i32 @memset(%union.ism_set_vlan_id* %6, i32 0, i32 12)
  %11 = load i32, i32* @ISM_ADD_VLAN_ID, align 4
  %12 = bitcast %union.ism_set_vlan_id* %6 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = bitcast %union.ism_set_vlan_id* %6 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 12, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = bitcast %union.ism_set_vlan_id* %6 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %22 = call i32 @ism_cmd(%struct.ism_dev* %21, %union.ism_set_vlan_id* %6)
  ret i32 %22
}

declare dso_local i32 @memset(%union.ism_set_vlan_id*, i32, i32) #1

declare dso_local i32 @ism_cmd(%struct.ism_dev*, %union.ism_set_vlan_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
