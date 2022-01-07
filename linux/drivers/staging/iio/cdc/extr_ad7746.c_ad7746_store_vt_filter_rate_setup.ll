; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_store_vt_filter_rate_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/cdc/extr_ad7746.c_ad7746_store_vt_filter_rate_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7746_chip_info = type { i32 }

@ad7746_vt_filter_rate_table = common dso_local global i32** null, align 8
@AD7746_CONF_VTFS_MASK = common dso_local global i32 0, align 4
@AD7746_CONF_VTFS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7746_chip_info*, i32)* @ad7746_store_vt_filter_rate_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7746_store_vt_filter_rate_setup(%struct.ad7746_chip_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ad7746_chip_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ad7746_chip_info* %0, %struct.ad7746_chip_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32**, i32*** @ad7746_vt_filter_rate_table, align 8
  %9 = call i32 @ARRAY_SIZE(i32** %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = load i32**, i32*** @ad7746_vt_filter_rate_table, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %12, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %26

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %6

26:                                               ; preds = %21, %6
  %27 = load i32, i32* %5, align 4
  %28 = load i32**, i32*** @ad7746_vt_filter_rate_table, align 8
  %29 = call i32 @ARRAY_SIZE(i32** %28)
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32**, i32*** @ad7746_vt_filter_rate_table, align 8
  %33 = call i32 @ARRAY_SIZE(i32** %32)
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* @AD7746_CONF_VTFS_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %3, align 8
  %39 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @AD7746_CONF_VTFS_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.ad7746_chip_info*, %struct.ad7746_chip_info** %3, align 8
  %46 = getelementptr inbounds %struct.ad7746_chip_info, %struct.ad7746_chip_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
