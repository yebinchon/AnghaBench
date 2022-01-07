; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-q.c_status_to_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-q.c_status_to_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_TD_OK = common dso_local global i32 0, align 4
@USB_TD_RX_ER_CRC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@USB_TD_RX_ER_NONOCT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@USB_TD_RX_ER_OVERUN = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@USB_TD_RX_ER_BITSTUFF = common dso_local global i32 0, align 4
@USB_TD_RX_ER_PID = common dso_local global i32 0, align 4
@USB_TD_TX_ER_NAK = common dso_local global i32 0, align 4
@USB_TD_TX_ER_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@USB_TD_TX_ER_STALL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@USB_TD_TX_ER_UNDERUN = common dso_local global i32 0, align 4
@ENOSR = common dso_local global i32 0, align 4
@USB_TD_RX_DATA_UNDERUN = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@USB_TD_RX_DATA_OVERUN = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @status_to_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_to_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @USB_TD_OK, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @USB_TD_RX_ER_CRC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @EILSEQ, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %93

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @USB_TD_RX_ER_NONOCT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EPROTO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %93

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @USB_TD_RX_ER_OVERUN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ECOMM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %93

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @USB_TD_RX_ER_BITSTUFF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EPROTO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %93

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @USB_TD_RX_ER_PID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EILSEQ, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %93

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @USB_TD_TX_ER_NAK, align 4
  %51 = load i32, i32* @USB_TD_TX_ER_TIMEOUT, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %93

58:                                               ; preds = %48
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @USB_TD_TX_ER_STALL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EPIPE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %93

66:                                               ; preds = %58
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @USB_TD_TX_ER_UNDERUN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOSR, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %93

74:                                               ; preds = %66
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @USB_TD_RX_DATA_UNDERUN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EREMOTEIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %93

82:                                               ; preds = %74
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @USB_TD_RX_DATA_OVERUN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EOVERFLOW, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %87, %79, %71, %63, %55, %45, %37, %29, %21, %13, %7
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
