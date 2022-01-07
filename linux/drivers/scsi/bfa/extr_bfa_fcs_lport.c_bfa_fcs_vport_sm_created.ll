; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_created.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_created.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_vport_s = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bfa_fcs_fabric_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_fdisc = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_offline = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_vport_s*, i32)* @bfa_fcs_vport_sm_created to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_vport_sm_created(%struct.bfa_fcs_vport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_vport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_vport_s* %0, %struct.bfa_fcs_vport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %6 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %5)
  %7 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %8 = call i32 @__vport_pwwn(%struct.bfa_fcs_vport_s* %7)
  %9 = call i32 @bfa_trc(i32 %6, i32 %8)
  %10 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %11 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @bfa_trc(i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %50 [
    i32 128, label %15
    i32 131, label %42
    i32 129, label %49
    i32 130, label %49
  ]

15:                                               ; preds = %2
  %16 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %17 = call i32 @__vport_fabric(%struct.bfa_fcs_vport_s* %16)
  %18 = load i32, i32* @bfa_fcs_fabric_sm_online, align 4
  %19 = call i32 @bfa_sm_cmp_state(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %23 = call i32 @__vport_fabric(%struct.bfa_fcs_vport_s* %22)
  %24 = call i32 @bfa_fcs_fabric_npiv_capable(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %28 = load i32, i32* @bfa_fcs_vport_sm_fdisc, align 4
  %29 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %27, i32 %28)
  %30 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %31 = call i32 @bfa_fcs_vport_do_fdisc(%struct.bfa_fcs_vport_s* %30)
  br label %41

32:                                               ; preds = %21, %15
  %33 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %39 = load i32, i32* @bfa_fcs_vport_sm_offline, align 4
  %40 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %26
  br label %55

42:                                               ; preds = %2
  %43 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %44 = load i32, i32* @bfa_fcs_vport_sm_cleanup, align 4
  %45 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %43, i32 %44)
  %46 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %46, i32 0, i32 0
  %48 = call i32 @bfa_fcs_lport_delete(i32* %47)
  br label %55

49:                                               ; preds = %2, %2
  br label %55

50:                                               ; preds = %2
  %51 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %52 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @bfa_sm_fault(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %49, %42, %41
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @__vport_fcs(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @__vport_pwwn(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_cmp_state(i32, i32) #1

declare dso_local i32 @__vport_fabric(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_fcs_fabric_npiv_capable(i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s*, i32) #1

declare dso_local i32 @bfa_fcs_vport_do_fdisc(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_fcs_lport_delete(i32*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
