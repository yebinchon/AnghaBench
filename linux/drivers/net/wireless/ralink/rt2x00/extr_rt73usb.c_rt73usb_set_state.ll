; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@STATE_AWAKE = common dso_local global i32 0, align 4
@MAC_CSR12 = common dso_local global i32 0, align 4
@MAC_CSR12_FORCE_WAKEUP = common dso_local global i32 0, align 4
@MAC_CSR12_PUT_TO_SLEEP = common dso_local global i32 0, align 4
@REGISTER_BUSY_COUNT = common dso_local global i32 0, align 4
@MAC_CSR12_BBP_CURRENT_STATE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt73usb_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt73usb_set_state(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @STATE_AWAKE, align 4
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %9, align 1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %16 = load i32, i32* @MAC_CSR12, align 4
  %17 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @MAC_CSR12_FORCE_WAKEUP, align 4
  %19 = load i8, i8* %9, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = trunc i32 %22 to i8
  %24 = call i32 @rt2x00_set_field32(i32* %6, i32 %18, i8 signext %23)
  %25 = load i32, i32* @MAC_CSR12_PUT_TO_SLEEP, align 4
  %26 = load i8, i8* %9, align 1
  %27 = call i32 @rt2x00_set_field32(i32* %6, i32 %25, i8 signext %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %29 = load i32, i32* @MAC_CSR12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %28, i32 %29, i32 %30)
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %56, %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @REGISTER_BUSY_COUNT, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %38 = load i32, i32* @MAC_CSR12, align 4
  %39 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MAC_CSR12_BBP_CURRENT_STATE, align 4
  %42 = call i32 @rt2x00_get_field32(i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i8, i8* %9, align 1
  %45 = icmp ne i8 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %62

50:                                               ; preds = %36
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %52 = load i32, i32* @MAC_CSR12, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %51, i32 %52, i32 %53)
  %55 = call i32 @msleep(i32 10)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %49
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i8 signext) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
