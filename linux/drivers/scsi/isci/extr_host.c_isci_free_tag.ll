; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_isci_free_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_isci_free_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i64* }

@SCI_FAILURE_INVALID_IO_TAG = common dso_local global i32 0, align 4
@SCI_MAX_SEQ = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_free_tag(%struct.isci_host* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.isci_host* %0, %struct.isci_host** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @ISCI_TAG_TCI(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @ISCI_TAG_SEQ(i64 %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %13 = call i64 @isci_tci_active(%struct.isci_host* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @SCI_FAILURE_INVALID_IO_TAG, align 4
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %20 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %18, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  %29 = load i32, i32* @SCI_MAX_SEQ, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = and i64 %28, %31
  %33 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %34 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 %32, i64* %37, align 8
  %38 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @isci_tci_free(%struct.isci_host* %38, i64 %39)
  %41 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %17
  %43 = load i32, i32* @SCI_FAILURE_INVALID_IO_TAG, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %26, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @ISCI_TAG_TCI(i64) #1

declare dso_local i64 @ISCI_TAG_SEQ(i64) #1

declare dso_local i64 @isci_tci_active(%struct.isci_host*) #1

declare dso_local i32 @isci_tci_free(%struct.isci_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
