; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfa_fcb_pbc_vport_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfa_fcb_pbc_vport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfi_pbc_vport_s = type { i32, i32 }
%struct.bfa_lport_cfg_s = type { i32, i32, i32, i32, i32 }
%struct.bfad_vport_s = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bfad_s* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BFA_LPORT_ROLE_FCP_IM = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcb_pbc_vport_create(%struct.bfad_s* %0, i64 %1) #0 {
  %3 = alloca %struct.bfi_pbc_vport_s, align 4
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca %struct.bfa_lport_cfg_s, align 4
  %6 = alloca %struct.bfad_vport_s*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.bfi_pbc_vport_s* %3 to i64*
  store i64 %1, i64* %8, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  %9 = bitcast %struct.bfa_lport_cfg_s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 20, i1 false)
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.bfad_vport_s* @kzalloc(i32 16, i32 %10)
  store %struct.bfad_vport_s* %11, %struct.bfad_vport_s** %6, align 8
  %12 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %6, align 8
  %13 = icmp ne %struct.bfad_vport_s* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %16 = call i32 @bfa_trc(%struct.bfad_s* %15, i32 0)
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %19 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %6, align 8
  %20 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.bfad_s* %18, %struct.bfad_s** %21, align 8
  %22 = load i32, i32* @BFA_LPORT_ROLE_FCP_IM, align 4
  %23 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %5, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.bfi_pbc_vport_s, %struct.bfi_pbc_vport_s* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.bfi_pbc_vport_s, %struct.bfi_pbc_vport_s* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @BFA_TRUE, align 4
  %31 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %6, align 8
  %33 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %32, i32 0, i32 1
  %34 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %34, i32 0, i32 1
  %36 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %6, align 8
  %37 = call i32 @bfa_fcs_pbc_vport_create(i32* %33, i32* %35, i32 0, %struct.bfa_lport_cfg_s* %5, %struct.bfad_vport_s* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BFA_STATUS_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %17
  %42 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %43 = call i32 @bfa_trc(%struct.bfad_s* %42, i32 0)
  br label %50

44:                                               ; preds = %17
  %45 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %6, align 8
  %46 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %45, i32 0, i32 0
  %47 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %48 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  br label %50

50:                                               ; preds = %44, %41, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bfad_vport_s* @kzalloc(i32, i32) #2

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #2

declare dso_local i32 @bfa_fcs_pbc_vport_create(i32*, i32*, i32, %struct.bfa_lport_cfg_s*, %struct.bfad_vport_s*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
