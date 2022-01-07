; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_to_typec_cc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_to_typec_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCSC_CC_STATUS_SNK_RP = common dso_local global i32 0, align 4
@UCSC_CC_STATUS_PWRDEFSNK = common dso_local global i32 0, align 4
@TYPEC_CC_RP_DEF = common dso_local global i32 0, align 4
@UCSC_CC_STATUS_PWR_1P5A_SNK = common dso_local global i32 0, align 4
@TYPEC_CC_RP_1_5 = common dso_local global i32 0, align 4
@UCSC_CC_STATUS_PWR_3A_SNK = common dso_local global i32 0, align 4
@TYPEC_CC_RP_3_0 = common dso_local global i32 0, align 4
@TYPEC_CC_RD = common dso_local global i32 0, align 4
@TYPEC_CC_RA = common dso_local global i32 0, align 4
@TYPEC_CC_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wcove_to_typec_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_to_typec_cc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @UCSC_CC_STATUS_SNK_RP, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @UCSC_CC_STATUS_PWRDEFSNK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @TYPEC_CC_RP_DEF, align 4
  store i32 %14, i32* %2, align 4
  br label %43

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @UCSC_CC_STATUS_PWR_1P5A_SNK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @TYPEC_CC_RP_1_5, align 4
  store i32 %21, i32* %2, align 4
  br label %43

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @UCSC_CC_STATUS_PWR_3A_SNK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @TYPEC_CC_RP_3_0, align 4
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  br label %41

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @UCSC_CC_STATUS_RX(i32 %33)
  switch i32 %34, label %39 [
    i32 128, label %35
    i32 129, label %37
  ]

35:                                               ; preds = %32
  %36 = load i32, i32* @TYPEC_CC_RD, align 4
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @TYPEC_CC_RA, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* @TYPEC_CC_OPEN, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %37, %35, %27, %20, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @UCSC_CC_STATUS_RX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
