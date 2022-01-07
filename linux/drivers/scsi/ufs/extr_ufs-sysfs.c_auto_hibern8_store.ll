; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-sysfs.c_auto_hibern8_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-sysfs.c_auto_hibern8_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ufs_hba = type { i32 }

@EOPNOTSUPP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@UFSHCI_AHIBERN8_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @auto_hibern8_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @auto_hibern8_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ufs_hba*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.ufs_hba* @dev_get_drvdata(%struct.device* %12)
  store %struct.ufs_hba* %13, %struct.ufs_hba** %10, align 8
  %14 = load %struct.ufs_hba*, %struct.ufs_hba** %10, align 8
  %15 = call i32 @ufshcd_is_auto_hibern8_supported(%struct.ufs_hba* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @EOPNOTSUPP, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %40

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @kstrtouint(i8* %21, i32 0, i32* %11)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %40

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @UFSHCI_AHIBERN8_MAX, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %40

34:                                               ; preds = %27
  %35 = load %struct.ufs_hba*, %struct.ufs_hba** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ufshcd_us_to_ahit(i32 %36)
  %38 = call i32 @ufshcd_auto_hibern8_update(%struct.ufs_hba* %35, i32 %37)
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %34, %31, %24, %17
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local %struct.ufs_hba* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ufshcd_is_auto_hibern8_supported(%struct.ufs_hba*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @ufshcd_auto_hibern8_update(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_us_to_ahit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
