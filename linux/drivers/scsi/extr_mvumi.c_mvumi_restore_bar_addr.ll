; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_restore_bar_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_restore_bar_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i64*, i32 }

@MAX_BASE_ADDRESS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*)* @mvumi_restore_bar_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_restore_bar_addr(%struct.mvumi_hba* %0) #0 {
  %2 = alloca %struct.mvumi_hba*, align 8
  %3 = alloca i8, align 1
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %2, align 8
  store i8 0, i8* %3, align 1
  br label %4

4:                                                ; preds = %36, %1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @MAX_BASE_ADDRESS, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %4
  %11 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %12 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %10
  %20 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %21 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = mul nsw i32 %24, 4
  %26 = add nsw i32 16, %25
  %27 = load %struct.mvumi_hba*, %struct.mvumi_hba** %2, align 8
  %28 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @pci_write_config_dword(i32 %22, i32 %26, i64 %33)
  br label %35

35:                                               ; preds = %19, %10
  br label %36

36:                                               ; preds = %35
  %37 = load i8, i8* %3, align 1
  %38 = add i8 %37, 1
  store i8 %38, i8* %3, align 1
  br label %4

39:                                               ; preds = %4
  ret void
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
