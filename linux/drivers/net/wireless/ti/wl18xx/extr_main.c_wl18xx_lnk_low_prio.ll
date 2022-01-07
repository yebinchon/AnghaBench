; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_lnk_low_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_lnk_low_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wl1271_link = type { i64 }
%struct.wl18xx_fw_status_priv = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i64, %struct.wl1271_link*)* @wl18xx_lnk_low_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_lnk_low_prio(%struct.wl1271* %0, i64 %1, %struct.wl1271_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wl1271_link*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wl18xx_fw_status_priv*, align 8
  %10 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.wl1271_link* %2, %struct.wl1271_link** %7, align 8
  %11 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.wl18xx_fw_status_priv*
  store %struct.wl18xx_fw_status_priv* %16, %struct.wl18xx_fw_status_priv** %9, align 8
  %17 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %9, align 8
  %18 = icmp ne %struct.wl18xx_fw_status_priv* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %60

20:                                               ; preds = %3
  %21 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %9, align 8
  %22 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @le32_to_cpu(i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @test_bit(i64 %25, i64* %10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %9, align 8
  %30 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  br label %53

32:                                               ; preds = %20
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 0
  %36 = call i64 @test_bit(i64 %33, i64* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 1
  %42 = call i64 @test_bit(i64 %39, i64* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %9, align 8
  %46 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  br label %52

48:                                               ; preds = %38, %32
  %49 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %9, align 8
  %50 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %28
  %54 = load %struct.wl1271_link*, %struct.wl1271_link** %7, align 8
  %55 = getelementptr inbounds %struct.wl1271_link, %struct.wl1271_link* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp slt i64 %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @test_bit(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
