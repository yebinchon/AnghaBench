; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_ioa_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_ioa_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i64 (%struct.ipr_cmnd*)*, i64 (%struct.ipr_cmnd*)*, %struct.TYPE_5__*, i32, %struct.TYPE_7__, %struct.ipr_ioa_cfg* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ipr_ioa_cfg = type { %struct.ipr_cmnd* }

@IPR_RC_JOB_RETURN = common dso_local global i64 0, align 8
@IPR_RC_JOB_CONTINUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*)* @ipr_reset_ioa_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_reset_ioa_job(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ipr_ioa_cfg*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %6 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %6, i32 0, i32 5
  %8 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  store %struct.ipr_ioa_cfg* %8, %struct.ipr_ioa_cfg** %5, align 8
  br label %9

9:                                                ; preds = %55, %1
  %10 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @be32_to_cpu(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %18 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %17, i32 0, i32 0
  %19 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %18, align 8
  %20 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %21 = icmp ne %struct.ipr_cmnd* %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %9
  %23 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %24 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %23, i32 0, i32 3
  %25 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %26 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %24, i32* %28)
  br label %59

30:                                               ; preds = %9
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @IPR_IOASC_SENSE_KEY(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %36 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %35, i32 0, i32 0
  %37 = load i64 (%struct.ipr_cmnd*)*, i64 (%struct.ipr_cmnd*)** %36, align 8
  %38 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %39 = call i64 %37(%struct.ipr_cmnd* %38)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @IPR_RC_JOB_RETURN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %59

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %47 = call i32 @ipr_reinit_ipr_cmnd(%struct.ipr_cmnd* %46)
  %48 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %49 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %48, i32 0, i32 0
  store i64 (%struct.ipr_cmnd*)* @ipr_reset_cmd_failed, i64 (%struct.ipr_cmnd*)** %49, align 8
  %50 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %51 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %50, i32 0, i32 1
  %52 = load i64 (%struct.ipr_cmnd*)*, i64 (%struct.ipr_cmnd*)** %51, align 8
  %53 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %54 = call i64 %52(%struct.ipr_cmnd* %53)
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %45
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @IPR_RC_JOB_CONTINUE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %9, label %59

59:                                               ; preds = %22, %43, %55
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @IPR_IOASC_SENSE_KEY(i64) #1

declare dso_local i32 @ipr_reinit_ipr_cmnd(%struct.ipr_cmnd*) #1

declare dso_local i64 @ipr_reset_cmd_failed(%struct.ipr_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
