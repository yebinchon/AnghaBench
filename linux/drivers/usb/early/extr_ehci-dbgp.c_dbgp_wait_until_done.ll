; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/early/extr_ehci-dbgp.c_dbgp_wait_until_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/early/extr_ehci-dbgp.c_dbgp_wait_until_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@DBGP_GO = common dso_local global i32 0, align 4
@ehci_debug = common dso_local global %struct.TYPE_2__* null, align 8
@DBGP_TIMEOUT = common dso_local global i32 0, align 4
@dbgp_not_safe = common dso_local global i32 0, align 4
@DBGP_ERR_BAD = common dso_local global i32 0, align 4
@USB_PID_NAK = common dso_local global i64 0, align 8
@USB_PID_NYET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dbgp_wait_until_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgp_wait_until_done(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %9

9:                                                ; preds = %63, %42, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DBGP_GO, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @writel(i32 %12, i32* %14)
  %16 = call i32 (...) @dbgp_wait_until_complete()
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i64 @readl(i32* %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @DBGP_PID_GET(i64 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %9
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @DBGP_TIMEOUT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @dbgp_not_safe, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 1, i32* @dbgp_not_safe, align 4
  br label %33

33:                                               ; preds = %32, %29, %24
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @DBGP_ERR_BAD, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %9

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %9
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @USB_PID_NAK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @USB_PID_NYET, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %45
  %54 = call i32 (...) @dbgp_breath()
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @USB_PID_NAK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %5, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %9

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %43
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dbgp_wait_until_complete(...) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i64 @DBGP_PID_GET(i64) #1

declare dso_local i32 @dbgp_breath(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
