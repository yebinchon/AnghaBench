; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ucs1002_power.c_ucs1002_set_usb_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ucs1002_power.c_ucs1002_set_usb_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucs1002_info = type { i32 }

@ucs1002_usb_types = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V_SET_ACTIVE_MODE_DEDICATED = common dso_local global i32 0, align 4
@V_SET_ACTIVE_MODE_BC12_SDP = common dso_local global i32 0, align 4
@V_SET_ACTIVE_MODE_BC12_DCP = common dso_local global i32 0, align 4
@V_SET_ACTIVE_MODE_BC12_CDP = common dso_local global i32 0, align 4
@UCS1002_REG_SWITCH_CFG = common dso_local global i32 0, align 4
@V_SET_ACTIVE_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucs1002_info*, i32)* @ucs1002_set_usb_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs1002_set_usb_type(%struct.ucs1002_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucs1002_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ucs1002_info* %0, %struct.ucs1002_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** @ucs1002_usb_types, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp sge i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %9
  %18 = load i32*, i32** @ucs1002_usb_types, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %31 [
    i32 129, label %23
    i32 128, label %25
    i32 130, label %27
    i32 131, label %29
  ]

23:                                               ; preds = %17
  %24 = load i32, i32* @V_SET_ACTIVE_MODE_DEDICATED, align 4
  store i32 %24, i32* %6, align 4
  br label %34

25:                                               ; preds = %17
  %26 = load i32, i32* @V_SET_ACTIVE_MODE_BC12_SDP, align 4
  store i32 %26, i32* %6, align 4
  br label %34

27:                                               ; preds = %17
  %28 = load i32, i32* @V_SET_ACTIVE_MODE_BC12_DCP, align 4
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %17
  %30 = load i32, i32* @V_SET_ACTIVE_MODE_BC12_CDP, align 4
  store i32 %30, i32* %6, align 4
  br label %34

31:                                               ; preds = %17
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %42

34:                                               ; preds = %29, %27, %25, %23
  %35 = load %struct.ucs1002_info*, %struct.ucs1002_info** %4, align 8
  %36 = getelementptr inbounds %struct.ucs1002_info, %struct.ucs1002_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @UCS1002_REG_SWITCH_CFG, align 4
  %39 = load i32, i32* @V_SET_ACTIVE_MODE_MASK, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %31, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
