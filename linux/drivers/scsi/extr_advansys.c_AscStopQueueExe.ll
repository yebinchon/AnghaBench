; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscStopQueueExe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscStopQueueExe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASCV_STOP_CODE_B = common dso_local global i32 0, align 4
@ASC_STOP_REQ_RISC_STOP = common dso_local global i32 0, align 4
@ASC_STOP_ACK_RISC_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @AscStopQueueExe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscStopQueueExe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ASCV_STOP_CODE_B, align 4
  %7 = call i32 @AscReadLramByte(i32 %5, i32 %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ASCV_STOP_CODE_B, align 4
  %12 = load i32, i32* @ASC_STOP_REQ_RISC_STOP, align 4
  %13 = call i32 @AscWriteLramByte(i32 %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %24, %9
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ASCV_STOP_CODE_B, align 4
  %17 = call i32 @AscReadLramByte(i32 %15, i32 %16)
  %18 = load i32, i32* @ASC_STOP_ACK_RISC_STOP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %30

22:                                               ; preds = %14
  %23 = call i32 @mdelay(i32 100)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = icmp slt i32 %25, 20
  br i1 %27, label %14, label %28

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @AscReadLramByte(i32, i32) #1

declare dso_local i32 @AscWriteLramByte(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
