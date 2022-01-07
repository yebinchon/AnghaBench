; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-sysfs.c_ufshcd_auto_hibern8_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-sysfs.c_ufshcd_auto_hibern8_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@REG_AUTO_HIBERNATE_IDLE_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, i64)* @ufshcd_auto_hibern8_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_auto_hibern8_update(%struct.ufs_hba* %0, i64 %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %7 = call i32 @ufshcd_is_auto_hibern8_supported(%struct.ufs_hba* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %49

10:                                               ; preds = %2
  %11 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %12 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %19 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  br label %41

24:                                               ; preds = %10
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %27 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %29 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pm_runtime_suspended(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %35 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %36 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @REG_AUTO_HIBERNATE_IDLE_TIMER, align 4
  %39 = call i32 @ufshcd_writel(%struct.ufs_hba* %34, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %24
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %43 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %41, %9
  ret void
}

declare dso_local i32 @ufshcd_is_auto_hibern8_supported(%struct.ufs_hba*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pm_runtime_suspended(i32) #1

declare dso_local i32 @ufshcd_writel(%struct.ufs_hba*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
