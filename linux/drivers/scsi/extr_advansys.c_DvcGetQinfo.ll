; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_DvcGetQinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_DvcGetQinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOP_RAM_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"DvcGetQinfo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32*, i32)* @DvcGetQinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DvcGetQinfo(i64 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @AscSetChipLramAddr(i64 %11, i32 %12)
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %42, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = mul nsw i32 2, %16
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %42

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @IOP_RAM_DATA, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inpw(i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, 255
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %36, i32* %41, align 4
  br label %42

42:                                               ; preds = %23, %22
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %9, align 4
  br label %14

45:                                               ; preds = %14
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = mul nsw i32 2, %47
  %49 = call i32 @ASC_DBG_PRT_HEX(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %46, i32 %48)
  ret void
}

declare dso_local i32 @AscSetChipLramAddr(i64, i32) #1

declare dso_local i32 @inpw(i64) #1

declare dso_local i32 @ASC_DBG_PRT_HEX(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
