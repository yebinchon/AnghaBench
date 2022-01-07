; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_dev_del_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_dev_del_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.se_portal_group*)* }
%struct.se_lun = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"%s_TPG[%u]_LUN[%llu] - Deactivating %s Logical Unit from device object\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_dev_del_lun(%struct.se_portal_group* %0, %struct.se_lun* %1) #0 {
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.se_lun*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %3, align 8
  store %struct.se_lun* %1, %struct.se_lun** %4, align 8
  %5 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %6 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %11 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %13, align 8
  %15 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %16 = call i32 %14(%struct.se_portal_group* %15)
  %17 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %18 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %21 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %16, i32 %19, i32 %24)
  %26 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %27 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %28 = call i32 @core_tpg_remove_lun(%struct.se_portal_group* %26, %struct.se_lun* %27)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @core_tpg_remove_lun(%struct.se_portal_group*, %struct.se_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
