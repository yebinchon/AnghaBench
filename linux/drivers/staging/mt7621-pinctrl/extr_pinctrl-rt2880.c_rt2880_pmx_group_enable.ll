; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pinctrl/extr_pinctrl-rt2880.c_rt2880_pmx_group_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pinctrl/extr_pinctrl-rt2880.c_rt2880_pmx_group_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.rt2880_priv = type { i32*, %struct.TYPE_6__**, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i64*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64* }

@SYSC_REG_GPIO_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s is already enabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SYSC_REG_GPIO_MODE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @rt2880_pmx_group_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2880_pmx_group_enable(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt2880_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.rt2880_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.rt2880_priv* %14, %struct.rt2880_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @SYSC_REG_GPIO_MODE, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %17 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %3
  %26 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %27 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %30 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %191

40:                                               ; preds = %3
  %41 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %42 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %49 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %57 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sge i32 %64, 32
  br i1 %65, label %66, label %70

66:                                               ; preds = %40
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %67, 32
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @SYSC_REG_GPIO_MODE2, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %40
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @rt_sysc_r32(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %74 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = shl i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %120, %70
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %89 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %87, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %86
  %101 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %102 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %105 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %104, i32 0, i32 2
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %103, i64 %118
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %100
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %86

123:                                              ; preds = %86
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %128 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %187

139:                                              ; preds = %123
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %170, %139
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %143 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %144, i64 %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %141, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %140
  %153 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %154 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %157 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %156, i32 0, i32 1
  %158 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %158, i64 %160
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32, i32* %155, i64 %168
  store i32 0, i32* %169, align 4
  br label %170

170:                                              ; preds = %152
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %140

173:                                              ; preds = %140
  %174 = load %struct.rt2880_priv*, %struct.rt2880_priv** %8, align 8
  %175 = getelementptr inbounds %struct.rt2880_priv, %struct.rt2880_priv* %174, i32 0, i32 1
  %176 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %176, i64 %178
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = shl i32 %182, %183
  %185 = load i32, i32* %9, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %173, %126
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @rt_sysc_w32(i32 %188, i32 %189)
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %187, %25
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.rt2880_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rt_sysc_r32(i32) #1

declare dso_local i32 @rt_sysc_w32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
