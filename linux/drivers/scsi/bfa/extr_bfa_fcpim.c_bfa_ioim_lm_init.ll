; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_lm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_lm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_lun_mask_s = type { i32, i32, i32 }

@BFA_LUNMASK_MINCFG = common dso_local global i64 0, align 8
@MAX_LUN_MASK_CFG = common dso_local global i32 0, align 4
@BFA_IOIM_LM_UA_RESET = common dso_local global i32 0, align 4
@BFA_LP_TAG_INVALID = common dso_local global i32 0, align 4
@BFA_RPORT_TAG_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioim_lm_init(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca %struct.bfa_lun_mask_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %5 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %6 = call i64 @bfa_get_lun_mask_status(%struct.bfa_s* %5)
  %7 = load i64, i64* @BFA_LUNMASK_MINCFG, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %12 = call %struct.bfa_lun_mask_s* @bfa_get_lun_mask_list(%struct.bfa_s* %11)
  store %struct.bfa_lun_mask_s* %12, %struct.bfa_lun_mask_s** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %36, %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MAX_LUN_MASK_CFG, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32, i32* @BFA_IOIM_LM_UA_RESET, align 4
  %19 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %19, i64 %21
  %23 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %22, i32 0, i32 2
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* @BFA_LP_TAG_INVALID, align 4
  %25 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %25, i64 %27
  %29 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %28, i32 0, i32 1
  store i32 %24, i32* %29, align 4
  %30 = load i32, i32* @BFA_RPORT_TAG_INVALID, align 4
  %31 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %31, i64 %33
  %35 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %13

39:                                               ; preds = %9, %13
  ret void
}

declare dso_local i64 @bfa_get_lun_mask_status(%struct.bfa_s*) #1

declare dso_local %struct.bfa_lun_mask_s* @bfa_get_lun_mask_list(%struct.bfa_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
