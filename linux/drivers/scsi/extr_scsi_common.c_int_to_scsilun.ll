; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_common.c_int_to_scsilun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_common.c_int_to_scsilun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_lun = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @int_to_scsilun(i32 %0, %struct.scsi_lun* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_lun*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.scsi_lun* %1, %struct.scsi_lun** %4, align 8
  %6 = load %struct.scsi_lun*, %struct.scsi_lun** %4, align 8
  %7 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @memset(i32* %8, i32 0, i32 8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 4
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = load %struct.scsi_lun*, %struct.scsi_lun** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %17, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 255
  %26 = load %struct.scsi_lun*, %struct.scsi_lun** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %25, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 16
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %14
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %5, align 4
  br label %10

38:                                               ; preds = %10
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
