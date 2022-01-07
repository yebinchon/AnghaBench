; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_sm_fwdelete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_sm_fwdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_rport_s = type { i32, i32 }

@sm_fwd_rsp = common dso_local global i32 0, align 4
@bfa_rport_sm_offline = common dso_local global i32 0, align 4
@sm_fwd_del = common dso_local global i32 0, align 4
@bfa_rport_sm_deleting = common dso_local global i32 0, align 4
@sm_fwd_hwf = common dso_local global i32 0, align 4
@bfa_rport_sm_iocdisable = common dso_local global i32 0, align 4
@sm_fwd_unexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_rport_s*, i32)* @bfa_rport_sm_fwdelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_rport_sm_fwdelete(%struct.bfa_rport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_rport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_rport_s* %0, %struct.bfa_rport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bfa_trc(i32 %7, i32 %10)
  %12 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_trc(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %43 [
    i32 129, label %18
    i32 130, label %27
    i32 128, label %34
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %20 = load i32, i32* @sm_fwd_rsp, align 4
  %21 = call i32 @bfa_stats(%struct.bfa_rport_s* %19, i32 %20)
  %22 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %23 = load i32, i32* @bfa_rport_sm_offline, align 4
  %24 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %22, i32 %23)
  %25 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %26 = call i32 @bfa_rport_offline_cb(%struct.bfa_rport_s* %25)
  br label %52

27:                                               ; preds = %2
  %28 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %29 = load i32, i32* @sm_fwd_del, align 4
  %30 = call i32 @bfa_stats(%struct.bfa_rport_s* %28, i32 %29)
  %31 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %32 = load i32, i32* @bfa_rport_sm_deleting, align 4
  %33 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %31, i32 %32)
  br label %52

34:                                               ; preds = %2
  %35 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %36 = load i32, i32* @sm_fwd_hwf, align 4
  %37 = call i32 @bfa_stats(%struct.bfa_rport_s* %35, i32 %36)
  %38 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %39 = load i32, i32* @bfa_rport_sm_iocdisable, align 4
  %40 = call i32 @bfa_sm_set_state(%struct.bfa_rport_s* %38, i32 %39)
  %41 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %42 = call i32 @bfa_rport_offline_cb(%struct.bfa_rport_s* %41)
  br label %52

43:                                               ; preds = %2
  %44 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %45 = load i32, i32* @sm_fwd_unexp, align 4
  %46 = call i32 @bfa_stats(%struct.bfa_rport_s* %44, i32 %45)
  %47 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @bfa_sm_fault(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %34, %27, %18
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_stats(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_rport_offline_cb(%struct.bfa_rport_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
