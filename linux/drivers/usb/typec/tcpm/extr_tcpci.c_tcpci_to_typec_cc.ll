; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_to_typec_cc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_to_typec_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPEC_CC_RP_DEF = common dso_local global i32 0, align 4
@TYPEC_CC_RA = common dso_local global i32 0, align 4
@TYPEC_CC_RP_1_5 = common dso_local global i32 0, align 4
@TYPEC_CC_RD = common dso_local global i32 0, align 4
@TYPEC_CC_RP_3_0 = common dso_local global i32 0, align 4
@TYPEC_CC_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @tcpci_to_typec_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpci_to_typec_cc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %32 [
    i32 1, label %7
    i32 2, label %16
    i32 3, label %25
    i32 0, label %31
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* @TYPEC_CC_RP_DEF, align 4
  br label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @TYPEC_CC_RA, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @TYPEC_CC_RP_1_5, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @TYPEC_CC_RD, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @TYPEC_CC_RP_3_0, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %2, %30
  br label %32

32:                                               ; preds = %2, %31
  %33 = load i32, i32* @TYPEC_CC_OPEN, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %28, %23, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
