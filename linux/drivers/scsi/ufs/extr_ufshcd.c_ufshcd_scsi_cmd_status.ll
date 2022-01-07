; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_scsi_cmd_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_scsi_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufshcd_lrb = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufshcd_lrb*, i32)* @ufshcd_scsi_cmd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_scsi_cmd_status(%struct.ufshcd_lrb* %0, i32 %1) #0 {
  %3 = alloca %struct.ufshcd_lrb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ufshcd_lrb* %0, %struct.ufshcd_lrb** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %26 [
    i32 131, label %7
    i32 130, label %10
    i32 128, label %20
    i32 132, label %20
    i32 129, label %20
  ]

7:                                                ; preds = %2
  %8 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %3, align 8
  %9 = call i32 @ufshcd_copy_sense_data(%struct.ufshcd_lrb* %8)
  br label %10

10:                                               ; preds = %2, %7
  %11 = load i32, i32* @DID_OK, align 4
  %12 = shl i32 %11, 16
  %13 = load i32, i32* @COMMAND_COMPLETE, align 4
  %14 = shl i32 %13, 8
  %15 = or i32 %12, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %31

20:                                               ; preds = %2, %2, %2
  %21 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %3, align 8
  %22 = call i32 @ufshcd_copy_sense_data(%struct.ufshcd_lrb* %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @DID_ERROR, align 4
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %20, %10
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @ufshcd_copy_sense_data(%struct.ufshcd_lrb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
