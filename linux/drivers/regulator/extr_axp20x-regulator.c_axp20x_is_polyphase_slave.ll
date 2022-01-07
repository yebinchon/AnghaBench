; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_is_polyphase_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_is_polyphase_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp20x_dev = type { i32, i32 }

@AXP803_POLYPHASE_CTRL = common dso_local global i32 0, align 4
@AXP803_DCDC23_POLYPHASE_DUAL = common dso_local global i32 0, align 4
@AXP803_DCDC56_POLYPHASE_DUAL = common dso_local global i32 0, align 4
@AXP806_DCDC_MODE_CTRL2 = common dso_local global i32 0, align 4
@AXP806_DCDCABC_POLYPHASE_MASK = common dso_local global i32 0, align 4
@AXP806_DCDCAB_POLYPHASE_DUAL = common dso_local global i32 0, align 4
@AXP806_DCDCABC_POLYPHASE_TRI = common dso_local global i32 0, align 4
@AXP806_DCDCDE_POLYPHASE_DUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp20x_dev*, i32)* @axp20x_is_polyphase_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_is_polyphase_slave(%struct.axp20x_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.axp20x_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axp20x_dev* %0, %struct.axp20x_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %8 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %72 [
    i32 133, label %10
    i32 128, label %10
    i32 129, label %34
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %12 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AXP803_POLYPHASE_CTRL, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %6)
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %33 [
    i32 135, label %17
    i32 134, label %25
  ]

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @AXP803_DCDC23_POLYPHASE_DUAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %74

25:                                               ; preds = %10
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @AXP803_DCDC56_POLYPHASE_DUAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %10
  br label %73

34:                                               ; preds = %2
  %35 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %36 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AXP806_DCDC_MODE_CTRL2, align 4
  %39 = call i32 @regmap_read(i32 %37, i32 %38, i32* %6)
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %71 [
    i32 132, label %41
    i32 131, label %56
    i32 130, label %63
  ]

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @AXP806_DCDCABC_POLYPHASE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @AXP806_DCDCAB_POLYPHASE_DUAL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @AXP806_DCDCABC_POLYPHASE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @AXP806_DCDCABC_POLYPHASE_TRI, align 4
  %52 = icmp eq i32 %50, %51
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi i1 [ true, %41 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %74

56:                                               ; preds = %34
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @AXP806_DCDCABC_POLYPHASE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @AXP806_DCDCABC_POLYPHASE_TRI, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %74

63:                                               ; preds = %34
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @AXP806_DCDCDE_POLYPHASE_DUAL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %74

71:                                               ; preds = %34
  br label %73

72:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

73:                                               ; preds = %71, %33
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %72, %63, %56, %53, %25, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
