; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_set_hw_pin_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_set_hw_pin_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rzn1_pinctrl = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@RZN1_FUNC_MDIO0_HIGHZ = common dso_local global i32 0, align 4
@RZN1_FUNC_MDIO1_E1_SWITCH = common dso_local global i32 0, align 4
@RZN1_FUNC_MDIO1_HIGHZ = common dso_local global i32 0, align 4
@RZN1_FUNC_MDIO0_SWITCH = common dso_local global i32 0, align 4
@RZN1_FUNC_ETH_MDIO = common dso_local global i32 0, align 4
@RZN1_FUNC_MDIO0_E1_SWITCH = common dso_local global i32 0, align 4
@RZN1_FUNC_MDIO0_E1_HIGHZ = common dso_local global i32 0, align 4
@RZN1_FUNC_ETH_MDIO_E1 = common dso_local global i32 0, align 4
@RZN1_FUNC_MDIO1_SWITCH = common dso_local global i32 0, align 4
@RZN1_FUNC_MDIO1_E1_HIGHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"setting func for pin %u to %u\0A\00", align 1
@RZN1_L1_FUNC_MASK = common dso_local global i32 0, align 4
@RZN1_L1_FUNCTION = common dso_local global i32 0, align 4
@RZN1_FUNC_L2_OFFSET = common dso_local global i32 0, align 4
@RZN1_L1_FUNCTION_L2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rzn1_pinctrl*, i32, i32, i32)* @rzn1_set_hw_pin_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rzn1_set_hw_pin_func(%struct.rzn1_pinctrl* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rzn1_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rzn1_pinctrl* %0, %struct.rzn1_pinctrl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @RZN1_FUNC_MDIO0_HIGHZ, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %68

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @RZN1_FUNC_MDIO1_E1_SWITCH, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @RZN1_FUNC_MDIO1_HIGHZ, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  br label %29

28:                                               ; preds = %23
  store i32 1, i32* %14, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @RZN1_FUNC_MDIO0_SWITCH, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @RZN1_FUNC_MDIO0_HIGHZ, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @RZN1_FUNC_ETH_MDIO, align 4
  store i32 %37, i32* %8, align 4
  br label %63

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @RZN1_FUNC_MDIO0_E1_SWITCH, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @RZN1_FUNC_MDIO0_E1_HIGHZ, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* @RZN1_FUNC_ETH_MDIO_E1, align 4
  store i32 %46, i32* %8, align 4
  br label %62

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @RZN1_FUNC_MDIO1_SWITCH, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @RZN1_FUNC_MDIO1_HIGHZ, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* @RZN1_FUNC_ETH_MDIO, align 4
  store i32 %55, i32* %8, align 4
  br label %61

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @RZN1_FUNC_MDIO1_E1_HIGHZ, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* @RZN1_FUNC_ETH_MDIO_E1, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %6, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @rzn1_pinctrl_mdio_select(%struct.rzn1_pinctrl* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %19, %4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %6, align 8
  %71 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @ARRAY_SIZE(i32* %74)
  %76 = icmp uge i32 %69, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @RZN1_FUNC_MDIO0_HIGHZ, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %68
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %165

84:                                               ; preds = %77
  %85 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %6, align 8
  %86 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i32 @readl(i32* %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %10, align 4
  %95 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %6, align 8
  %96 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @readl(i32* %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %11, align 4
  %105 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %6, align 8
  %106 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* @RZN1_L1_FUNC_MASK, align 4
  %112 = load i32, i32* @RZN1_L1_FUNCTION, align 4
  %113 = shl i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %12, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @RZN1_FUNC_L2_OFFSET, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %84
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @RZN1_L1_FUNCTION, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %135

126:                                              ; preds = %84
  %127 = load i32, i32* @RZN1_L1_FUNCTION_L2, align 4
  %128 = load i32, i32* @RZN1_L1_FUNCTION, align 4
  %129 = shl i32 %127, %128
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @RZN1_FUNC_L2_OFFSET, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %126, %120
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %164

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %6, align 8
  %146 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %145, i32 0, i32 1
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i32 @writel(i32 %144, i32* %152)
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %6, align 8
  %156 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %155, i32 0, i32 0
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = call i32 @writel(i32 %154, i32* %162)
  br label %164

164:                                              ; preds = %143, %139
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %81
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @rzn1_pinctrl_mdio_select(%struct.rzn1_pinctrl*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
