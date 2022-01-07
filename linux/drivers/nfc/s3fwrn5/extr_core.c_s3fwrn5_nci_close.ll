; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_nci_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_nci_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.s3fwrn5_info = type { i32 }

@S3FWRN5_MODE_COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @s3fwrn5_nci_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_nci_close(%struct.nci_dev* %0) #0 {
  %2 = alloca %struct.nci_dev*, align 8
  %3 = alloca %struct.s3fwrn5_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %2, align 8
  %4 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %5 = call %struct.s3fwrn5_info* @nci_get_drvdata(%struct.nci_dev* %4)
  store %struct.s3fwrn5_info* %5, %struct.s3fwrn5_info** %3, align 8
  %6 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %7 = call i32 @s3fwrn5_set_wake(%struct.s3fwrn5_info* %6, i32 0)
  %8 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %9 = load i32, i32* @S3FWRN5_MODE_COLD, align 4
  %10 = call i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info* %8, i32 %9)
  ret i32 0
}

declare dso_local %struct.s3fwrn5_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @s3fwrn5_set_wake(%struct.s3fwrn5_info*, i32) #1

declare dso_local i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
