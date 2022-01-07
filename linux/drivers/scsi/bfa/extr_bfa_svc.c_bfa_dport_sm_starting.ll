; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_sm_starting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_sm_starting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dport_s = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BFA_STATUS_DPORT_INV_SFP = common dso_local global i32 0, align 4
@BFA_DPORT_ST_NO_SFP = common dso_local global i32 0, align 4
@BFA_DPORT_ST_INP = common dso_local global i32 0, align 4
@BFA_DPORT_OPMODE_MANU = common dso_local global i32 0, align 4
@bfa_dport_sm_enabled = common dso_local global i32 0, align 4
@bfa_dport_sm_disabled = common dso_local global i32 0, align 4
@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dport_s*, i32)* @bfa_dport_sm_starting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dport_sm_starting(%struct.bfa_dport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_dport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_dport_s* %0, %struct.bfa_dport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %45 [
    i32 130, label %11
    i32 128, label %34
    i32 129, label %38
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %12, i32 0, i32 3
  %14 = call i32 @memset(i32* %13, i32 0, i32 4)
  %15 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BFA_STATUS_DPORT_INV_SFP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load i32, i32* @BFA_DPORT_ST_NO_SFP, align 4
  %24 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %33

26:                                               ; preds = %11
  %27 = load i32, i32* @BFA_DPORT_ST_INP, align 4
  %28 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %31 = load i32, i32* @BFA_DPORT_OPMODE_MANU, align 4
  %32 = call i32 @bfa_dport_result_start(%struct.bfa_dport_s* %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %22
  br label %34

34:                                               ; preds = %2, %33
  %35 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %36 = load i32, i32* @bfa_dport_sm_enabled, align 4
  %37 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %35, i32 %36)
  br label %51

38:                                               ; preds = %2
  %39 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %40 = load i32, i32* @bfa_dport_sm_disabled, align 4
  %41 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %39, i32 %40)
  %42 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %43 = load i32, i32* @BFA_STATUS_FAILED, align 4
  %44 = call i32 @bfa_cb_fcdiag_dport(%struct.bfa_dport_s* %42, i32 %43)
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @bfa_sm_fault(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %38, %34
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bfa_dport_result_start(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_cb_fcdiag_dport(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
