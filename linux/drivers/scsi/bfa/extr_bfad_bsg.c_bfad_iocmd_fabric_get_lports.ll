; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_fabric_get_lports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_fabric_get_lports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_fabric_get_lports_s = type { i32, i64, i32 }

@BFA_STATUS_EINVAL = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_VERSION_FAIL = common dso_local global i64 0, align 8
@BFA_STATUS_UNKNOWN_VFID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfad_s*, i8*, i32)* @bfad_iocmd_fabric_get_lports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_iocmd_fabric_get_lports(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_bsg_fabric_get_lports_s*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.bfa_bsg_fabric_get_lports_s*
  store %struct.bfa_bsg_fabric_get_lports_s* %13, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %14 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %15 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i64, i64* @BFA_STATUS_EINVAL, align 8
  %21 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %22 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %77

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %26 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i64 @bfad_chk_iocmd_sz(i32 %24, i32 24, i32 %30)
  %32 = load i64, i64* @BFA_STATUS_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i64, i64* @BFA_STATUS_VERSION_FAIL, align 8
  %36 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %37 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %77

38:                                               ; preds = %23
  %39 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %40 = bitcast %struct.bfa_bsg_fabric_get_lports_s* %39 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 24
  store i8* %41, i8** %11, align 8
  %42 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %43 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %42, i32 0, i32 0
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %47 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %46, i32 0, i32 1
  %48 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %49 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @bfa_fcs_vf_lookup(i32* %47, i32 %50)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %38
  %55 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %55, i32 0, i32 0
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i64, i64* @BFA_STATUS_UNKNOWN_VFID, align 8
  %60 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %61 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %77

62:                                               ; preds = %38
  %63 = load i32*, i32** %8, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = call i32 @bfa_fcs_vf_get_ports(i32* %63, i32* %65, i32* %9)
  %67 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %68 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %67, i32 0, i32 0
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %73 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* @BFA_STATUS_OK, align 8
  %75 = load %struct.bfa_bsg_fabric_get_lports_s*, %struct.bfa_bsg_fabric_get_lports_s** %7, align 8
  %76 = getelementptr inbounds %struct.bfa_bsg_fabric_get_lports_s, %struct.bfa_bsg_fabric_get_lports_s* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %62, %54, %34, %19
  ret i32 0
}

declare dso_local i64 @bfad_chk_iocmd_sz(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32* @bfa_fcs_vf_lookup(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_fcs_vf_get_ports(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
