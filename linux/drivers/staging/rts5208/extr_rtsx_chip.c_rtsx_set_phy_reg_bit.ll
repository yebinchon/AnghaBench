; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_set_phy_reg_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_set_phy_reg_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_set_phy_reg_bit(%struct.rtsx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @rtsx_read_phy_register(%struct.rtsx_chip* %10, i32 %11, i32* %9)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @STATUS_SUCCESS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @rtsx_write_phy_register(%struct.rtsx_chip* %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @STATUS_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %37, i32* %4, align 4
  br label %41

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %36, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @rtsx_read_phy_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @rtsx_write_phy_register(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
