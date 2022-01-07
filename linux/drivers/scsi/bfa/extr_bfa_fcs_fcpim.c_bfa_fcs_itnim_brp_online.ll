; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_brp_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_brp_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_itnim_s = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BFA_FCS_ITNIM_SM_HAL_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_itnim_brp_online(%struct.bfa_fcs_itnim_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_itnim_s*, align 8
  store %struct.bfa_fcs_itnim_s* %0, %struct.bfa_fcs_itnim_s** %2, align 8
  %3 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 8
  %8 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BFA_FCS_PID_IS_WKA(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %2, align 8
  %17 = load i32, i32* @BFA_FCS_ITNIM_SM_HAL_ONLINE, align 4
  %18 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_itnim_s* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @BFA_FCS_PID_IS_WKA(i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_itnim_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
