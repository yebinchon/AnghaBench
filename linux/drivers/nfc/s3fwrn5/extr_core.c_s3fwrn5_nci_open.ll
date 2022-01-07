; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_nci_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_nci_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.s3fwrn5_info = type { i32 }

@S3FWRN5_MODE_COLD = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@S3FWRN5_MODE_NCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @s3fwrn5_nci_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_nci_open(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.s3fwrn5_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %5 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %6 = call %struct.s3fwrn5_info* @nci_get_drvdata(%struct.nci_dev* %5)
  store %struct.s3fwrn5_info* %6, %struct.s3fwrn5_info** %4, align 8
  %7 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %8 = call i64 @s3fwrn5_get_mode(%struct.s3fwrn5_info* %7)
  %9 = load i64, i64* @S3FWRN5_MODE_COLD, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %16 = load i32, i32* @S3FWRN5_MODE_NCI, align 4
  %17 = call i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info* %15, i32 %16)
  %18 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %19 = call i32 @s3fwrn5_set_wake(%struct.s3fwrn5_info* %18, i32 1)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.s3fwrn5_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i64 @s3fwrn5_get_mode(%struct.s3fwrn5_info*) #1

declare dso_local i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info*, i32) #1

declare dso_local i32 @s3fwrn5_set_wake(%struct.s3fwrn5_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
