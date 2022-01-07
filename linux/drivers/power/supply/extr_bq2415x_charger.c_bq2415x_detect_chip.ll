; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_detect_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_detect_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32, i32 }
%struct.i2c_client = type { i32 }

@BQ2415X_PART_NUMBER = common dso_local global i32 0, align 4
@BQ24151A = common dso_local global i32 0, align 4
@BQ24151 = common dso_local global i32 0, align 4
@BQ24150A = common dso_local global i32 0, align 4
@BQ24152 = common dso_local global i32 0, align 4
@BQ24155 = common dso_local global i32 0, align 4
@BQ24150 = common dso_local global i32 0, align 4
@BQ24153A = common dso_local global i32 0, align 4
@BQ24153 = common dso_local global i32 0, align 4
@BQUNKNOWN = common dso_local global i32 0, align 4
@BQ24156A = common dso_local global i32 0, align 4
@BQ24156 = common dso_local global i32 0, align 4
@BQ24157S = common dso_local global i32 0, align 4
@BQ24158 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*)* @bq2415x_detect_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_detect_chip(%struct.bq2415x_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq2415x_device*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %3, align 8
  %6 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %7 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.i2c_client* @to_i2c_client(i32 %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %11 = load i32, i32* @BQ2415X_PART_NUMBER, align 4
  %12 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %103

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %101 [
    i32 107, label %21
    i32 106, label %73
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %71 [
    i32 0, label %23
    i32 1, label %35
    i32 2, label %59
  ]

23:                                               ; preds = %21
  %24 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %25 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BQ24151A, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %31 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %103

33:                                               ; preds = %23
  %34 = load i32, i32* @BQ24151, align 4
  store i32 %34, i32* %2, align 4
  br label %103

35:                                               ; preds = %21
  %36 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %37 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BQ24150A, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %43 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BQ24152, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %49 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BQ24155, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47, %41, %35
  %54 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %55 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %2, align 4
  br label %103

57:                                               ; preds = %47
  %58 = load i32, i32* @BQ24150, align 4
  store i32 %58, i32* %2, align 4
  br label %103

59:                                               ; preds = %21
  %60 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %61 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BQ24153A, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %67 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %2, align 4
  br label %103

69:                                               ; preds = %59
  %70 = load i32, i32* @BQ24153, align 4
  store i32 %70, i32* %2, align 4
  br label %103

71:                                               ; preds = %21
  %72 = load i32, i32* @BQUNKNOWN, align 4
  store i32 %72, i32* %2, align 4
  br label %103

73:                                               ; preds = %17
  %74 = load i32, i32* %5, align 4
  switch i32 %74, label %99 [
    i32 0, label %75
    i32 2, label %87
  ]

75:                                               ; preds = %73
  %76 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %77 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BQ24156A, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %83 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %2, align 4
  br label %103

85:                                               ; preds = %75
  %86 = load i32, i32* @BQ24156, align 4
  store i32 %86, i32* %2, align 4
  br label %103

87:                                               ; preds = %73
  %88 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %89 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BQ24157S, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %95 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %2, align 4
  br label %103

97:                                               ; preds = %87
  %98 = load i32, i32* @BQ24158, align 4
  store i32 %98, i32* %2, align 4
  br label %103

99:                                               ; preds = %73
  %100 = load i32, i32* @BQUNKNOWN, align 4
  store i32 %100, i32* %2, align 4
  br label %103

101:                                              ; preds = %17
  %102 = load i32, i32* @BQUNKNOWN, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %99, %97, %93, %85, %81, %71, %69, %65, %57, %53, %33, %29, %15
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @bq2415x_exec_command(%struct.bq2415x_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
