; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_set_max_psdu_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_set_max_psdu_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i64*, i32 }

@MAX_LEN_CFG = common dso_local global i32 0, align 4
@MAX_LEN_CFG_MAX_PSDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_set_max_psdu_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_set_max_psdu_len(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2800_drv_data*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 0
  %9 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %8, align 8
  store %struct.rt2800_drv_data* %9, %struct.rt2800_drv_data** %6, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %6, align 8
  %15 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %10

27:                                               ; preds = %22, %10
  %28 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %6, align 8
  %29 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @min(i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = load i32, i32* @MAX_LEN_CFG, align 4
  %35 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @MAX_LEN_CFG_MAX_PSDU, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @rt2x00_set_field32(i32* %5, i32 %36, i32 %37)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = load i32, i32* @MAX_LEN_CFG, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
