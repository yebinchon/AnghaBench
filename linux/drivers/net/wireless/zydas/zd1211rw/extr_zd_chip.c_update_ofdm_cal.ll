; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_update_ofdm_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_update_ofdm_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32** }
%struct.zd_ioreq16 = type { i32, i32 }

@ZD_CR67 = common dso_local global i32 0, align 4
@OFDM_36M_INDEX = common dso_local global i64 0, align 8
@ZD_CR66 = common dso_local global i32 0, align 4
@OFDM_48M_INDEX = common dso_local global i64 0, align 8
@ZD_CR65 = common dso_local global i32 0, align 4
@OFDM_54M_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, i32)* @update_ofdm_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_ofdm_cal(%struct.zd_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x %struct.zd_ioreq16], align 16
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ZD_CR67, align 4
  %7 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %8 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %10 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = load i64, i64* @OFDM_36M_INDEX, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %21 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 16
  %22 = load i32, i32* @ZD_CR66, align 4
  %23 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 1
  %24 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %26 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @OFDM_48M_INDEX, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 1
  %37 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @ZD_CR65, align 4
  %39 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 2
  %40 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %42 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* @OFDM_54M_INDEX, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 2
  %53 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 16
  %54 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %55 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %56 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %57 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %56)
  %58 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %54, %struct.zd_ioreq16* %55, i32 %57)
  ret i32 %58
}

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
