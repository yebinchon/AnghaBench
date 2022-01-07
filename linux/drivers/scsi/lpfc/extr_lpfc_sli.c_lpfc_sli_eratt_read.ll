; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_eratt_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_eratt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32 }

@HA_ERATT = common dso_local global i32 0, align 4
@HS_FFER1 = common dso_local global i32 0, align 4
@HS_FFER2 = common dso_local global i32 0, align 4
@HS_FFER3 = common dso_local global i32 0, align 4
@HS_FFER4 = common dso_local global i32 0, align 4
@HS_FFER5 = common dso_local global i32 0, align 4
@HS_FFER6 = common dso_local global i32 0, align 4
@HS_FFER7 = common dso_local global i32 0, align 4
@HS_FFER8 = common dso_local global i32 0, align 4
@DEFER_ERATT = common dso_local global i32 0, align 4
@HBA_ERATT_HANDLED = common dso_local global i32 0, align 4
@UNPLUG_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli_eratt_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_eratt_read(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @lpfc_readl(i32 %7, i32* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %73

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @HA_ERATT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %11
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = call i64 @lpfc_sli_read_hs(%struct.lpfc_hba* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %73

21:                                               ; preds = %16
  %22 = load i32, i32* @HS_FFER1, align 4
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %21
  %29 = load i32, i32* @HS_FFER2, align 4
  %30 = load i32, i32* @HS_FFER3, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @HS_FFER4, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @HS_FFER5, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @HS_FFER6, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @HS_FFER7, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @HS_FFER8, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %28
  %48 = load i32, i32* @DEFER_ERATT, align 4
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @writel(i32 0, i32 %55)
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @readl(i32 %59)
  br label %61

61:                                               ; preds = %47, %28, %21
  %62 = load i32, i32* @HA_ERATT, align 4
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @HBA_ERATT_HANDLED, align 4
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  store i32 1, i32* %2, align 4
  br label %89

72:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %89

73:                                               ; preds = %20, %10
  %74 = load i32, i32* @UNPLUG_ERR, align 4
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @HA_ERATT, align 4
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @HBA_ERATT_HANDLED, align 4
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  store i32 1, i32* %2, align 4
  br label %89

89:                                               ; preds = %73, %72, %61
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i64 @lpfc_sli_read_hs(%struct.lpfc_hba*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
