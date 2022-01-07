; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_sm_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_sm_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_ms_s = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@bfa_fcs_lport_ms_sm_plogi_sending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_ms_s*, i32)* @bfa_fcs_lport_ms_sm_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ms_sm_offline(%struct.bfa_fcs_lport_ms_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_ms_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_lport_ms_s* %0, %struct.bfa_fcs_lport_ms_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bfa_trc(i32 %9, i32 %15)
  %17 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %32 [
    i32 128, label %25
    i32 129, label %31
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_lport_ms_sm_plogi_sending, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ms_s* %26, i32 %27)
  %29 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %30 = call i32 @bfa_fcs_lport_ms_send_plogi(%struct.bfa_fcs_lport_ms_s* %29, i32* null)
  br label %40

31:                                               ; preds = %2
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @bfa_sm_fault(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %31, %25
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ms_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_ms_send_plogi(%struct.bfa_fcs_lport_ms_s*, i32*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
