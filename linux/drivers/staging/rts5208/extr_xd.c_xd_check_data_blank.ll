; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_check_data_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_check_data_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_STATUS = common dso_local global i32 0, align 4
@PARITY = common dso_local global i64 0, align 8
@XD_ECC1_ALL1 = common dso_local global i32 0, align 4
@XD_ECC2_ALL1 = common dso_local global i32 0, align 4
@RESERVED0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @xd_check_data_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_check_data_blank(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @PAGE_STATUS, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 255
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %55

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* @PARITY, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XD_ECC1_ALL1, align 4
  %28 = load i32, i32* @XD_ECC2_ALL1, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = load i32, i32* @XD_ECC1_ALL1, align 4
  %32 = load i32, i32* @XD_ECC2_ALL1, align 4
  %33 = or i32 %31, %32
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %55

36:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @RESERVED0, align 4
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 255
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %55

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %37

54:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49, %35, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
