; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_lm_set_ua.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_lm_set_ua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_lun_mask_s = type { i64, i32 }

@MAX_LUN_MASK_CFG = common dso_local global i32 0, align 4
@BFA_IOIM_LUN_MASK_ACTIVE = common dso_local global i64 0, align 8
@BFA_IOIM_LM_UA_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*)* @bfa_ioim_lm_set_ua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_lm_set_ua(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca %struct.bfa_lun_mask_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %5 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %6 = call %struct.bfa_lun_mask_s* @bfa_get_lun_mask_list(%struct.bfa_s* %5)
  store %struct.bfa_lun_mask_s* %6, %struct.bfa_lun_mask_s** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAX_LUN_MASK_CFG, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %12, i64 %14
  %16 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BFA_IOIM_LUN_MASK_ACTIVE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %28

21:                                               ; preds = %11
  %22 = load i32, i32* @BFA_IOIM_LM_UA_SET, align 4
  %23 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %23, i64 %25
  %27 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %26, i32 0, i32 1
  store i32 %22, i32* %27, align 8
  br label %28

28:                                               ; preds = %21, %20
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %7

31:                                               ; preds = %7
  ret void
}

declare dso_local %struct.bfa_lun_mask_s* @bfa_get_lun_mask_list(%struct.bfa_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
