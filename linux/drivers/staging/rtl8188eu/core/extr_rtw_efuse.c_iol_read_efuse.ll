; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_iol_read_efuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_iol_read_efuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@_FAIL = common dso_local global i64 0, align 8
@REG_TDECTRL = common dso_local global i64 0, align 8
@REG_PKT_BUFF_ACCESS_CTRL = common dso_local global i64 0, align 8
@TXPKT_BUF_SELECT = common dso_local global i32 0, align 4
@CMD_READ_EFUSE_MAP = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adapter*, i32, i32, i32, i32*)* @iol_read_efuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iol_read_efuse(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [512 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i64, i64* @_FAIL, align 8
  store i64 %14, i64* %11, align 8
  store i32 512, i32* %13, align 4
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = load i64, i64* @REG_TDECTRL, align 8
  %17 = add nsw i64 %16, 1
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @usb_write8(%struct.adapter* %15, i64 %17, i32 %18)
  %20 = getelementptr inbounds [512 x i32], [512 x i32]* %12, i64 0, i64 0
  %21 = call i32 @memset(i32* %20, i32 255, i32 512)
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = load i64, i64* @REG_PKT_BUFF_ACCESS_CTRL, align 8
  %24 = load i32, i32* @TXPKT_BUF_SELECT, align 4
  %25 = call i32 @usb_write8(%struct.adapter* %22, i64 %23, i32 %24)
  %26 = load %struct.adapter*, %struct.adapter** %6, align 8
  %27 = load i32, i32* @CMD_READ_EFUSE_MAP, align 4
  %28 = call i64 @iol_execute(%struct.adapter* %26, i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load %struct.adapter*, %struct.adapter** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds [512 x i32], [512 x i32]* %12, i64 0, i64 0
  %36 = call i32 @efuse_read_phymap_from_txpktbuf(%struct.adapter* %33, i32 %34, i32* %35, i32* %13)
  br label %37

37:                                               ; preds = %32, %5
  %38 = getelementptr inbounds [512 x i32], [512 x i32]* %12, i64 0, i64 0
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @efuse_phymap_to_logical(i32* %38, i32 %39, i32 %40, i32* %41)
  %43 = load i64, i64* %11, align 8
  ret i64 %43
}

declare dso_local i32 @usb_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @iol_execute(%struct.adapter*, i32) #1

declare dso_local i32 @efuse_read_phymap_from_txpktbuf(%struct.adapter*, i32, i32*, i32*) #1

declare dso_local i32 @efuse_phymap_to_logical(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
