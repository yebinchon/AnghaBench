; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_add_delay_before_dme_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_add_delay_before_dme_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32 }

@UFSHCD_QUIRK_DELAY_BEFORE_DME_CMDS = common dso_local global i32 0, align 4
@MIN_DELAY_BEFORE_DME_CMDS_US = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*)* @ufshcd_add_delay_before_dme_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_add_delay_before_dme_cmd(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %5 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %6 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @UFSHCD_QUIRK_DELAY_BEFORE_DME_CMDS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %14 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ktime_to_us(i32 %15)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i64 1000, i64* %3, align 8
  br label %37

23:                                               ; preds = %12
  %24 = call i32 (...) @ktime_get()
  %25 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %26 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ktime_sub(i32 %24, i32 %27)
  %29 = call i64 @ktime_to_us(i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ult i64 %30, 1000
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i64, i64* %4, align 8
  %34 = sub i64 1000, %33
  store i64 %34, i64* %3, align 8
  br label %36

35:                                               ; preds = %23
  br label %42

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 50
  %41 = call i32 @usleep_range(i64 %38, i64 %40)
  br label %42

42:                                               ; preds = %37, %35, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @usleep_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
