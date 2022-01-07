; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_dump_mailbox_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_dump_mailbox_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_6__, i32, %struct.ipr_ioa_cfg* }
%struct.TYPE_6__ = type { i64 }
%struct.ipr_ioa_cfg = type { i64, i32, i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@GET_DUMP = common dso_local global i64 0, align 8
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@IPR_PCII_MAILBOX_STABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Timed out waiting for Mailbox register.\0A\00", align 1
@READ_DUMP = common dso_local global i64 0, align 8
@IPR_SIS64_DUMP_TIMEOUT = common dso_local global i64 0, align 8
@IPR_SIS32_DUMP_TIMEOUT = common dso_local global i64 0, align 8
@ipr_reset_wait_for_dump = common dso_local global i32 0, align 4
@IPR_CHECK_FOR_RESET_TIMEOUT = common dso_local global i64 0, align 8
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_dump_mailbox_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_dump_mailbox_wait(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %5 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %6 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %5, i32 0, i32 2
  %7 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  store %struct.ipr_ioa_cfg* %7, %struct.ipr_ioa_cfg** %4, align 8
  %8 = load i32, i32* @ENTER, align 4
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GET_DUMP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %15, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %23 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @readl(i32 %31)
  %33 = load i32, i32* @IPR_PCII_MAILBOX_STABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %27, %21, %16
  %37 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %38 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i64, i64* @READ_DUMP, align 8
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %53 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %55 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %60 = load i64, i64* @IPR_SIS64_DUMP_TIMEOUT, align 8
  %61 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %59, i64 %60)
  br label %66

62:                                               ; preds = %48
  %63 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %64 = load i64, i64* @IPR_SIS32_DUMP_TIMEOUT, align 8
  %65 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %63, i64 %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* @ipr_reset_wait_for_dump, align 4
  %68 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %69 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %71 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %70, i32 0, i32 1
  %72 = call i32 @schedule_work(i32* %71)
  br label %83

73:                                               ; preds = %27
  %74 = load i64, i64* @IPR_CHECK_FOR_RESET_TIMEOUT, align 8
  %75 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %76 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, %74
  store i64 %79, i64* %77, align 8
  %80 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %81 = load i64, i64* @IPR_CHECK_FOR_RESET_TIMEOUT, align 8
  %82 = call i32 @ipr_reset_start_timer(%struct.ipr_cmnd* %80, i64 %81)
  br label %83

83:                                               ; preds = %73, %66
  %84 = load i32, i32* @LEAVE, align 4
  %85 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ipr_reset_start_timer(%struct.ipr_cmnd*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
