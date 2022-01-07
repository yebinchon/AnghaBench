; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c___bfa_cb_ioim_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c___bfa_cb_ioim_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bfi_ioim_rsp_s = type { i64, i64, i64, i32, i64 }

@BFA_IOIM_SM_HCB = common dso_local global i32 0, align 4
@BFI_IOIM_STS_OK = common dso_local global i64 0, align 8
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i64 0, align 8
@FCP_RESID_UNDER = common dso_local global i64 0, align 8
@iocomp_underrun = common dso_local global i32 0, align 4
@FCP_RESID_OVER = common dso_local global i64 0, align 8
@iocomp_overrun = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @__bfa_cb_ioim_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bfa_cb_ioim_comp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioim_s*, align 8
  %6 = alloca %struct.bfi_ioim_rsp_s*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.bfa_ioim_s*
  store %struct.bfa_ioim_s* %11, %struct.bfa_ioim_s** %5, align 8
  store i64* null, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %5, align 8
  %16 = load i32, i32* @BFA_IOIM_SM_HCB, align 4
  %17 = call i32 @bfa_sm_send_event(%struct.bfa_ioim_s* %15, i32 %16)
  br label %107

18:                                               ; preds = %2
  %19 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %19, i32 0, i32 5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to %struct.bfi_ioim_rsp_s*
  store %struct.bfi_ioim_rsp_s* %23, %struct.bfi_ioim_rsp_s** %6, align 8
  %24 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %25 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BFI_IOIM_STS_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %88

29:                                               ; preds = %18
  %30 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SCSI_STATUS_CHECK_CONDITION, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %37 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %42 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  %44 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %44, i32 0, i32 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i64* @BFA_SNSINFO_FROM_TAG(i32 %48, i32 %51)
  store i64* %52, i64** %7, align 8
  br label %53

53:                                               ; preds = %40, %35, %29
  %54 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %55 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FCP_RESID_UNDER, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %61 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @be32_to_cpu(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %5, align 8
  %65 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @iocomp_underrun, align 4
  %68 = call i32 @bfa_stats(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %59, %53
  %70 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %71 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FCP_RESID_OVER, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %77 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @be32_to_cpu(i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  %82 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %5, align 8
  %83 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @iocomp_overrun, align 4
  %86 = call i32 @bfa_stats(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %75, %69
  br label %88

88:                                               ; preds = %87, %18
  %89 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %5, align 8
  %90 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %5, align 8
  %95 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %98 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %101 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @bfa_cb_ioim_done(i32 %93, i32 %96, i64 %99, i64 %102, i64 %103, i64* %104, i32 %105)
  br label %107

107:                                              ; preds = %88, %14
  ret void
}

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_ioim_s*, i32) #1

declare dso_local i64* @BFA_SNSINFO_FROM_TAG(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @bfa_stats(i32, i32) #1

declare dso_local i32 @bfa_cb_ioim_done(i32, i32, i64, i64, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
