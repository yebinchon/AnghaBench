; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_get_cmd_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_get_cmd_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"target: Unknown data direction for SCSI Opcode 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_DIR_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_cmd_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cmd_dir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  switch i32 %7, label %14 [
    i32 152, label %8
    i32 155, label %8
    i32 154, label %8
    i32 153, label %8
    i32 164, label %8
    i32 159, label %8
    i32 158, label %8
    i32 140, label %8
    i32 163, label %8
    i32 157, label %8
    i32 143, label %8
    i32 168, label %8
    i32 146, label %8
    i32 151, label %8
    i32 148, label %8
    i32 150, label %8
    i32 147, label %8
    i32 149, label %8
    i32 145, label %8
    i32 131, label %10
    i32 134, label %10
    i32 133, label %10
    i32 132, label %10
    i32 161, label %10
    i32 160, label %10
    i32 129, label %10
    i32 128, label %10
    i32 156, label %10
    i32 162, label %10
    i32 142, label %10
    i32 167, label %10
    i32 166, label %12
    i32 136, label %12
    i32 137, label %12
    i32 138, label %12
    i32 165, label %12
    i32 144, label %12
    i32 141, label %12
    i32 139, label %12
    i32 135, label %12
    i32 130, label %12
  ]

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %9 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %9, i32* %3, align 4
  br label %21

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %11 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %11, i32* %3, align 4
  br label %21

12:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %13 = load i32, i32* @DMA_NONE, align 4
  store i32 %13, i32* %3, align 4
  br label %21

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @pr_warn(i32 ptrtoint ([55 x i8]* @.str to i32), i8 zeroext %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %14, %12, %10, %8
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @pr_warn(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
