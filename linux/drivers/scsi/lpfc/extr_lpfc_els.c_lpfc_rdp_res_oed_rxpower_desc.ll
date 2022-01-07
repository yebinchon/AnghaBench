; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_oed_rxpower_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rdp_res_oed_rxpower_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.fc_rdp_oed_sfp_desc = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }

@RDP_OED_DESC_TAG = common dso_local global i32 0, align 4
@SSF_RXPOWER_HIGH_ALARM = common dso_local global i64 0, align 8
@SSF_RXPOWER_LOW_ALARM = common dso_local global i64 0, align 8
@SSF_RXPOWER_HIGH_WARNING = common dso_local global i64 0, align 8
@SSF_RXPOWER_LOW_WARNING = common dso_local global i64 0, align 8
@LPFC_TRANSGRESSION_HIGH_RXPOWER = common dso_local global i32 0, align 4
@RDP_OET_HIGH_ALARM = common dso_local global i32 0, align 4
@LPFC_TRANSGRESSION_LOW_RXPOWER = common dso_local global i32 0, align 4
@RDP_OET_LOW_ALARM = common dso_local global i32 0, align 4
@RDP_OET_HIGH_WARNING = common dso_local global i32 0, align 4
@RDP_OET_LOW_WARNING = common dso_local global i32 0, align 4
@RDP_OED_RXPOWER = common dso_local global i32 0, align 4
@RDP_OED_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.fc_rdp_oed_sfp_desc*, i8**)* @lpfc_rdp_res_oed_rxpower_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rdp_res_oed_rxpower_desc(%struct.lpfc_hba* %0, %struct.fc_rdp_oed_sfp_desc* %1, i8** %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.fc_rdp_oed_sfp_desc*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.fc_rdp_oed_sfp_desc* %1, %struct.fc_rdp_oed_sfp_desc** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @RDP_OED_DESC_TAG, align 4
  %9 = call i8* @cpu_to_be32(i32 %8)
  %10 = load %struct.fc_rdp_oed_sfp_desc*, %struct.fc_rdp_oed_sfp_desc** %5, align 8
  %11 = getelementptr inbounds %struct.fc_rdp_oed_sfp_desc, %struct.fc_rdp_oed_sfp_desc* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i64, i64* @SSF_RXPOWER_HIGH_ALARM, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.fc_rdp_oed_sfp_desc*, %struct.fc_rdp_oed_sfp_desc** %5, align 8
  %17 = getelementptr inbounds %struct.fc_rdp_oed_sfp_desc, %struct.fc_rdp_oed_sfp_desc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i8* %15, i8** %18, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = load i64, i64* @SSF_RXPOWER_LOW_ALARM, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.fc_rdp_oed_sfp_desc*, %struct.fc_rdp_oed_sfp_desc** %5, align 8
  %24 = getelementptr inbounds %struct.fc_rdp_oed_sfp_desc, %struct.fc_rdp_oed_sfp_desc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i8* %22, i8** %25, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = load i64, i64* @SSF_RXPOWER_HIGH_WARNING, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.fc_rdp_oed_sfp_desc*, %struct.fc_rdp_oed_sfp_desc** %5, align 8
  %31 = getelementptr inbounds %struct.fc_rdp_oed_sfp_desc, %struct.fc_rdp_oed_sfp_desc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i8* %29, i8** %32, align 8
  %33 = load i8**, i8*** %6, align 8
  %34 = load i64, i64* @SSF_RXPOWER_LOW_WARNING, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.fc_rdp_oed_sfp_desc*, %struct.fc_rdp_oed_sfp_desc** %5, align 8
  %38 = getelementptr inbounds %struct.fc_rdp_oed_sfp_desc, %struct.fc_rdp_oed_sfp_desc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @LPFC_TRANSGRESSION_HIGH_RXPOWER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %3
  %47 = load i32, i32* @RDP_OET_HIGH_ALARM, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %3
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LPFC_TRANSGRESSION_LOW_RXPOWER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @RDP_OET_LOW_ALARM, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LPFC_TRANSGRESSION_HIGH_RXPOWER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @RDP_OET_HIGH_WARNING, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @LPFC_TRANSGRESSION_LOW_RXPOWER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @RDP_OET_LOW_WARNING, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32, i32* @RDP_OED_RXPOWER, align 4
  %85 = and i32 15, %84
  %86 = load i32, i32* @RDP_OED_TYPE_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i8* @cpu_to_be32(i32 %90)
  %92 = load %struct.fc_rdp_oed_sfp_desc*, %struct.fc_rdp_oed_sfp_desc** %5, align 8
  %93 = getelementptr inbounds %struct.fc_rdp_oed_sfp_desc, %struct.fc_rdp_oed_sfp_desc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  %95 = call i8* @cpu_to_be32(i32 40)
  %96 = load %struct.fc_rdp_oed_sfp_desc*, %struct.fc_rdp_oed_sfp_desc** %5, align 8
  %97 = getelementptr inbounds %struct.fc_rdp_oed_sfp_desc, %struct.fc_rdp_oed_sfp_desc* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  ret i32 56
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
