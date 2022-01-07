; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ethboot_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ethboot_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_bsg_ethboot_s = type { i64, i32 }
%struct.bfad_hal_comp = type { i64, i32 }

@BFA_FLASH_PART_PXECFG = common dso_local global i32 0, align 4
@bfad_hcb_comp = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_ethboot_cfg(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_ethboot_s*, align 8
  %6 = alloca %struct.bfad_hal_comp, align 8
  %7 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bfa_bsg_ethboot_s*
  store %struct.bfa_bsg_ethboot_s* %9, %struct.bfa_bsg_ethboot_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 1
  %18 = call i32 @BFA_FLASH(%struct.TYPE_4__* %17)
  %19 = load i32, i32* @BFA_FLASH_PART_PXECFG, align 4
  %20 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bfa_bsg_ethboot_s*, %struct.bfa_bsg_ethboot_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_bsg_ethboot_s, %struct.bfa_bsg_ethboot_s* %25, i32 0, i32 1
  %27 = load i32, i32* @bfad_hcb_comp, align 4
  %28 = call i64 @bfa_flash_update_part(i32 %18, i32 %19, i32 %24, i32* %26, i32 4, i32 0, i32 %27, %struct.bfad_hal_comp* %6)
  %29 = load %struct.bfa_bsg_ethboot_s*, %struct.bfa_bsg_ethboot_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_bsg_ethboot_s, %struct.bfa_bsg_ethboot_s* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.bfa_bsg_ethboot_s*, %struct.bfa_bsg_ethboot_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfa_bsg_ethboot_s, %struct.bfa_bsg_ethboot_s* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BFA_STATUS_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %48

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %43 = call i32 @wait_for_completion(i32* %42)
  %44 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.bfa_bsg_ethboot_s*, %struct.bfa_bsg_ethboot_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_bsg_ethboot_s, %struct.bfa_bsg_ethboot_s* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %41, %40
  ret i32 0
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_flash_update_part(i32, i32, i32, i32*, i32, i32, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @BFA_FLASH(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
