; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_lport_get_rports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_lport_get_rports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_lport_get_rports_s = type { i32, i64, i32, i32 }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.bfa_rport_qualifier_s = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_VERSION_FAIL = common dso_local global i64 0, align 8
@BFA_STATUS_UNKNOWN_LWWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_lport_get_rports(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfa_bsg_lport_get_rports_s*, align 8
  %9 = alloca %struct.bfa_fcs_lport_s*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.bfa_bsg_lport_get_rports_s*
  store %struct.bfa_bsg_lport_get_rports_s* %13, %struct.bfa_bsg_lport_get_rports_s** %8, align 8
  %14 = load %struct.bfa_bsg_lport_get_rports_s*, %struct.bfa_bsg_lport_get_rports_s** %8, align 8
  %15 = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, %struct.bfa_bsg_lport_get_rports_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.bfa_bsg_lport_get_rports_s*, %struct.bfa_bsg_lport_get_rports_s** %8, align 8
  %24 = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, %struct.bfa_bsg_lport_get_rports_s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i64 @bfad_chk_iocmd_sz(i32 %22, i32 24, i32 %28)
  %30 = load i64, i64* @BFA_STATUS_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i64, i64* @BFA_STATUS_VERSION_FAIL, align 8
  %34 = load %struct.bfa_bsg_lport_get_rports_s*, %struct.bfa_bsg_lport_get_rports_s** %8, align 8
  %35 = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, %struct.bfa_bsg_lport_get_rports_s* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %4, align 4
  br label %80

36:                                               ; preds = %21
  %37 = load %struct.bfa_bsg_lport_get_rports_s*, %struct.bfa_bsg_lport_get_rports_s** %8, align 8
  %38 = bitcast %struct.bfa_bsg_lport_get_rports_s* %37 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 24
  store i8* %39, i8** %11, align 8
  %40 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %40, i32 0, i32 0
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 1
  %46 = load %struct.bfa_bsg_lport_get_rports_s*, %struct.bfa_bsg_lport_get_rports_s** %8, align 8
  %47 = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, %struct.bfa_bsg_lport_get_rports_s* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bfa_bsg_lport_get_rports_s*, %struct.bfa_bsg_lport_get_rports_s** %8, align 8
  %50 = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, %struct.bfa_bsg_lport_get_rports_s* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32* %45, i32 %48, i32 %51)
  store %struct.bfa_fcs_lport_s* %52, %struct.bfa_fcs_lport_s** %9, align 8
  %53 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %54 = icmp eq %struct.bfa_fcs_lport_s* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %36
  %56 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %57 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %56, i32 0, i32 0
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %61 = call i32 @bfa_trc(%struct.bfad_s* %60, i32 0)
  %62 = load i64, i64* @BFA_STATUS_UNKNOWN_LWWN, align 8
  %63 = load %struct.bfa_bsg_lport_get_rports_s*, %struct.bfa_bsg_lport_get_rports_s** %8, align 8
  %64 = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, %struct.bfa_bsg_lport_get_rports_s* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %79

65:                                               ; preds = %36
  %66 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = bitcast i8* %67 to %struct.bfa_rport_qualifier_s*
  %69 = load %struct.bfa_bsg_lport_get_rports_s*, %struct.bfa_bsg_lport_get_rports_s** %8, align 8
  %70 = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, %struct.bfa_bsg_lport_get_rports_s* %69, i32 0, i32 0
  %71 = call i32 @bfa_fcs_lport_get_rport_quals(%struct.bfa_fcs_lport_s* %66, %struct.bfa_rport_qualifier_s* %68, i32* %70)
  %72 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %73 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %72, i32 0, i32 0
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i64, i64* @BFA_STATUS_OK, align 8
  %77 = load %struct.bfa_bsg_lport_get_rports_s*, %struct.bfa_bsg_lport_get_rports_s** %8, align 8
  %78 = getelementptr inbounds %struct.bfa_bsg_lport_get_rports_s, %struct.bfa_bsg_lport_get_rports_s* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %65, %55
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %32, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @bfad_chk_iocmd_sz(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_get_rport_quals(%struct.bfa_fcs_lport_s*, %struct.bfa_rport_qualifier_s*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
