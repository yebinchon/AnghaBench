; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_resolve_supply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_resolve_supply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32*, i64, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@dummy_regulator_rdev = common dso_local global %struct.regulator_dev* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to resolve %s-supply for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @regulator_resolve_supply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_resolve_supply(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.device*
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %136

17:                                               ; preds = %1
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %19 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %136

23:                                               ; preds = %17
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.regulator_dev* @regulator_dev_lookup(%struct.device* %24, i32 %27)
  store %struct.regulator_dev* %28, %struct.regulator_dev** %4, align 8
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %30 = call i64 @IS_ERR(%struct.regulator_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %23
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %34 = call i32 @PTR_ERR(%struct.regulator_dev* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %136

41:                                               ; preds = %32
  %42 = call i64 (...) @have_full_constraints()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** @dummy_regulator_rdev, align 8
  store %struct.regulator_dev* %45, %struct.regulator_dev** %4, align 8
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %47 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %46, i32 0, i32 2
  %48 = call i32 @get_device(%struct.TYPE_5__* %47)
  br label %62

49:                                               ; preds = %41
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %52 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %55 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %58)
  %60 = load i32, i32* @EPROBE_DEFER, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %136

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %23
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %65 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %63
  %70 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %71 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %75 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %69
  %80 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %81 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @device_is_bound(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %79
  %87 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %88 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %87, i32 0, i32 2
  %89 = call i32 @put_device(%struct.TYPE_5__* %88)
  %90 = load i32, i32* @EPROBE_DEFER, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %136

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %69, %63
  %94 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %95 = call i32 @regulator_resolve_supply(%struct.regulator_dev* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %100 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %99, i32 0, i32 2
  %101 = call i32 @put_device(%struct.TYPE_5__* %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %136

103:                                              ; preds = %93
  %104 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %105 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %106 = call i32 @set_supply(%struct.regulator_dev* %104, %struct.regulator_dev* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %111 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %110, i32 0, i32 2
  %112 = call i32 @put_device(%struct.TYPE_5__* %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %136

114:                                              ; preds = %103
  %115 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %116 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %121 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @regulator_enable(i32* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %128 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @_regulator_put(i32* %129)
  %131 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %132 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %131, i32 0, i32 0
  store i32* null, i32** %132, align 8
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %136

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134, %114
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %126, %109, %98, %86, %49, %39, %22, %16
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.regulator_dev* @regulator_dev_lookup(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i64 @have_full_constraints(...) #1

declare dso_local i32 @get_device(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @device_is_bound(i64) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

declare dso_local i32 @set_supply(%struct.regulator_dev*, %struct.regulator_dev*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @_regulator_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
