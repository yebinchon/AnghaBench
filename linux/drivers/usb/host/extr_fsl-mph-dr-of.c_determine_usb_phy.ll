; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fsl-mph-dr-of.c_determine_usb_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fsl-mph-dr-of.c_determine_usb_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSL_USB2_PHY_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@FSL_USB2_PHY_ULPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"utmi\00", align 1
@FSL_USB2_PHY_UTMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"utmi_wide\00", align 1
@FSL_USB2_PHY_UTMI_WIDE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"utmi_dual\00", align 1
@FSL_USB2_PHY_UTMI_DUAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@FSL_USB2_PHY_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @determine_usb_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_usb_phy(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @FSL_USB2_PHY_NONE, align 4
  store i32 %7, i32* %2, align 4
  br label %40

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @FSL_USB2_PHY_ULPI, align 4
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @FSL_USB2_PHY_UTMI, align 4
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcasecmp(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @FSL_USB2_PHY_UTMI_WIDE, align 4
  store i32 %25, i32* %2, align 4
  br label %40

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strcasecmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @FSL_USB2_PHY_UTMI_DUAL, align 4
  store i32 %31, i32* %2, align 4
  br label %40

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strcasecmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @FSL_USB2_PHY_SERIAL, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @FSL_USB2_PHY_NONE, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %30, %24, %18, %12, %6
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
