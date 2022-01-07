; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_suspend_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_suspend_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.regulator_dev*, i64)*, i32 (%struct.regulator_dev*, i64)*, i32 (%struct.regulator_dev*)*, i32 (%struct.regulator_dev*)* }
%struct.regulator_state = type { i64, i64, i64 }

@ENABLE_IN_SUSPEND = common dso_local global i64 0, align 8
@DISABLE_IN_SUSPEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"No configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enabled/disable\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to set voltage\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"failed to set mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @suspend_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend_set_state(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_state*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.regulator_state* @regulator_get_suspend_state(%struct.regulator_dev* %8, i32 %9)
  store %struct.regulator_state* %10, %struct.regulator_state** %7, align 8
  %11 = load %struct.regulator_state*, %struct.regulator_state** %7, align 8
  %12 = icmp eq %struct.regulator_state* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %177

14:                                               ; preds = %2
  %15 = load %struct.regulator_state*, %struct.regulator_state** %7, align 8
  %16 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ENABLE_IN_SUSPEND, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load %struct.regulator_state*, %struct.regulator_state** %7, align 8
  %22 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DISABLE_IN_SUSPEND, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %28 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.regulator_dev*, i64)*, i32 (%struct.regulator_dev*, i64)** %32, align 8
  %34 = icmp ne i32 (%struct.regulator_dev*, i64)* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32 (%struct.regulator_dev*, i64)*, i32 (%struct.regulator_dev*, i64)** %41, align 8
  %43 = icmp ne i32 (%struct.regulator_dev*, i64)* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %35, %26
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %46 = call i32 @rdev_warn(%struct.regulator_dev* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %35
  store i32 0, i32* %3, align 4
  br label %177

48:                                               ; preds = %20, %14
  %49 = load %struct.regulator_state*, %struct.regulator_state** %7, align 8
  %50 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ENABLE_IN_SUSPEND, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %56 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32 (%struct.regulator_dev*)*, i32 (%struct.regulator_dev*)** %60, align 8
  %62 = icmp ne i32 (%struct.regulator_dev*)* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %65 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32 (%struct.regulator_dev*)*, i32 (%struct.regulator_dev*)** %69, align 8
  %71 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %72 = call i32 %70(%struct.regulator_dev* %71)
  store i32 %72, i32* %6, align 4
  br label %100

73:                                               ; preds = %54, %48
  %74 = load %struct.regulator_state*, %struct.regulator_state** %7, align 8
  %75 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DISABLE_IN_SUSPEND, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %81 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32 (%struct.regulator_dev*)*, i32 (%struct.regulator_dev*)** %85, align 8
  %87 = icmp ne i32 (%struct.regulator_dev*)* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %79
  %89 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %90 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32 (%struct.regulator_dev*)*, i32 (%struct.regulator_dev*)** %94, align 8
  %96 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %97 = call i32 %95(%struct.regulator_dev* %96)
  store i32 %97, i32* %6, align 4
  br label %99

98:                                               ; preds = %79, %73
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %88
  br label %100

100:                                              ; preds = %99, %63
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %105 = call i32 @rdev_err(%struct.regulator_dev* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %177

107:                                              ; preds = %100
  %108 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %109 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32 (%struct.regulator_dev*, i64)*, i32 (%struct.regulator_dev*, i64)** %113, align 8
  %115 = icmp ne i32 (%struct.regulator_dev*, i64)* %114, null
  br i1 %115, label %116, label %141

116:                                              ; preds = %107
  %117 = load %struct.regulator_state*, %struct.regulator_state** %7, align 8
  %118 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %116
  %122 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %123 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32 (%struct.regulator_dev*, i64)*, i32 (%struct.regulator_dev*, i64)** %127, align 8
  %129 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %130 = load %struct.regulator_state*, %struct.regulator_state** %7, align 8
  %131 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 %128(%struct.regulator_dev* %129, i64 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %121
  %137 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %138 = call i32 @rdev_err(%struct.regulator_dev* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %177

140:                                              ; preds = %121
  br label %141

141:                                              ; preds = %140, %116, %107
  %142 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %143 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32 (%struct.regulator_dev*, i64)*, i32 (%struct.regulator_dev*, i64)** %147, align 8
  %149 = icmp ne i32 (%struct.regulator_dev*, i64)* %148, null
  br i1 %149, label %150, label %175

150:                                              ; preds = %141
  %151 = load %struct.regulator_state*, %struct.regulator_state** %7, align 8
  %152 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %150
  %156 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %157 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32 (%struct.regulator_dev*, i64)*, i32 (%struct.regulator_dev*, i64)** %161, align 8
  %163 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %164 = load %struct.regulator_state*, %struct.regulator_state** %7, align 8
  %165 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i32 %162(%struct.regulator_dev* %163, i64 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %155
  %171 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %172 = call i32 @rdev_err(%struct.regulator_dev* %171, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %3, align 4
  br label %177

174:                                              ; preds = %155
  br label %175

175:                                              ; preds = %174, %150, %141
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %170, %136, %103, %47, %13
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.regulator_state* @regulator_get_suspend_state(%struct.regulator_dev*, i32) #1

declare dso_local i32 @rdev_warn(%struct.regulator_dev*, i8*) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
