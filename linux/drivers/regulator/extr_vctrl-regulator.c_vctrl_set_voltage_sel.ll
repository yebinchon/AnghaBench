; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vctrl_data = type { i32, i32, %struct.TYPE_4__*, i32, %struct.regulator* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.regulator = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to set control voltage to %duV\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to restore original voltage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @vctrl_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vctrl_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vctrl_data*, align 8
  %7 = alloca %struct.regulator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call %struct.vctrl_data* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.vctrl_data* %13, %struct.vctrl_data** %6, align 8
  %14 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %15 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %14, i32 0, i32 4
  %16 = load %struct.regulator*, %struct.regulator** %15, align 8
  store %struct.regulator* %16, %struct.regulator** %7, align 8
  %17 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %18 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %22 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp uge i32 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %205

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %33 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %38 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.regulator*, %struct.regulator** %7, align 8
  %43 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %44 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %52 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regulator_set_voltage(%struct.regulator* %42, i32 %50, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %41
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %65 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %41
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %205

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %134, %68
  %70 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %71 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %167

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %78 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %81 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp uge i32 %76, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %10, align 4
  br label %101

90:                                               ; preds = %75
  %91 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %92 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %95 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %90, %88
  %102 = load %struct.regulator*, %struct.regulator** %7, align 8
  %103 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %104 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %112 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @regulator_set_voltage(%struct.regulator* %102, i32 %110, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %101
  %123 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %124 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %123, i32 0, i32 0
  %125 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %126 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %132)
  br label %168

134:                                              ; preds = %101
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %137 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %139 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %142 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %149 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %147, %155
  %157 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %158 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @DIV_ROUND_UP(i32 %156, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @DIV_ROUND_UP(i32 %163, i32 10)
  %165 = add nsw i32 %162, %164
  %166 = call i32 @usleep_range(i32 %161, i32 %165)
  br label %69

167:                                              ; preds = %69
  store i32 0, i32* %3, align 4
  br label %205

168:                                              ; preds = %122
  %169 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %170 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %168
  %175 = load %struct.regulator*, %struct.regulator** %7, align 8
  %176 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %177 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %185 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %184, i32 0, i32 2
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @regulator_set_voltage(%struct.regulator* %175, i32 %183, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %174
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.vctrl_data*, %struct.vctrl_data** %6, align 8
  %197 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  br label %202

198:                                              ; preds = %174
  %199 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %200 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %199, i32 0, i32 0
  %201 = call i32 @dev_warn(i32* %200, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %202

202:                                              ; preds = %198, %194
  br label %203

203:                                              ; preds = %202, %168
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %203, %167, %66, %27
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.vctrl_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_set_voltage(%struct.regulator*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
