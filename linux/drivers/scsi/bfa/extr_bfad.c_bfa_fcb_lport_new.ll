; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfa_fcb_lport_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfa_fcb_lport_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_port_s = type { i32, %struct.bfa_fcs_lport_s*, i32 }
%struct.bfad_s = type { %struct.bfad_port_s }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.bfad_vf_s = type { %struct.bfad_port_s }
%struct.bfad_vport_s = type { %struct.bfad_port_s }

@BFAD_PORT_PHYS_BASE = common dso_local global i32 0, align 4
@BFAD_PORT_VF_BASE = common dso_local global i32 0, align 4
@BFAD_PORT_PHYS_VPORT = common dso_local global i32 0, align 4
@BFAD_PORT_VF_VPORT = common dso_local global i32 0, align 4
@BFA_LPORT_ROLE_FCP_IM = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfad_port_s* @bfa_fcb_lport_new(%struct.bfad_s* %0, %struct.bfa_fcs_lport_s* %1, i32 %2, %struct.bfad_vf_s* %3, %struct.bfad_vport_s* %4) #0 {
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.bfa_fcs_lport_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfad_vf_s*, align 8
  %10 = alloca %struct.bfad_vport_s*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bfad_port_s*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %6, align 8
  store %struct.bfa_fcs_lport_s* %1, %struct.bfa_fcs_lport_s** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bfad_vf_s* %3, %struct.bfad_vf_s** %9, align 8
  store %struct.bfad_vport_s* %4, %struct.bfad_vport_s** %10, align 8
  %13 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %10, align 8
  %14 = icmp ne %struct.bfad_vport_s* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %5
  %16 = load %struct.bfad_vf_s*, %struct.bfad_vf_s** %9, align 8
  %17 = icmp ne %struct.bfad_vf_s* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 0
  store %struct.bfad_port_s* %20, %struct.bfad_port_s** %12, align 8
  %21 = load i32, i32* @BFAD_PORT_PHYS_BASE, align 4
  %22 = load %struct.bfad_port_s*, %struct.bfad_port_s** %12, align 8
  %23 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %56

24:                                               ; preds = %15, %5
  %25 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %10, align 8
  %26 = icmp ne %struct.bfad_vport_s* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load %struct.bfad_vf_s*, %struct.bfad_vf_s** %9, align 8
  %29 = icmp ne %struct.bfad_vf_s* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.bfad_vf_s*, %struct.bfad_vf_s** %9, align 8
  %32 = getelementptr inbounds %struct.bfad_vf_s, %struct.bfad_vf_s* %31, i32 0, i32 0
  store %struct.bfad_port_s* %32, %struct.bfad_port_s** %12, align 8
  %33 = load i32, i32* @BFAD_PORT_VF_BASE, align 4
  %34 = load %struct.bfad_port_s*, %struct.bfad_port_s** %12, align 8
  %35 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %55

36:                                               ; preds = %27, %24
  %37 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %10, align 8
  %38 = icmp ne %struct.bfad_vport_s* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.bfad_vf_s*, %struct.bfad_vf_s** %9, align 8
  %41 = icmp ne %struct.bfad_vf_s* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %10, align 8
  %44 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %43, i32 0, i32 0
  store %struct.bfad_port_s* %44, %struct.bfad_port_s** %12, align 8
  %45 = load i32, i32* @BFAD_PORT_PHYS_VPORT, align 4
  %46 = load %struct.bfad_port_s*, %struct.bfad_port_s** %12, align 8
  %47 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %54

48:                                               ; preds = %39, %36
  %49 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %10, align 8
  %50 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %49, i32 0, i32 0
  store %struct.bfad_port_s* %50, %struct.bfad_port_s** %12, align 8
  %51 = load i32, i32* @BFAD_PORT_VF_VPORT, align 4
  %52 = load %struct.bfad_port_s*, %struct.bfad_port_s** %12, align 8
  %53 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55, %18
  %57 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %58 = load %struct.bfad_port_s*, %struct.bfad_port_s** %12, align 8
  %59 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %58, i32 0, i32 1
  store %struct.bfa_fcs_lport_s* %57, %struct.bfa_fcs_lport_s** %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.bfad_port_s*, %struct.bfad_port_s** %12, align 8
  %62 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @BFA_LPORT_ROLE_FCP_IM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %56
  %68 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %69 = load %struct.bfad_port_s*, %struct.bfad_port_s** %12, align 8
  %70 = call i64 @bfad_im_port_new(%struct.bfad_s* %68, %struct.bfad_port_s* %69)
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @BFA_STATUS_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %76 = load %struct.bfad_port_s*, %struct.bfad_port_s** %12, align 8
  %77 = call i32 @bfad_im_port_delete(%struct.bfad_s* %75, %struct.bfad_port_s* %76)
  store %struct.bfad_port_s* null, %struct.bfad_port_s** %12, align 8
  br label %78

78:                                               ; preds = %74, %67
  br label %79

79:                                               ; preds = %78, %56
  %80 = load %struct.bfad_port_s*, %struct.bfad_port_s** %12, align 8
  ret %struct.bfad_port_s* %80
}

declare dso_local i64 @bfad_im_port_new(%struct.bfad_s*, %struct.bfad_port_s*) #1

declare dso_local i32 @bfad_im_port_delete(%struct.bfad_s*, %struct.bfad_port_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
