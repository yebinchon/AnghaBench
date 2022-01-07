; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_sei_nt0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_sei_nt0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei_nt0_area = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"chsc: sei nt0 unhandled cc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"chsc: event overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chsc_sei_nt0_area*)* @chsc_process_sei_nt0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_sei_nt0(%struct.chsc_sei_nt0_area* %0) #0 {
  %2 = alloca %struct.chsc_sei_nt0_area*, align 8
  store %struct.chsc_sei_nt0_area* %0, %struct.chsc_sei_nt0_area** %2, align 8
  %3 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %4 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %27 [
    i32 1, label %6
    i32 2, label %9
    i32 3, label %12
    i32 7, label %15
    i32 8, label %18
    i32 12, label %21
    i32 14, label %24
  ]

6:                                                ; preds = %1
  %7 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %8 = call i32 @chsc_process_sei_link_incident(%struct.chsc_sei_nt0_area* %7)
  br label %32

9:                                                ; preds = %1
  %10 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %11 = call i32 @chsc_process_sei_res_acc(%struct.chsc_sei_nt0_area* %10)
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %14 = call i32 @chsc_process_sei_ap_cfg_chg(%struct.chsc_sei_nt0_area* %13)
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %17 = call i32 @chsc_process_sei_chp_avail(%struct.chsc_sei_nt0_area* %16)
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %20 = call i32 @chsc_process_sei_chp_config(%struct.chsc_sei_nt0_area* %19)
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %23 = call i32 @chsc_process_sei_scm_change(%struct.chsc_sei_nt0_area* %22)
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %26 = call i32 @chsc_process_sei_scm_avail(%struct.chsc_sei_nt0_area* %25)
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %29 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %24, %21, %18, %15, %12, %9, %6
  %33 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %34 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 64
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = call i32 (i32, i8*, ...) @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 (...) @css_schedule_eval_all()
  br label %41

41:                                               ; preds = %38, %32
  ret void
}

declare dso_local i32 @chsc_process_sei_link_incident(%struct.chsc_sei_nt0_area*) #1

declare dso_local i32 @chsc_process_sei_res_acc(%struct.chsc_sei_nt0_area*) #1

declare dso_local i32 @chsc_process_sei_ap_cfg_chg(%struct.chsc_sei_nt0_area*) #1

declare dso_local i32 @chsc_process_sei_chp_avail(%struct.chsc_sei_nt0_area*) #1

declare dso_local i32 @chsc_process_sei_chp_config(%struct.chsc_sei_nt0_area*) #1

declare dso_local i32 @chsc_process_sei_scm_change(%struct.chsc_sei_nt0_area*) #1

declare dso_local i32 @chsc_process_sei_scm_avail(%struct.chsc_sei_nt0_area*) #1

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, ...) #1

declare dso_local i32 @css_schedule_eval_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
