; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_set_toggling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_set_toggling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32, i32, i32, i32, i8*, i8*, i32 }

@FUSB_REG_CONTROL2 = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL2_TOGGLE = common dso_local global i32 0, align 4
@FUSB_REG_MASK = common dso_local global i32 0, align 4
@FUSB_REG_MASK_BC_LVL = common dso_local global i32 0, align 4
@FUSB_REG_MASK_COMP_CHNG = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL2_MODE_MASK = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL2_MODE_NONE = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL2_MODE_UFP = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL2_MODE_DFP = common dso_local global i32 0, align 4
@FUSB_REG_CONTROL2_MODE_DRP = common dso_local global i32 0, align 4
@FUSB_REG_MASKA = common dso_local global i32 0, align 4
@FUSB_REG_MASKA_TOGDONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Vconn is on during toggle start\00", align 1
@TYPEC_CC_OPEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, i32)* @fusb302_set_toggling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_set_toggling(%struct.fusb302_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fusb302_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %8 = load i32, i32* @FUSB_REG_CONTROL2, align 4
  %9 = load i32, i32* @FUSB_REG_CONTROL2_TOGGLE, align 4
  %10 = call i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip* %7, i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %128

15:                                               ; preds = %2
  %16 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %17 = load i32, i32* @FUSB_REG_MASK, align 4
  %18 = load i32, i32* @FUSB_REG_MASK_BC_LVL, align 4
  %19 = load i32, i32* @FUSB_REG_MASK_COMP_CHNG, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @fusb302_i2c_set_bits(%struct.fusb302_chip* %16, i32 %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %128

26:                                               ; preds = %15
  %27 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %28 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %30 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %76 [
    i32 130, label %32
    i32 129, label %43
    i32 128, label %54
    i32 131, label %65
  ]

32:                                               ; preds = %26
  %33 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %34 = load i32, i32* @FUSB_REG_CONTROL2, align 4
  %35 = load i32, i32* @FUSB_REG_CONTROL2_MODE_MASK, align 4
  %36 = load i32, i32* @FUSB_REG_CONTROL2_MODE_NONE, align 4
  %37 = call i32 @fusb302_i2c_mask_write(%struct.fusb302_chip* %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %128

42:                                               ; preds = %32
  br label %77

43:                                               ; preds = %26
  %44 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %45 = load i32, i32* @FUSB_REG_CONTROL2, align 4
  %46 = load i32, i32* @FUSB_REG_CONTROL2_MODE_MASK, align 4
  %47 = load i32, i32* @FUSB_REG_CONTROL2_MODE_UFP, align 4
  %48 = call i32 @fusb302_i2c_mask_write(%struct.fusb302_chip* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %128

53:                                               ; preds = %43
  br label %77

54:                                               ; preds = %26
  %55 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %56 = load i32, i32* @FUSB_REG_CONTROL2, align 4
  %57 = load i32, i32* @FUSB_REG_CONTROL2_MODE_MASK, align 4
  %58 = load i32, i32* @FUSB_REG_CONTROL2_MODE_DFP, align 4
  %59 = call i32 @fusb302_i2c_mask_write(%struct.fusb302_chip* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %128

64:                                               ; preds = %54
  br label %77

65:                                               ; preds = %26
  %66 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %67 = load i32, i32* @FUSB_REG_CONTROL2, align 4
  %68 = load i32, i32* @FUSB_REG_CONTROL2_MODE_MASK, align 4
  %69 = load i32, i32* @FUSB_REG_CONTROL2_MODE_DRP, align 4
  %70 = call i32 @fusb302_i2c_mask_write(%struct.fusb302_chip* %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %128

75:                                               ; preds = %65
  br label %77

76:                                               ; preds = %26
  br label %77

77:                                               ; preds = %76, %75, %64, %53, %42
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 130
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %82 = load i32, i32* @FUSB_REG_MASKA, align 4
  %83 = load i32, i32* @FUSB_REG_MASKA_TOGDONE, align 4
  %84 = call i32 @fusb302_i2c_set_bits(%struct.fusb302_chip* %81, i32 %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %128

89:                                               ; preds = %80
  %90 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %91 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %90, i32 0, i32 2
  store i32 0, i32* %91, align 8
  br label %123

92:                                               ; preds = %77
  %93 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %94 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @WARN(i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %98 = load i32, i32* @FUSB_REG_MASKA, align 4
  %99 = load i32, i32* @FUSB_REG_MASKA_TOGDONE, align 4
  %100 = call i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip* %97, i32 %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %128

105:                                              ; preds = %92
  %106 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %107 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  %108 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %109 = load i32, i32* @FUSB_REG_CONTROL2, align 4
  %110 = load i32, i32* @FUSB_REG_CONTROL2_TOGGLE, align 4
  %111 = call i32 @fusb302_i2c_set_bits(%struct.fusb302_chip* %108, i32 %109, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %128

116:                                              ; preds = %105
  %117 = load i8*, i8** @TYPEC_CC_OPEN, align 8
  %118 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %119 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** @TYPEC_CC_OPEN, align 8
  %121 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %122 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %116, %89
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %126 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %123, %114, %103, %87, %73, %62, %51, %40, %24, %13
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @fusb302_i2c_clear_bits(%struct.fusb302_chip*, i32, i32) #1

declare dso_local i32 @fusb302_i2c_set_bits(%struct.fusb302_chip*, i32, i32) #1

declare dso_local i32 @fusb302_i2c_mask_write(%struct.fusb302_chip*, i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
