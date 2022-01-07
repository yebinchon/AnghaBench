; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_fcpim_lunmask_rp_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_fcpim_lunmask_rp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_lun_mask_s = type { i64, i64, i64, i64, i32 }

@BFA_LUNMASK_MINCFG = common dso_local global i64 0, align 8
@MAX_LUN_MASK_CFG = common dso_local global i64 0, align 8
@BFA_IOIM_LUN_MASK_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcpim_lunmask_rp_update(%struct.bfa_s* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.bfa_s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.bfa_lun_mask_s*, align 8
  %12 = alloca i64, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %14 = call i64 @bfa_get_lun_mask_status(%struct.bfa_s* %13)
  %15 = load i64, i64* @BFA_LUNMASK_MINCFG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %65

18:                                               ; preds = %5
  %19 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %20 = call %struct.bfa_lun_mask_s* @bfa_get_lun_mask_list(%struct.bfa_s* %19)
  store %struct.bfa_lun_mask_s* %20, %struct.bfa_lun_mask_s** %11, align 8
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %62, %18
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @MAX_LUN_MASK_CFG, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  %26 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %26, i64 %27
  %29 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BFA_IOIM_LUN_MASK_ACTIVE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %25
  %34 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %34, i64 %35
  %37 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %33
  %42 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %42, i64 %43
  %45 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %51, i64 %52
  %54 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %53, i32 0, i32 4
  store i32 %50, i32* %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.bfa_lun_mask_s*, %struct.bfa_lun_mask_s** %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %56, i64 %57
  %59 = getelementptr inbounds %struct.bfa_lun_mask_s, %struct.bfa_lun_mask_s* %58, i32 0, i32 3
  store i64 %55, i64* %59, align 8
  br label %60

60:                                               ; preds = %49, %41, %33
  br label %61

61:                                               ; preds = %60, %25
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %12, align 8
  br label %21

65:                                               ; preds = %17, %21
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
