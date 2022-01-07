; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_tmf_tasklet_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_tmf_tasklet_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, i32, i32, %struct.tasklet_completion_status*, i32 }
%struct.tasklet_completion_status = type { i64, i32, i32, i32 }
%struct.done_list_struct = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"tmf tasklet complete\0A\00", align 1
@TC_SSP_RESP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ascb*, %struct.done_list_struct*)* @asd_tmf_tasklet_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_tmf_tasklet_complete(%struct.asd_ascb* %0, %struct.done_list_struct* %1) #0 {
  %3 = alloca %struct.asd_ascb*, align 8
  %4 = alloca %struct.done_list_struct*, align 8
  %5 = alloca %struct.tasklet_completion_status*, align 8
  store %struct.asd_ascb* %0, %struct.asd_ascb** %3, align 8
  store %struct.done_list_struct* %1, %struct.done_list_struct** %4, align 8
  %6 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %7 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %6, i32 0, i32 4
  %8 = call i32 @del_timer(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %49

11:                                               ; preds = %2
  %12 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %13 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %12, i32 0, i32 3
  %14 = load %struct.tasklet_completion_status*, %struct.tasklet_completion_status** %13, align 8
  store %struct.tasklet_completion_status* %14, %struct.tasklet_completion_status** %5, align 8
  %15 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.done_list_struct*, %struct.done_list_struct** %4, align 8
  %17 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.tasklet_completion_status*, %struct.tasklet_completion_status** %5, align 8
  %20 = getelementptr inbounds %struct.tasklet_completion_status, %struct.tasklet_completion_status* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.done_list_struct*, %struct.done_list_struct** %4, align 8
  %22 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TC_SSP_RESP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %11
  %27 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %28 = load %struct.done_list_struct*, %struct.done_list_struct** %4, align 8
  %29 = call i32 @asd_get_tmf_resp_tasklet(%struct.asd_ascb* %27, %struct.done_list_struct* %28)
  %30 = load %struct.tasklet_completion_status*, %struct.tasklet_completion_status** %5, align 8
  %31 = getelementptr inbounds %struct.tasklet_completion_status, %struct.tasklet_completion_status* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %33 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tasklet_completion_status*, %struct.tasklet_completion_status** %5, align 8
  %36 = getelementptr inbounds %struct.tasklet_completion_status, %struct.tasklet_completion_status* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %38 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tasklet_completion_status*, %struct.tasklet_completion_status** %5, align 8
  %41 = getelementptr inbounds %struct.tasklet_completion_status, %struct.tasklet_completion_status* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %26, %11
  %43 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %44 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @complete(i32 %45)
  %47 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %48 = call i32 @asd_ascb_free(%struct.asd_ascb* %47)
  br label %49

49:                                               ; preds = %42, %10
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ASD_DPRINTK(i8*) #1

declare dso_local i32 @asd_get_tmf_resp_tasklet(%struct.asd_ascb*, %struct.done_list_struct*) #1

declare dso_local i32 @complete(i32) #1

declare dso_local i32 @asd_ascb_free(%struct.asd_ascb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
