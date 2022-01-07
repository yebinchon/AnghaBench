; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscLoadMicroCode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscLoadMicroCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"chksum 0x%lx\0A\00", align 1
@ASC_CODE_SEC_BEG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"mcode_chksum 0x%lx\0A\00", align 1
@ASCV_MCODE_CHKSUM_W = common dso_local global i32 0, align 4
@ASCV_MCODE_SIZE_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*, i32)* @AscLoadMicroCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AscLoadMicroCode(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = ashr i32 %12, 1
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @AscMemWordSetLram(i32 %14, i32 %15, i32 0, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @AscMemWordCopyPtrToLram(i32 %18, i32 %19, i32* %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @AscMemSumLramWord(i32 %23, i32 %24, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i64, i64* @ASC_CODE_SEC_BEG, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i64, i64* @ASC_CODE_SEC_BEG, align 8
  %37 = trunc i64 %36 to i32
  %38 = sub nsw i32 %35, %37
  %39 = sdiv i32 %38, 2
  %40 = call i64 @AscMemSumLramWord(i32 %30, i32 %32, i32 %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ASCV_MCODE_CHKSUM_W, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @AscWriteLramWord(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @ASCV_MCODE_SIZE_W, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @AscWriteLramWord(i32 %48, i32 %49, i32 %50)
  %52 = load i64, i64* %9, align 8
  ret i64 %52
}

declare dso_local i32 @AscMemWordSetLram(i32, i32, i32, i32) #1

declare dso_local i32 @AscMemWordCopyPtrToLram(i32, i32, i32*, i32) #1

declare dso_local i64 @AscMemSumLramWord(i32, i32, i32) #1

declare dso_local i32 @ASC_DBG(i32, i8*, i32) #1

declare dso_local i32 @AscWriteLramWord(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
