; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@REG_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@REG_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ufshcd_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ufs_hba*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ufs_hba*
  store %struct.ufs_hba* %12, %struct.ufs_hba** %8, align 8
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %14 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %17 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @spin_lock(i32 %20)
  %22 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %23 = load i32, i32* @REG_INTERRUPT_STATUS, align 4
  %24 = call i32 @ufshcd_readl(%struct.ufs_hba* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %57, %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %28 = load i32, i32* @REG_INTERRUPT_ENABLE, align 4
  %29 = call i32 @ufshcd_readl(%struct.ufs_hba* %27, i32 %28)
  %30 = and i32 %26, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @REG_INTERRUPT_STATUS, align 4
  %37 = call i32 @ufshcd_writel(%struct.ufs_hba* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %25
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ufshcd_sl_intr(%struct.ufs_hba* %42, i32 %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %48 = load i32, i32* @REG_INTERRUPT_STATUS, align 4
  %49 = call i32 @ufshcd_readl(%struct.ufs_hba* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %25, label %59

59:                                               ; preds = %57
  %60 = load %struct.ufs_hba*, %struct.ufs_hba** %8, align 8
  %61 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @spin_unlock(i32 %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @ufshcd_readl(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_writel(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @ufshcd_sl_intr(%struct.ufs_hba*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
