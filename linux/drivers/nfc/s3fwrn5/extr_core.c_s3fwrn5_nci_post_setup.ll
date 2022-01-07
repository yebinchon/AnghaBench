; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_nci_post_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_nci_post_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.s3fwrn5_info = type { i32 }

@S3FWRN5_MODE_NCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @s3fwrn5_nci_post_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_nci_post_setup(%struct.nci_dev* %0) #0 {
  %2 = alloca %struct.nci_dev*, align 8
  %3 = alloca %struct.s3fwrn5_info*, align 8
  %4 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %2, align 8
  %5 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %6 = call %struct.s3fwrn5_info* @nci_get_drvdata(%struct.nci_dev* %5)
  store %struct.s3fwrn5_info* %6, %struct.s3fwrn5_info** %3, align 8
  %7 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %8 = call i32 @s3fwrn5_firmware_update(%struct.s3fwrn5_info* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %14 = load i32, i32* @S3FWRN5_MODE_NCI, align 4
  %15 = call i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info* %13, i32 %14)
  %16 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %17 = call i32 @s3fwrn5_set_wake(%struct.s3fwrn5_info* %16, i32 1)
  %18 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %19 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nci_core_reset(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %30

25:                                               ; preds = %12
  %26 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %27 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nci_core_init(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %24, %11
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.s3fwrn5_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @s3fwrn5_firmware_update(%struct.s3fwrn5_info*) #1

declare dso_local i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info*, i32) #1

declare dso_local i32 @s3fwrn5_set_wake(%struct.s3fwrn5_info*, i32) #1

declare dso_local i32 @nci_core_reset(i32) #1

declare dso_local i32 @nci_core_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
