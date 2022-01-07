; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megaraid_sas_kill_hba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megaraid_sas_kill_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, %struct.TYPE_4__*, i32, i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@MEGASAS_HW_CRITICAL_ERROR = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_LSI_SAS0073SKINNY = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LSI_SAS0071SKINNY = common dso_local global i64 0, align 8
@MFI_SERIES = common dso_local global i64 0, align 8
@MFI_STOP_ADP = common dso_local global i32 0, align 4
@MEGASAS_MAX_LD_IDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megaraid_sas_kill_hba(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %3 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %4 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %3, i32 0, i32 6
  %5 = load i32, i32* @MEGASAS_HW_CRITICAL_ERROR, align 4
  %6 = call i32 @atomic_set(i32* %4, i32 %5)
  %7 = call i32 @msleep(i32 1000)
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %9 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %8, i32 0, i32 5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_DEVICE_ID_LSI_SAS0073SKINNY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %29, label %15

15:                                               ; preds = %1
  %16 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %17 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %16, i32 0, i32 5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI_DEVICE_ID_LSI_SAS0071SKINNY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %25 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MFI_SERIES, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23, %15, %1
  %30 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %31 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @MFI_STOP_ADP, align 4
  %36 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %37 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i32 @writel(i32 %35, i32* %39)
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %42 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @readl(i32* %44)
  br label %46

46:                                               ; preds = %34, %29
  %47 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %48 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %53 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %58 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MEGASAS_MAX_LD_IDS, align 4
  %61 = call i32 @memset(i32 %59, i32 255, i32 %60)
  br label %62

62:                                               ; preds = %56, %51, %46
  br label %70

63:                                               ; preds = %23
  %64 = load i32, i32* @MFI_STOP_ADP, align 4
  %65 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %66 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @writel(i32 %64, i32* %68)
  br label %70

70:                                               ; preds = %63, %62
  %71 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %72 = call i32 @megasas_complete_outstanding_ioctls(%struct.megasas_instance* %71)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @megasas_complete_outstanding_ioctls(%struct.megasas_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
