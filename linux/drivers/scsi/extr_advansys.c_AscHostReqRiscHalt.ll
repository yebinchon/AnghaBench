; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscHostReqRiscHalt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscHostReqRiscHalt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASCV_STOP_CODE_B = common dso_local global i32 0, align 4
@ASC_STOP_HOST_REQ_RISC_HALT = common dso_local global i32 0, align 4
@ASC_STOP_REQ_RISC_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @AscHostReqRiscHalt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscHostReqRiscHalt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @AscIsChipHalted(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ASCV_STOP_CODE_B, align 4
  %14 = call i32 @AscReadLramByte(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ASCV_STOP_CODE_B, align 4
  %17 = load i32, i32* @ASC_STOP_HOST_REQ_RISC_HALT, align 4
  %18 = load i32, i32* @ASC_STOP_REQ_RISC_STOP, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @AscWriteLramByte(i32 %15, i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %28, %11
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @AscIsChipHalted(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %32

26:                                               ; preds = %21
  %27 = call i32 @mdelay(i32 100)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = icmp slt i32 %29, 20
  br i1 %31, label %21, label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ASCV_STOP_CODE_B, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @AscWriteLramByte(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @AscIsChipHalted(i32) #1

declare dso_local i32 @AscReadLramByte(i32, i32) #1

declare dso_local i32 @AscWriteLramByte(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
