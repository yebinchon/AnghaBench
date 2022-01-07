; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_dev_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_dev_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*, i32 (%struct.vnic_dev*, i32)*, i32 (%struct.vnic_dev*, i32*)*, i32)* @snic_dev_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_dev_wait(%struct.vnic_dev* %0, i32 (%struct.vnic_dev*, i32)* %1, i32 (%struct.vnic_dev*, i32*)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnic_dev*, align 8
  %7 = alloca i32 (%struct.vnic_dev*, i32)*, align 8
  %8 = alloca i32 (%struct.vnic_dev*, i32*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %6, align 8
  store i32 (%struct.vnic_dev*, i32)* %1, i32 (%struct.vnic_dev*, i32)** %7, align 8
  store i32 (%struct.vnic_dev*, i32*)* %2, i32 (%struct.vnic_dev*, i32*)** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32 (%struct.vnic_dev*, i32)*, i32 (%struct.vnic_dev*, i32)** %7, align 8
  %15 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 %14(%struct.vnic_dev* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load i32, i32* @jiffies, align 4
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %23, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %54, %22
  %29 = load i32 (%struct.vnic_dev*, i32*)*, i32 (%struct.vnic_dev*, i32*)** %8, align 8
  %30 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %31 = call i32 %29(%struct.vnic_dev* %30, i32* %12)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %59

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %59

40:                                               ; preds = %36
  %41 = load i32, i32* @HZ, align 4
  %42 = sdiv i32 %41, 10
  %43 = call i32 @schedule_timeout_uninterruptible(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* @jiffies, align 4
  %49 = call i64 @time_after(i64 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 3
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i1 [ true, %46 ], [ %53, %51 ]
  br i1 %55, label %28, label %56

56:                                               ; preds = %54
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %39, %34, %20
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_after(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
