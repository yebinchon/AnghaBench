; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_sm_initiator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_sm_initiator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_itnim_s = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bfa_fcs_itnim_sm_offline = common dso_local global i32 0, align 4
@RPSM_EVENT_FC4_OFFLINE = common dso_local global i32 0, align 4
@RPSM_EVENT_FC4_FCS_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_itnim_s*, i32)* @bfa_fcs_itnim_sm_initiator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_itnim_sm_initiator(%struct.bfa_fcs_itnim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_itnim_s* %0, %struct.bfa_fcs_itnim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_trc(i32 %7, i32 %12)
  %14 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bfa_trc(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %42 [
    i32 129, label %20
    i32 131, label %29
    i32 128, label %35
    i32 130, label %35
    i32 132, label %36
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %22 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %21, i32 %22)
  %24 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* @RPSM_EVENT_FC4_OFFLINE, align 4
  %28 = call i32 @bfa_sm_send_event(%struct.TYPE_2__* %26, i32 %27)
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* @RPSM_EVENT_FC4_FCS_ONLINE, align 4
  %34 = call i32 @bfa_sm_send_event(%struct.TYPE_2__* %32, i32 %33)
  br label %48

35:                                               ; preds = %2, %2
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %38 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %39 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %37, i32 %38)
  %40 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %41 = call i32 @bfa_fcs_itnim_free(%struct.bfa_fcs_itnim_s* %40)
  br label %48

42:                                               ; preds = %2
  %43 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @bfa_sm_fault(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %36, %35, %29, %20
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bfa_fcs_itnim_free(%struct.bfa_fcs_itnim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
