; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_fw.c__rtl88e_fw_free_to_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_fw.c__rtl88e_fw_free_to_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@REG_MCUFWDL = common dso_local global i32 0, align 4
@FWDL_ChkSum_rpt = common dso_local global i32 0, align 4
@POLLING_READY_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@MCUFWDL_RDY = common dso_local global i32 0, align 4
@WINTINI_RDY = common dso_local global i32 0, align 4
@FW_8192C_POLLING_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @_rtl88e_fw_free_to_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl88e_fw_free_to_go(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load i32, i32* @EIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %18, %1
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = load i32, i32* @REG_MCUFWDL, align 4
  %11 = call i32 @usb_read32(%struct.adapter* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @FWDL_ChkSum_rpt, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %24

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = sext i32 %19 to i64
  %22 = load i64, i64* @POLLING_READY_TIMEOUT_COUNT, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %8, label %24

24:                                               ; preds = %18, %16
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @POLLING_READY_TIMEOUT_COUNT, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %66

30:                                               ; preds = %24
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = load i32, i32* @REG_MCUFWDL, align 4
  %33 = call i32 @usb_read32(%struct.adapter* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @MCUFWDL_RDY, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @WINTINI_RDY, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = load i32, i32* @REG_MCUFWDL, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @usb_write32(%struct.adapter* %41, i32 %42, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = call i32 @rtl88e_firmware_selfreset(%struct.adapter* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %59, %30
  %48 = load %struct.adapter*, %struct.adapter** %2, align 8
  %49 = load i32, i32* @REG_MCUFWDL, align 4
  %50 = call i32 @usb_read32(%struct.adapter* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @WINTINI_RDY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %66

56:                                               ; preds = %47
  %57 = load i32, i32* @FW_8192C_POLLING_DELAY, align 4
  %58 = call i32 @udelay(i32 %57)
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  %62 = sext i32 %60 to i64
  %63 = load i64, i64* @POLLING_READY_TIMEOUT_COUNT, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %47, label %65

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %55, %29
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @usb_read32(%struct.adapter*, i32) #1

declare dso_local i32 @usb_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtl88e_firmware_selfreset(%struct.adapter*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
