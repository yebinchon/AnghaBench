; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_scn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_scn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BFA_FCPORT_LN_SM_LINKUP = common dso_local global i32 0, align 4
@BFA_FCPORT_LN_SM_LINKDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*, i32, i32)* @bfa_fcport_scn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_scn(%struct.bfa_fcport_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcport_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %4, align 8
  %8 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %30

16:                                               ; preds = %12, %3
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %28 [
    i32 128, label %18
    i32 129, label %23
  ]

18:                                               ; preds = %16
  %19 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %19, i32 0, i32 0
  %21 = load i32, i32* @BFA_FCPORT_LN_SM_LINKUP, align 4
  %22 = call i32 @bfa_sm_send_event(i32* %20, i32 %21)
  br label %30

23:                                               ; preds = %16
  %24 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %24, i32 0, i32 0
  %26 = load i32, i32* @BFA_FCPORT_LN_SM_LINKDOWN, align 4
  %27 = call i32 @bfa_sm_send_event(i32* %25, i32 %26)
  br label %30

28:                                               ; preds = %16
  %29 = call i32 @WARN_ON(i32 1)
  br label %30

30:                                               ; preds = %15, %28, %23, %18
  ret void
}

declare dso_local i32 @bfa_sm_send_event(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
