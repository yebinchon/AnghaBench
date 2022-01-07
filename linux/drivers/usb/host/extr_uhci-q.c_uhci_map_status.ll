; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_map_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_map_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TD_CTRL_BITSTUFF = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@TD_CTRL_CRCTIMEO = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@TD_CTRL_BABBLE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@TD_CTRL_DBUFERR = common dso_local global i32 0, align 4
@ENOSR = common dso_local global i32 0, align 4
@TD_CTRL_STALLED = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @uhci_map_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_map_status(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TD_CTRL_BITSTUFF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @EPROTO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TD_CTRL_CRCTIMEO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EPROTO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %22
  %29 = load i32, i32* @EILSEQ, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %17
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TD_CTRL_BABBLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EOVERFLOW, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TD_CTRL_DBUFERR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOSR, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TD_CTRL_STALLED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EPIPE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %44, %36, %28, %25, %14, %8
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
