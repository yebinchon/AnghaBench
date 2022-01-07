; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_fw.c__rtl88e_enable_fw_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_fw.c__rtl88e_enable_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_MCUFWDL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @_rtl88e_enable_fw_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88e_enable_fw_download(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = load i64, i64* @REG_MCUFWDL, align 8
  %11 = call i32 @usb_read8(%struct.adapter* %9, i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = load i64, i64* @REG_MCUFWDL, align 8
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, 1
  %16 = call i32 @usb_write8(%struct.adapter* %12, i64 %13, i32 %15)
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load i64, i64* @REG_MCUFWDL, align 8
  %19 = add nsw i64 %18, 2
  %20 = call i32 @usb_read8(%struct.adapter* %17, i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i64, i64* @REG_MCUFWDL, align 8
  %23 = add nsw i64 %22, 2
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 247
  %26 = call i32 @usb_write8(%struct.adapter* %21, i64 %23, i32 %25)
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = load i64, i64* @REG_MCUFWDL, align 8
  %30 = call i32 @usb_read8(%struct.adapter* %28, i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = load i64, i64* @REG_MCUFWDL, align 8
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 254
  %35 = call i32 @usb_write8(%struct.adapter* %31, i64 %32, i32 %34)
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = load i64, i64* @REG_MCUFWDL, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i32 @usb_write8(%struct.adapter* %36, i64 %38, i32 0)
  br label %40

40:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @usb_read8(%struct.adapter*, i64) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
