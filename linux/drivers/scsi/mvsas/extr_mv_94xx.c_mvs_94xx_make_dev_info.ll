; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_make_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_make_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_identify_frame = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@PORT_DEV_STP_INIT = common dso_local global i32 0, align 4
@PORT_DEV_SMP_INIT = common dso_local global i32 0, align 4
@PORT_DEV_SSP_INIT = common dso_local global i32 0, align 4
@PORT_DEV_STP_TRGT = common dso_local global i32 0, align 4
@PORT_DEV_SMP_TRGT = common dso_local global i32 0, align 4
@PORT_DEV_SSP_TRGT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_identify_frame*)* @mvs_94xx_make_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_94xx_make_dev_info(%struct.sas_identify_frame* %0) #0 {
  %2 = alloca %struct.sas_identify_frame*, align 8
  %3 = alloca i32, align 4
  store %struct.sas_identify_frame* %0, %struct.sas_identify_frame** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %2, align 8
  %5 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %3, align 4
  %9 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %2, align 8
  %10 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @PORT_DEV_STP_INIT, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %2, align 8
  %19 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @PORT_DEV_SMP_INIT, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %2, align 8
  %28 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @PORT_DEV_SSP_INIT, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %2, align 8
  %37 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @PORT_DEV_STP_TRGT, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %2, align 8
  %46 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @PORT_DEV_SMP_TRGT, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %2, align 8
  %55 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @PORT_DEV_SSP_TRGT, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %2, align 8
  %64 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 %66, 24
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
