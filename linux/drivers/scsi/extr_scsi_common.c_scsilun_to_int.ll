; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_common.c_scsilun_to_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_common.c_scsilun_to_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_lun = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsilun_to_int(%struct.scsi_lun* %0) #0 {
  %2 = alloca %struct.scsi_lun*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.scsi_lun* %0, %struct.scsi_lun** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %37, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 4
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.scsi_lun*, %struct.scsi_lun** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 %20, 8
  %22 = shl i32 %18, %21
  %23 = load %struct.scsi_lun*, %struct.scsi_lun** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %3, align 4
  %33 = mul nsw i32 %32, 8
  %34 = shl i32 %31, %33
  %35 = or i32 %22, %34
  %36 = or i32 %10, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %9
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %3, align 4
  br label %5

40:                                               ; preds = %5
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
