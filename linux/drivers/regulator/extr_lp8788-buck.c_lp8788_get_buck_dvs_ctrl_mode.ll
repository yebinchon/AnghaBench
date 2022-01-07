; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_get_buck_dvs_ctrl_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_get_buck_dvs_ctrl_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_buck = type { i32 }

@LP8788_BUCK1_DVS_SEL_M = common dso_local global i32 0, align 4
@LP8788_BUCK2_DVS_SEL_M = common dso_local global i32 0, align 4
@REGISTER = common dso_local global i32 0, align 4
@LP8788_BUCK_DVS_SEL = common dso_local global i32 0, align 4
@EXTPIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8788_buck*, i32)* @lp8788_get_buck_dvs_ctrl_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_get_buck_dvs_ctrl_mode(%struct.lp8788_buck* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lp8788_buck*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lp8788_buck* %0, %struct.lp8788_buck** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %13 [
    i32 129, label %9
    i32 128, label %11
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @LP8788_BUCK1_DVS_SEL_M, align 4
  store i32 %10, i32* %7, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @LP8788_BUCK2_DVS_SEL_M, align 4
  store i32 %12, i32* %7, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @REGISTER, align 4
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %11, %9
  %16 = load %struct.lp8788_buck*, %struct.lp8788_buck** %4, align 8
  %17 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LP8788_BUCK_DVS_SEL, align 4
  %20 = call i32 @lp8788_read_byte(i32 %18, i32 %19, i32* %6)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @REGISTER, align 4
  br label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @EXTPIN, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @lp8788_read_byte(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
