; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_mbox_sys_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_mbox_sys_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i32, i64 }

@LPFC_MBX_NO_WAIT = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@LPFC_SLI_ASYNC_MBX_BLK = common dso_local global i32 0, align 4
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli_mbox_sys_shutdown(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_sli*, align 8
  %6 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 1
  store %struct.lpfc_sli* %8, %struct.lpfc_sli** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LPFC_MBX_NO_WAIT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @msleep(i32 100)
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %15 = call i32 @lpfc_sli_mbox_sys_flush(%struct.lpfc_hba* %14)
  br label %84

16:                                               ; preds = %2
  %17 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %18 = mul nsw i32 %17, 1000
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  %20 = load i32, i32* @jiffies, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %19, %21
  store i64 %22, i64* %6, align 8
  %23 = call i32 (...) @local_bh_disable()
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load i32, i32* @LPFC_SLI_ASYNC_MBX_BLK, align 4
  %28 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %33 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %16
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba* %45, i64 %49)
  %51 = mul nsw i32 %50, 1000
  %52 = call i64 @msecs_to_jiffies(i32 %51)
  %53 = load i32, i32* @jiffies, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %52, %54
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %44, %38
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = call i32 (...) @local_bh_enable()
  br label %61

61:                                               ; preds = %74, %56
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = call i32 @msleep(i32 2)
  %69 = load i32, i32* @jiffies, align 4
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @time_after(i32 %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %75

74:                                               ; preds = %67
  br label %61

75:                                               ; preds = %73, %61
  br label %81

76:                                               ; preds = %16
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_irq(i32* %78)
  %80 = call i32 (...) @local_bh_enable()
  br label %81

81:                                               ; preds = %76, %75
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %83 = call i32 @lpfc_sli_mbox_sys_flush(%struct.lpfc_hba* %82)
  br label %84

84:                                               ; preds = %81, %12
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_sli_mbox_sys_flush(%struct.lpfc_hba*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
