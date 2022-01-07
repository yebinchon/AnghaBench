; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox810se_pinmux_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox810se_pinmux_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.oxnas_pinctrl = type { i32, i32, %struct.oxnas_function*, %struct.oxnas_pin_group* }
%struct.oxnas_function = type { i8* }
%struct.oxnas_pin_group = type { i64, i32, %struct.oxnas_desc_function* }
%struct.oxnas_desc_function = type { i32, i64 }

@.str = private unnamed_addr constant [51 x i8] c"setting function %s bank %d pin %d fct %d mask %x\0A\00", align 1
@PINMUX_810_PRIMARY_SEL1 = common dso_local global i32 0, align 4
@PINMUX_810_PRIMARY_SEL0 = common dso_local global i32 0, align 4
@PINMUX_810_SECONDARY_SEL1 = common dso_local global i32 0, align 4
@PINMUX_810_SECONDARY_SEL0 = common dso_local global i32 0, align 4
@PINMUX_810_TERTIARY_SEL1 = common dso_local global i32 0, align 4
@PINMUX_810_TERTIARY_SEL0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot mux pin %u to function %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @oxnas_ox810se_pinmux_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_ox810se_pinmux_enable(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.oxnas_pinctrl*, align 8
  %9 = alloca %struct.oxnas_pin_group*, align 8
  %10 = alloca %struct.oxnas_function*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.oxnas_desc_function*, align 8
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.oxnas_pinctrl* %15, %struct.oxnas_pinctrl** %8, align 8
  %16 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %17 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %16, i32 0, i32 3
  %18 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %18, i64 %20
  store %struct.oxnas_pin_group* %21, %struct.oxnas_pin_group** %9, align 8
  %22 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %23 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %22, i32 0, i32 2
  %24 = load %struct.oxnas_function*, %struct.oxnas_function** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.oxnas_function, %struct.oxnas_function* %24, i64 %26
  store %struct.oxnas_function* %27, %struct.oxnas_function** %10, align 8
  %28 = load %struct.oxnas_function*, %struct.oxnas_function** %10, align 8
  %29 = getelementptr inbounds %struct.oxnas_function, %struct.oxnas_function* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %32 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %31, i32 0, i32 2
  %33 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %32, align 8
  store %struct.oxnas_desc_function* %33, %struct.oxnas_desc_function** %12, align 8
  %34 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %35 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @BIT(i32 %36)
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %138, %3
  %39 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %40 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %141

43:                                               ; preds = %38
  %44 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %45 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @strcmp(i64 %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %138, label %50

50:                                               ; preds = %43
  %51 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %52 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %56 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %59 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %62 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %54, i64 %57, i32 %60, i32 %63, i32 %64)
  %66 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %67 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %70 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %50
  %74 = load i32, i32* @PINMUX_810_PRIMARY_SEL1, align 4
  br label %77

75:                                               ; preds = %50
  %76 = load i32, i32* @PINMUX_810_PRIMARY_SEL0, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %81 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %13, align 4
  br label %87

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %86 ]
  %89 = call i32 @regmap_write_bits(i32 %68, i32 %78, i32 %79, i32 %88)
  %90 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %91 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %94 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @PINMUX_810_SECONDARY_SEL1, align 4
  br label %101

99:                                               ; preds = %87
  %100 = load i32, i32* @PINMUX_810_SECONDARY_SEL0, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %105 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %13, align 4
  br label %111

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32 [ %109, %108 ], [ 0, %110 ]
  %113 = call i32 @regmap_write_bits(i32 %92, i32 %102, i32 %103, i32 %112)
  %114 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %115 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.oxnas_pin_group*, %struct.oxnas_pin_group** %9, align 8
  %118 = getelementptr inbounds %struct.oxnas_pin_group, %struct.oxnas_pin_group* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* @PINMUX_810_TERTIARY_SEL1, align 4
  br label %125

123:                                              ; preds = %111
  %124 = load i32, i32* @PINMUX_810_TERTIARY_SEL0, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %129 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 3
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %13, align 4
  br label %135

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 0, %134 ]
  %137 = call i32 @regmap_write_bits(i32 %116, i32 %126, i32 %127, i32 %136)
  store i32 0, i32* %4, align 4
  br label %150

138:                                              ; preds = %43
  %139 = load %struct.oxnas_desc_function*, %struct.oxnas_desc_function** %12, align 8
  %140 = getelementptr inbounds %struct.oxnas_desc_function, %struct.oxnas_desc_function* %139, i32 1
  store %struct.oxnas_desc_function* %140, %struct.oxnas_desc_function** %12, align 8
  br label %38

141:                                              ; preds = %38
  %142 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %143 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @dev_err(i32 %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %141, %135
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
