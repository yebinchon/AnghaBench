; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscSetChipSynRegAtID.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscSetChipSynRegAtID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASC_MAX_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @AscSetChipSynRegAtID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscSetChipSynRegAtID(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @AscSetBank(i32 %10, i32 1)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @AscReadChipDvcID(i32 %12)
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %25, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ASC_MAX_TID, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 1, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %28

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %14

28:                                               ; preds = %23, %14
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @AscWriteChipDvcID(i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @AscReadChipDvcID(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 1, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @AscSetBank(i32 %39, i32 0)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @AscSetChipSyn(i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @AscGetChipSyn(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %38
  br label %51

50:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @AscSetBank(i32 %52, i32 1)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @AscWriteChipDvcID(i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @AscSetBank(i32 %57, i32 0)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @AscSetBank(i32, i32) #1

declare dso_local i32 @AscReadChipDvcID(i32) #1

declare dso_local i32 @AscWriteChipDvcID(i32, i32) #1

declare dso_local i32 @AscSetChipSyn(i32, i32) #1

declare dso_local i32 @AscGetChipSyn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
