; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_inta_msi.c_ti_sci_inta_msi_update_chip_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_inta_msi.c_ti_sci_inta_msi_update_chip_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_domain_info = type { %struct.irq_chip* }
%struct.irq_chip = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@irq_chip_request_resources_parent = common dso_local global i32 0, align 4
@irq_chip_release_resources_parent = common dso_local global i32 0, align 4
@ti_sci_inta_msi_compose_msi_msg = common dso_local global i32 0, align 4
@ti_sci_inta_msi_write_msg = common dso_local global i32 0, align 4
@irq_chip_set_type_parent = common dso_local global i32 0, align 4
@irq_chip_unmask_parent = common dso_local global i32 0, align 4
@irq_chip_mask_parent = common dso_local global i32 0, align 4
@irq_chip_ack_parent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_domain_info*)* @ti_sci_inta_msi_update_chip_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sci_inta_msi_update_chip_ops(%struct.msi_domain_info* %0) #0 {
  %2 = alloca %struct.msi_domain_info*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  store %struct.msi_domain_info* %0, %struct.msi_domain_info** %2, align 8
  %4 = load %struct.msi_domain_info*, %struct.msi_domain_info** %2, align 8
  %5 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %4, i32 0, i32 0
  %6 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  store %struct.irq_chip* %6, %struct.irq_chip** %3, align 8
  %7 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %8 = icmp ne %struct.irq_chip* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load i32, i32* @irq_chip_request_resources_parent, align 4
  %16 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %17 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @irq_chip_release_resources_parent, align 4
  %19 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %20 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ti_sci_inta_msi_compose_msi_msg, align 4
  %22 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %23 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ti_sci_inta_msi_write_msg, align 4
  %25 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %26 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @irq_chip_set_type_parent, align 4
  %28 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %29 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @irq_chip_unmask_parent, align 4
  %31 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %32 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @irq_chip_mask_parent, align 4
  %34 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %35 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @irq_chip_ack_parent, align 4
  %37 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %38 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
