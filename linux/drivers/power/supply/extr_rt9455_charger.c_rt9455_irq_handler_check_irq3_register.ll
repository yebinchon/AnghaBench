; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_irq_handler_check_irq3_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_irq_handler_check_irq3_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt9455_info = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@RT9455_REG_IRQ3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read IRQ3 register\0A\00", align 1
@RT9455_REG_MASK3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to read MASK3 register\0A\00", align 1
@F_BSTBUSOVI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Boost fault. Overvoltage input occurred\0A\00", align 1
@F_BSTOLI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Boost fault. Overload\0A\00", align 1
@F_BSTLOWVI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Boost fault. Battery voltage too low\0A\00", align 1
@F_BST32SI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Boost fault. 32 seconds timeout occurred.\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"Boost fault occurred, therefore the charger goes into charge mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Failed to set VOREG before entering charge mode\0A\00", align 1
@F_OPA_MODE = common dso_local global i64 0, align 8
@RT9455_CHARGE_MODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to set charger in charge mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt9455_info*, i32*)* @rt9455_irq_handler_check_irq3_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_irq_handler_check_irq3_register(%struct.rt9455_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt9455_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt9455_info* %0, %struct.rt9455_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %12 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %16 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RT9455_REG_IRQ3, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %6)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %107

26:                                               ; preds = %2
  %27 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %28 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RT9455_REG_MASK3, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %7)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %107

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @F_BSTBUSOVI, align 4
  %41 = call i32 @GET_MASK(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @F_BSTOLI, align 4
  %50 = call i32 @GET_MASK(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @F_BSTLOWVI, align 4
  %59 = call i32 @GET_MASK(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @F_BST32SI, align 4
  %68 = call i32 @GET_MASK(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %8, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %74
  %78 = load %struct.device*, %struct.device** %8, align 8
  %79 = call i32 @dev_info(%struct.device* %78, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  %80 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %81 = call i32 @rt9455_set_voreg_before_charge_mode(%struct.rt9455_info* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %3, align 4
  br label %107

88:                                               ; preds = %77
  %89 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %90 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @F_OPA_MODE, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RT9455_CHARGE_MODE, align 4
  %96 = call i32 @regmap_field_write(i32 %94, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load %struct.device*, %struct.device** %8, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %3, align 4
  br label %107

103:                                              ; preds = %88
  %104 = load i32, i32* %9, align 4
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %74
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %99, %84, %34, %22
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @GET_MASK(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @rt9455_set_voreg_before_charge_mode(%struct.rt9455_info*) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
