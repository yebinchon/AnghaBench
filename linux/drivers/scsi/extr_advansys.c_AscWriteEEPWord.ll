; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscWriteEEPWord.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscWriteEEPWord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASC_EEP_CMD_WRITE_ABLE = common dso_local global i32 0, align 4
@ASC_EEP_CMD_WRITE = common dso_local global i64 0, align 8
@ASC_EEP_CMD_WRITE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64)* @AscWriteEEPWord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AscWriteEEPWord(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @AscReadEEPWord(i32 %9, i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ASC_EEP_CMD_WRITE_ABLE, align 4
  %18 = call i32 @AscWriteEEPCmdReg(i32 %16, i32 %17)
  %19 = call i32 (...) @AscWaitEEPRead()
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @AscWriteEEPDataReg(i32 %20, i64 %21)
  %23 = call i32 (...) @AscWaitEEPRead()
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* @ASC_EEP_CMD_WRITE, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @AscWriteEEPCmdReg(i32 %24, i32 %28)
  %30 = call i32 (...) @AscWaitEEPWrite()
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ASC_EEP_CMD_WRITE_DISABLE, align 4
  %33 = call i32 @AscWriteEEPCmdReg(i32 %31, i32 %32)
  %34 = call i32 (...) @AscWaitEEPRead()
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @AscReadEEPWord(i32 %35, i32 %36)
  store i64 %37, i64* %4, align 8
  br label %40

38:                                               ; preds = %3
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %38, %15
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local i64 @AscReadEEPWord(i32, i32) #1

declare dso_local i32 @AscWriteEEPCmdReg(i32, i32) #1

declare dso_local i32 @AscWaitEEPRead(...) #1

declare dso_local i32 @AscWriteEEPDataReg(i32, i64) #1

declare dso_local i32 @AscWaitEEPWrite(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
