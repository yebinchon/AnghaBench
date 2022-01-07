; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_query_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_query_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.TYPE_2__, i32, %struct.asd_ascb* }
%struct.TYPE_2__ = type { i32 }
%struct.asd_ascb = type { i32 }

@TMF_QUERY_TASK = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_query_task(%struct.sas_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_task*, align 8
  %4 = alloca %struct.asd_ascb*, align 8
  %5 = alloca i32, align 4
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  %6 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %7 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %6, i32 0, i32 2
  %8 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  store %struct.asd_ascb* %8, %struct.asd_ascb** %4, align 8
  %9 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %10 = icmp ne %struct.asd_ascb* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %13 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %16 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %19 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TMF_QUERY_TASK, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @asd_initiate_ssp_tmf(i32 %17, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @asd_initiate_ssp_tmf(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
