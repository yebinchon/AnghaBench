; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_clkgate_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_clkgate_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ufs_hba = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ufshcd_clkgate_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ufshcd_clkgate_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ufs_hba*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.ufs_hba* @dev_get_drvdata(%struct.device* %13)
  store %struct.ufs_hba* %14, %struct.ufs_hba** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @kstrtou32(i8* %15, i32 0, i32* %12)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %67

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.ufs_hba*, %struct.ufs_hba** %10, align 8
  %29 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %65

34:                                               ; preds = %21
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.ufs_hba*, %struct.ufs_hba** %10, align 8
  %39 = call i32 @ufshcd_release(%struct.ufs_hba* %38)
  br label %60

40:                                               ; preds = %34
  %41 = load %struct.ufs_hba*, %struct.ufs_hba** %10, align 8
  %42 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @spin_lock_irqsave(i32 %45, i64 %46)
  %48 = load %struct.ufs_hba*, %struct.ufs_hba** %10, align 8
  %49 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ufs_hba*, %struct.ufs_hba** %10, align 8
  %54 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %40, %37
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.ufs_hba*, %struct.ufs_hba** %10, align 8
  %63 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  br label %65

65:                                               ; preds = %60, %33
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %65, %18
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local %struct.ufs_hba* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtou32(i8*, i32, i32*) #1

declare dso_local i32 @ufshcd_release(%struct.ufs_hba*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
