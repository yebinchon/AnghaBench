; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_sm_logowait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_sm_logowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_lps_s = type { i32, i32, i32 }

@bfa_lps_sm_logout = common dso_local global i32 0, align 4
@bfa_lps_sm_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_lps_s*, i32)* @bfa_lps_sm_logowait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_sm_logowait(%struct.bfa_lps_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_lps_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_lps_s* %0, %struct.bfa_lps_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bfa_trc(i32 %7, i32 %10)
  %12 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_trc(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %31 [
    i32 128, label %18
    i32 129, label %24
    i32 130, label %24
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %20 = load i32, i32* @bfa_lps_sm_logout, align 4
  %21 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %19, i32 %20)
  %22 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %23 = call i32 @bfa_lps_send_logout(%struct.bfa_lps_s* %22)
  br label %37

24:                                               ; preds = %2, %2
  %25 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %26 = load i32, i32* @bfa_lps_sm_init, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %25, i32 %26)
  %28 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %28, i32 0, i32 2
  %30 = call i32 @bfa_reqq_wcancel(i32* %29)
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @bfa_sm_fault(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %24, %18
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_lps_s*, i32) #1

declare dso_local i32 @bfa_lps_send_logout(%struct.bfa_lps_s*) #1

declare dso_local i32 @bfa_reqq_wcancel(i32*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
