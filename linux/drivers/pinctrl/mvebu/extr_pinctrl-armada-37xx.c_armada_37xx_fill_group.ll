; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_fill_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_fill_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_37xx_pinctrl = type { i32, i32, %struct.TYPE_2__*, i32, i32, %struct.armada_37xx_pin_group* }
%struct.TYPE_2__ = type { i32 }
%struct.armada_37xx_pin_group = type { i32, i32, i64*, i64, i64*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NB_FUNCS = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"More functions than pins(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada_37xx_pinctrl*)* @armada_37xx_fill_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_fill_group(%struct.armada_37xx_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.armada_37xx_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.armada_37xx_pin_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.armada_37xx_pinctrl* %0, %struct.armada_37xx_pinctrl** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %13 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %152, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %20 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %155

23:                                               ; preds = %17
  %24 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %25 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %24, i32 0, i32 5
  %26 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %26, i64 %28
  store %struct.armada_37xx_pin_group* %29, %struct.armada_37xx_pin_group** %7, align 8
  %30 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %31 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %34 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %37 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64* @devm_kcalloc(i32 %32, i32 %39, i32 8, i32 %40)
  %42 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %43 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %42, i32 0, i32 4
  store i64* %41, i64** %43, align 8
  %44 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %45 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %23
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %159

51:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %55 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %60 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %66 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %65, i32 0, i32 4
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %64, i64* %70, align 8
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %52

74:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %96, %74
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %78 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %75
  %82 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %83 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %89 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %88, i32 0, i32 4
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %90, i64 %94
  store i64 %87, i64* %95, align 8
  br label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %75

99:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %148, %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @NB_FUNCS, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %106 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %104, %100
  %114 = phi i1 [ false, %100 ], [ %112, %104 ]
  br i1 %114, label %115, label %151

115:                                              ; preds = %113
  %116 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %117 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.armada_37xx_pin_group*, %struct.armada_37xx_pin_group** %7, align 8
  %120 = getelementptr inbounds %struct.armada_37xx_pin_group, %struct.armada_37xx_pin_group* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @armada_37xx_add_function(i32 %118, i32* %6, i64 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @EOVERFLOW, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %115
  %132 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %133 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %136 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %135, i32 0, i32 2
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %131, %115
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %148

145:                                              ; preds = %141
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %145, %144
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %100

151:                                              ; preds = %113
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %17

155:                                              ; preds = %17
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %158 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %155, %48
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @armada_37xx_add_function(i32, i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
