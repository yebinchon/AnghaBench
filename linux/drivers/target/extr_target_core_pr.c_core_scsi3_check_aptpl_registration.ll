; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_scsi3_check_aptpl_registration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_core_scsi3_check_aptpl_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.se_portal_group = type { i32 }
%struct.se_lun = type { i32 }
%struct.se_node_acl = type { i32 }

@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_scsi3_check_aptpl_registration(%struct.se_device* %0, %struct.se_portal_group* %1, %struct.se_lun* %2, %struct.se_node_acl* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.se_device*, align 8
  %8 = alloca %struct.se_portal_group*, align 8
  %9 = alloca %struct.se_lun*, align 8
  %10 = alloca %struct.se_node_acl*, align 8
  %11 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %7, align 8
  store %struct.se_portal_group* %1, %struct.se_portal_group** %8, align 8
  store %struct.se_lun* %2, %struct.se_lun** %9, align 8
  store %struct.se_node_acl* %3, %struct.se_node_acl** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.se_device*, %struct.se_device** %7, align 8
  %13 = getelementptr inbounds %struct.se_device, %struct.se_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %29

19:                                               ; preds = %5
  %20 = load %struct.se_device*, %struct.se_device** %7, align 8
  %21 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %22 = load %struct.se_lun*, %struct.se_lun** %9, align 8
  %23 = load %struct.se_lun*, %struct.se_lun** %9, align 8
  %24 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.se_node_acl*, %struct.se_node_acl** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @__core_scsi3_check_aptpl_registration(%struct.se_device* %20, %struct.se_portal_group* %21, %struct.se_lun* %22, i32 %25, %struct.se_node_acl* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %19, %18
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @__core_scsi3_check_aptpl_registration(%struct.se_device*, %struct.se_portal_group*, %struct.se_lun*, i32, %struct.se_node_acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
