; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_block_config_access_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_block_config_access_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.TYPE_3__, %struct.ipr_ioa_cfg* }
%struct.TYPE_3__ = type { i64 }
%struct.ipr_ioa_cfg = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@IPR_CHECK_FOR_RESET_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Timed out waiting to lock config access. Resetting anyway.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_block_config_access_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_block_config_access_wait(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %5 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %5, i32 0, i32 2
  %7 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  store %struct.ipr_ioa_cfg* %7, %struct.ipr_ioa_cfg** %3, align 8
  %8 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %10 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i64 @pci_cfg_access_trylock(%struct.TYPE_4__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %16 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %18 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %21 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %24 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i64, i64* @IPR_CHECK_FOR_RESET_TIMEOUT, align 8
  %31 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %32 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, %30
  store i64 %35, i64* %33, align 8
  %36 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %37 = load i64, i64* @IPR_CHECK_FOR_RESET_TIMEOUT, align 8
  %38 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %36, i64 %37)
  br label %50

39:                                               ; preds = %22
  %40 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %41 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %44 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %46 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %39, %28
  br label %51

51:                                               ; preds = %50, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @pci_cfg_access_trylock(%struct.TYPE_4__*) #1

declare dso_local i32 @ipr_reset_start_timer(%struct.ipr_cmnd*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
