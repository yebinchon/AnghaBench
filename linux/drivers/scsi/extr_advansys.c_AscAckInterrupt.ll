; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscAckInterrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscAckInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASCV_RISC_FLAG_B = common dso_local global i32 0, align 4
@ASC_RISC_FLAG_GEN_INT = common dso_local global i32 0, align 4
@ASCV_HOST_FLAG_B = common dso_local global i32 0, align 4
@ASC_HOST_FLAG_ACK_INT = common dso_local global i32 0, align 4
@CIW_INT_ACK = common dso_local global i32 0, align 4
@CSW_INT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @AscAckInterrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AscAckInterrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @ASCV_RISC_FLAG_B, align 4
  %9 = call i32 @AscReadLramByte(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %5, align 8
  %12 = icmp sgt i64 %10, 32767
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %20

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ASC_RISC_FLAG_GEN_INT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %6, label %20

20:                                               ; preds = %15, %13
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @ASCV_HOST_FLAG_B, align 4
  %23 = call i32 @AscReadLramByte(i32 %21, i32 %22)
  %24 = load i32, i32* @ASC_HOST_FLAG_ACK_INT, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @ASCV_HOST_FLAG_B, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ASC_HOST_FLAG_ACK_INT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @AscWriteLramByte(i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @CIW_INT_ACK, align 4
  %35 = call i32 @AscSetChipStatus(i32 %33, i32 %34)
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %50, %20
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @AscGetChipStatus(i32 %37)
  %39 = load i32, i32* @CSW_INT_PENDING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @CIW_INT_ACK, align 4
  %45 = call i32 @AscSetChipStatus(i32 %43, i32 %44)
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %5, align 8
  %48 = icmp sgt i64 %46, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %51

50:                                               ; preds = %42
  br label %36

51:                                               ; preds = %49, %36
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @ASCV_HOST_FLAG_B, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @AscWriteLramByte(i32 %52, i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @AscReadLramByte(i32, i32) #1

declare dso_local i32 @AscWriteLramByte(i32, i32, i32) #1

declare dso_local i32 @AscSetChipStatus(i32, i32) #1

declare dso_local i32 @AscGetChipStatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
