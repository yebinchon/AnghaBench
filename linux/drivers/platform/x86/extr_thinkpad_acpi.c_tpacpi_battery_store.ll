; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_battery_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_battery_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.device = type { i32 }
%struct.power_supply = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@battery_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BAT_PRIMARY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Wrong parameter: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.device*, i8*, i64)* @tpacpi_battery_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpacpi_battery_store(i32 %0, %struct.device* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.power_supply*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call %struct.power_supply* @to_power_supply(%struct.device* %14)
  store %struct.power_supply* %15, %struct.power_supply** %10, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @battery_info, i32 0, i32 1), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %20 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tpacpi_battery_get_id(i32 %23)
  store i32 %24, i32* %12, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @BAT_PRIMARY, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtoul(i8* %28, i32 10, i64* %11)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  br label %143

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %138 [
    i32 129, label %36
    i32 128, label %85
  ]

36:                                               ; preds = %34
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @battery_info, i32 0, i32 0), align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %143

47:                                               ; preds = %36
  %48 = load i64, i64* %11, align 8
  %49 = icmp ult i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %11, align 8
  %52 = icmp ugt i64 %51, 99
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %143

56:                                               ; preds = %50
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @battery_info, i32 0, i32 0), align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %57, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %143

68:                                               ; preds = %56
  %69 = load i32, i32* %12, align 4
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @tpacpi_battery_set(i32 129, i32 %69, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %143

76:                                               ; preds = %68
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @battery_info, i32 0, i32 0), align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i64 %77, i64* %82, align 8
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %143

85:                                               ; preds = %34
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @battery_info, i32 0, i32 0), align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %143

96:                                               ; preds = %85
  %97 = load i64, i64* %11, align 8
  %98 = icmp ult i64 %97, 1
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %11, align 8
  %101 = icmp ugt i64 %100, 100
  br i1 %101, label %102, label %105

102:                                              ; preds = %99, %96
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %143

105:                                              ; preds = %99
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @battery_info, i32 0, i32 0), align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %106, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %143

117:                                              ; preds = %105
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @battery_info, i32 0, i32 0), align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i64 %118, i64* %123, align 8
  %124 = load i64, i64* %11, align 8
  %125 = icmp eq i64 %124, 100
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  store i64 0, i64* %11, align 8
  br label %127

127:                                              ; preds = %126, %117
  %128 = load i32, i32* %12, align 4
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @tpacpi_battery_set(i32 128, i32 %128, i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %143

135:                                              ; preds = %127
  %136 = load i64, i64* %9, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %5, align 4
  br label %143

138:                                              ; preds = %34
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %138, %135, %132, %114, %102, %93, %76, %73, %65, %53, %44, %32
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.power_supply* @to_power_supply(%struct.device*) #1

declare dso_local i32 @tpacpi_battery_get_id(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @tpacpi_battery_set(i32, i32, i64) #1

declare dso_local i32 @pr_crit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
