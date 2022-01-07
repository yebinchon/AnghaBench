; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rzn1_pinctrl = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@__const.rzn1_pinconf_get.reg_drive = private unnamed_addr constant [4 x i32] [i32 4, i32 6, i32 8, i32 12], align 16
@EINVAL = common dso_local global i32 0, align 4
@RZN1_L1_FUNC_MASK = common dso_local global i32 0, align 4
@RZN1_L1_PIN_PULL = common dso_local global i32 0, align 4
@RZN1_L1_PIN_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@RZN1_L1_PIN_PULL_UP = common dso_local global i32 0, align 4
@RZN1_L1_PIN_PULL_DOWN = common dso_local global i32 0, align 4
@RZN1_L1_PIN_PULL_NONE = common dso_local global i32 0, align 4
@RZN1_L1_FUNCTION_L2 = common dso_local global i32 0, align 4
@RZN1_FUNC_HIGHZ = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @rzn1_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rzn1_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rzn1_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %18 = call %struct.rzn1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.rzn1_pinctrl* %18, %struct.rzn1_pinctrl** %8, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pinconf_to_config_param(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([4 x i32]* @__const.rzn1_pinconf_get.reg_drive to i8*), i64 16, i1 false)
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %8, align 8
  %25 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp uge i32 %23, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %122

34:                                               ; preds = %3
  %35 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %8, align 8
  %36 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @readl(i32* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @RZN1_L1_FUNC_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @RZN1_L1_PIN_PULL, align 4
  %49 = ashr i32 %47, %48
  %50 = and i32 %49, 3
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @RZN1_L1_PIN_DRIVE_STRENGTH, align 4
  %53 = ashr i32 %51, %52
  %54 = and i32 %53, 3
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %114 [
    i32 129, label %56
    i32 130, label %64
    i32 132, label %72
    i32 128, label %80
    i32 131, label %85
  ]

56:                                               ; preds = %34
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @RZN1_L1_PIN_PULL_UP, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %122

63:                                               ; preds = %56
  br label %117

64:                                               ; preds = %34
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @RZN1_L1_PIN_PULL_DOWN, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %122

71:                                               ; preds = %64
  br label %117

72:                                               ; preds = %34
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @RZN1_L1_PIN_PULL_NONE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %122

79:                                               ; preds = %72
  br label %117

80:                                               ; preds = %34
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  br label %117

85:                                               ; preds = %34
  %86 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %8, align 8
  %87 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @readl(i32* %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @RZN1_L1_FUNCTION_L2, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %85
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %122

104:                                              ; preds = %98
  br label %113

105:                                              ; preds = %85
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @RZN1_FUNC_HIGHZ, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %122

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %104
  br label %117

114:                                              ; preds = %34
  %115 = load i32, i32* @ENOTSUPP, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %122

117:                                              ; preds = %113, %80, %79, %71, %63
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call i64 @pinconf_to_config_packed(i32 %118, i32 %119)
  %121 = load i64*, i64** %7, align 8
  store i64 %120, i64* %121, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %114, %109, %101, %76, %68, %60, %31
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.rzn1_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
