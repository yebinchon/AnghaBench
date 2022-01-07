; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_check_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_check_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RDO_CAP_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Requested %u mV, %u mA for %u / %u mA\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Requested %u -> %u mV, %u mA for %u / %u mA\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Requested %u -> %u mV, %u mW for %u / %u mW\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @tcpm_pd_check_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pd_check_request(%struct.tcpm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  %11 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %12 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @rdo_index(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %21 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %130

27:                                               ; preds = %18
  %28 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %29 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sub i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pdo_type(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %121 [
    i32 129, label %39
    i32 128, label %39
    i32 130, label %86
  ]

39:                                               ; preds = %27, %27
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @rdo_max_current(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @rdo_op_current(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @pdo_max_current(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %130

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @RDO_CAP_MISMATCH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %130

64:                                               ; preds = %56, %52
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 129
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @pdo_fixed_voltage(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (%struct.tcpm_port*, i8*, i32, i32, i32, i32, ...) @tcpm_log(%struct.tcpm_port* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %72, i32 %73)
  br label %85

75:                                               ; preds = %64
  %76 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @pdo_min_voltage(i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @pdo_max_voltage(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (%struct.tcpm_port*, i8*, i32, i32, i32, i32, ...) @tcpm_log(%struct.tcpm_port* %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %67
  br label %124

86:                                               ; preds = %27
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @rdo_max_power(i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @rdo_op_power(i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @pdo_max_power(i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %130

99:                                               ; preds = %86
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ugt i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @RDO_CAP_MISMATCH, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %130

111:                                              ; preds = %103, %99
  %112 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @pdo_min_voltage(i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @pdo_max_voltage(i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (%struct.tcpm_port*, i8*, i32, i32, i32, i32, ...) @tcpm_log(%struct.tcpm_port* %112, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %116, i32 %117, i32 %118, i32 %119)
  br label %124

121:                                              ; preds = %27
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %130

124:                                              ; preds = %111, %85
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 1
  %127 = zext i1 %126 to i32
  %128 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %129 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %124, %121, %108, %96, %61, %49, %24
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @rdo_index(i32) #1

declare dso_local i32 @pdo_type(i32) #1

declare dso_local i32 @rdo_max_current(i32) #1

declare dso_local i32 @rdo_op_current(i32) #1

declare dso_local i32 @pdo_max_current(i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @pdo_fixed_voltage(i32) #1

declare dso_local i32 @pdo_min_voltage(i32) #1

declare dso_local i32 @pdo_max_voltage(i32) #1

declare dso_local i32 @rdo_max_power(i32) #1

declare dso_local i32 @rdo_op_power(i32) #1

declare dso_local i32 @pdo_max_power(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
