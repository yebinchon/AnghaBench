; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_process_flogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_process_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { i32, %struct.TYPE_5__, i32, %struct.bfa_fcs_lport_s }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fchs_s = type { i32, i32 }
%struct.fc_logi_s = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@BFA_FCS_FABRIC_SM_NO_FABRIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_fabric_s*, %struct.fchs_s*, i32)* @bfa_fcs_fabric_process_flogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_process_flogi(%struct.bfa_fcs_fabric_s* %0, %struct.fchs_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_logi_s*, align 8
  %8 = alloca %struct.bfa_fcs_lport_s*, align 8
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %4, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %10 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %9, i64 1
  %11 = bitcast %struct.fchs_s* %10 to %struct.fc_logi_s*
  store %struct.fc_logi_s* %11, %struct.fc_logi_s** %7, align 8
  %12 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %12, i32 0, i32 3
  store %struct.bfa_fcs_lport_s* %13, %struct.bfa_fcs_lport_s** %8, align 8
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %18 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bfa_trc(i32 %16, i32 %19)
  %21 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.fc_logi_s*, %struct.fc_logi_s** %7, align 8
  %27 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %3
  %32 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %4, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fc_logi_s*, %struct.fc_logi_s** %7, align 8
  %36 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bfa_trc(i32 %34, i32 %37)
  %39 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %4, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %71

44:                                               ; preds = %3
  %45 = load %struct.fc_logi_s*, %struct.fc_logi_s** %7, align 8
  %46 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @be16_to_cpu(i32 %48)
  %50 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %4, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.fc_logi_s*, %struct.fc_logi_s** %7, align 8
  %53 = getelementptr inbounds %struct.fc_logi_s, %struct.fc_logi_s* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %8, align 8
  %56 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %60 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %8, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %4, align 8
  %67 = call i32 @bfa_fcs_fabric_send_flogi_acc(%struct.bfa_fcs_fabric_s* %66)
  %68 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %4, align 8
  %69 = load i32, i32* @BFA_FCS_FABRIC_SM_NO_FABRIC, align 4
  %70 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_fabric_s* %68, i32 %69)
  br label %71

71:                                               ; preds = %44, %31
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @bfa_fcs_fabric_send_flogi_acc(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_fabric_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
