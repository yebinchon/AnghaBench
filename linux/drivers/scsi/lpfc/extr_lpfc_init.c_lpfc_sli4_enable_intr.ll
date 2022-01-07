; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_enable_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.lpfc_hba_eq_hdl* }
%struct.lpfc_hba_eq_hdl = type { i32, %struct.lpfc_hba* }
%struct.TYPE_3__ = type { i32 }

@LPFC_INTR_ERROR = common dso_local global i32 0, align 4
@MSIX = common dso_local global i64 0, align 8
@NONE = common dso_local global i64 0, align 8
@MSI = common dso_local global i64 0, align 8
@lpfc_sli4_intr_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@LPFC_DRIVER_NAME = common dso_local global i32 0, align 4
@INTx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_sli4_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_enable_intr(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba_eq_hdl*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @LPFC_INTR_ERROR, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = call i32 @lpfc_sli4_enable_msix(%struct.lpfc_hba* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* @MSIX, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  store i32 2, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %15
  br label %25

25:                                               ; preds = %24, %12
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 1
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %37 = call i32 @lpfc_sli4_enable_msi(%struct.lpfc_hba* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @MSI, align 8
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %29, %26
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NONE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %45
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @lpfc_sli4_intr_handler, align 4
  %58 = load i32, i32* @IRQF_SHARED, align 4
  %59 = load i32, i32* @LPFC_DRIVER_NAME, align 4
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %61 = call i32 @request_irq(i32 %56, i32 %57, i32 %58, i32 %59, %struct.lpfc_hba* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %51
  %65 = load i64, i64* @INTx, align 8
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %88, %64
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.lpfc_hba_eq_hdl*, %struct.lpfc_hba_eq_hdl** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.lpfc_hba_eq_hdl, %struct.lpfc_hba_eq_hdl* %78, i64 %80
  store %struct.lpfc_hba_eq_hdl* %81, %struct.lpfc_hba_eq_hdl** %8, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.lpfc_hba_eq_hdl*, %struct.lpfc_hba_eq_hdl** %8, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba_eq_hdl, %struct.lpfc_hba_eq_hdl* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = load %struct.lpfc_hba_eq_hdl*, %struct.lpfc_hba_eq_hdl** %8, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba_eq_hdl, %struct.lpfc_hba_eq_hdl* %86, i32 0, i32 1
  store %struct.lpfc_hba* %85, %struct.lpfc_hba** %87, align 8
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %68

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91, %51
  br label %93

93:                                               ; preds = %92, %45
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @lpfc_sli4_enable_msix(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_enable_msi(%struct.lpfc_hba*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
