; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_sm_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_sm_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rpf_s = type { i32, %struct.bfa_fcs_rport_s* }
%struct.bfa_fcs_rport_s = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.bfa_fcs_fabric_s }
%struct.bfa_fcs_fabric_s = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@BFA_FCS_BRCD_SWITCH_OUI = common dso_local global i32 0, align 4
@bfa_fcs_rpf_sm_rpsc_sending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rpf_s*, i32)* @bfa_fcs_rpf_sm_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rpf_sm_uninit(%struct.bfa_fcs_rpf_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rpf_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_fcs_rport_s*, align 8
  %6 = alloca %struct.bfa_fcs_fabric_s*, align 8
  store %struct.bfa_fcs_rpf_s* %0, %struct.bfa_fcs_rpf_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %7, i32 0, i32 1
  %9 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  store %struct.bfa_fcs_rport_s* %9, %struct.bfa_fcs_rport_s** %5, align 8
  %10 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store %struct.bfa_fcs_fabric_s* %13, %struct.bfa_fcs_fabric_s** %6, align 8
  %14 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bfa_trc(%struct.TYPE_9__* %16, i32 %19)
  %21 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfa_trc(%struct.TYPE_9__* %23, i32 %26)
  %28 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @bfa_trc(%struct.TYPE_9__* %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %66 [
    i32 128, label %34
    i32 129, label %65
  ]

34:                                               ; preds = %2
  %35 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BFA_FCS_PID_IS_WKA(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %34
  %41 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %41, i32 0, i32 3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  %52 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %6, align 8
  %53 = call i32 @bfa_fcs_fabric_get_switch_oui(%struct.bfa_fcs_fabric_s* %52)
  %54 = load i32, i32* @BFA_FCS_BRCD_SWITCH_OUI, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51, %40
  %57 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %58 = load i32, i32* @bfa_fcs_rpf_sm_rpsc_sending, align 4
  %59 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s* %57, i32 %58)
  %60 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %63 = call i32 @bfa_fcs_rpf_send_rpsc2(%struct.bfa_fcs_rpf_s* %62, i32* null)
  br label %64

64:                                               ; preds = %56, %51, %34
  br label %72

65:                                               ; preds = %2
  br label %72

66:                                               ; preds = %2
  %67 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %68 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @bfa_sm_fault(%struct.TYPE_9__* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %65, %64
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @BFA_FCS_PID_IS_WKA(i32) #1

declare dso_local i32 @bfa_fcs_fabric_get_switch_oui(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s*, i32) #1

declare dso_local i32 @bfa_fcs_rpf_send_rpsc2(%struct.bfa_fcs_rpf_s*, i32*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
