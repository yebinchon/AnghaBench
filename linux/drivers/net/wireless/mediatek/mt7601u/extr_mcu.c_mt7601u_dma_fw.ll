; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_dma_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_dma_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.mt7601u_dma_buf = type { i32 }

@MCU_FW_URB_MAX_PAYLOAD = common dso_local global i32 0, align 4
@MT_MCU_COM_REG1 = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, %struct.mt7601u_dma_buf*, i8*, i32, i64)* @mt7601u_dma_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_dma_fw(%struct.mt7601u_dev* %0, %struct.mt7601u_dma_buf* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt7601u_dev*, align 8
  %8 = alloca %struct.mt7601u_dma_buf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %7, align 8
  store %struct.mt7601u_dma_buf* %1, %struct.mt7601u_dma_buf** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %56

17:                                               ; preds = %5
  %18 = load i32, i32* @MCU_FW_URB_MAX_PAYLOAD, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @min(i32 %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %22 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @__mt7601u_dma_fw(%struct.mt7601u_dev* %21, %struct.mt7601u_dma_buf* %22, i8* %23, i32 %24, i64 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %56

31:                                               ; preds = %17
  %32 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %33 = load i32, i32* @MT_MCU_COM_REG1, align 4
  %34 = call i32 @BIT(i32 31)
  %35 = call i32 @BIT(i32 31)
  %36 = call i32 @mt76_poll_msec(%struct.mt7601u_dev* %32, i32 %33, i32 %34, i32 %35, i32 500)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %56

41:                                               ; preds = %31
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %43 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %44, i64 %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @mt7601u_dma_fw(%struct.mt7601u_dev* %42, %struct.mt7601u_dma_buf* %43, i8* %47, i32 %50, i64 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %41, %38, %29, %16
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @__mt7601u_dma_fw(%struct.mt7601u_dev*, %struct.mt7601u_dma_buf*, i8*, i32, i64) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
