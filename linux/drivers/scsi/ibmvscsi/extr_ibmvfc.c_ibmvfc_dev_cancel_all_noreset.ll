; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_dev_cancel_all_noreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_dev_cancel_all_noreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@IBMVFC_TMF_SUPPRESS_ABTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i8*)* @ibmvfc_dev_cancel_all_noreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_dev_cancel_all_noreset(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i64*
  store i64* %7, i64** %5, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = load i32, i32* @IBMVFC_TMF_SUPPRESS_ABTS, align 4
  %10 = call i64 @ibmvfc_cancel_all(%struct.scsi_device* %8, i32 %9)
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = or i64 %12, %10
  store i64 %13, i64* %11, align 8
  ret void
}

declare dso_local i64 @ibmvfc_cancel_all(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
