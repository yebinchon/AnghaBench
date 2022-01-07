; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_handle_dp0_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_handle_dp0_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_slave = type { %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@SDW_DP0_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SDW_DP0_INT read failed:%d\0A\00", align 1
@SDW_DP0_INT_TEST_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Test fail for port 0\0A\00", align 1
@SDW_DP0_INT_PORT_READY = common dso_local global i32 0, align 4
@SDW_DP0_INT_BRA_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"BRA failed\0A\00", align 1
@SDW_DP0_INT_IMPDEF1 = common dso_local global i32 0, align 4
@SDW_DP0_INT_IMPDEF2 = common dso_local global i32 0, align 4
@SDW_DP0_INT_IMPDEF3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"SDW_DP0_INT write failed:%d\0A\00", align 1
@SDW_READ_INTR_CLEAR_RETRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Reached MAX_RETRY on DP0 read\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_slave*, i32*)* @sdw_handle_dp0_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_handle_dp0_interrupt(%struct.sdw_slave* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdw_slave*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdw_slave* %0, %struct.sdw_slave** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %13 = load i32, i32* @SDW_DP0_INT, align 4
  %14 = call i32 @sdw_read(%struct.sdw_slave* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %19 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %142

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %127, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SDW_DP0_INT_TEST_FAIL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %34 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %33, i32 0, i32 1
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @SDW_DP0_INT_TEST_FAIL, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %27
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SDW_DP0_INT_PORT_READY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %47 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = call i32 @complete(i32* %49)
  %51 = load i32, i32* @SDW_DP0_INT_PORT_READY, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %45, %40
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SDW_DP0_INT_BRA_FAILURE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %61 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %60, i32 0, i32 1
  %62 = ptrtoint i32* %61 to i32
  %63 = call i32 (i32, i8*, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @SDW_DP0_INT_BRA_FAILURE, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = load i32, i32* @SDW_DP0_INT_IMPDEF1, align 4
  %69 = load i32, i32* @SDW_DP0_INT_IMPDEF2, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SDW_DP0_INT_IMPDEF3, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %67
  %84 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %85 = load i32, i32* @SDW_DP0_INT, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @sdw_write(%struct.sdw_slave* %84, i32 %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %92 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %142

99:                                               ; preds = %83
  %100 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %101 = load i32, i32* @SDW_DP0_INT, align 4
  %102 = call i32 @sdw_read(%struct.sdw_slave* %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %107 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %142

114:                                              ; preds = %99
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @SDW_READ_INTR_CLEAR_RETRY, align 4
  %126 = icmp slt i32 %124, %125
  br label %127

127:                                              ; preds = %123, %120
  %128 = phi i1 [ false, %120 ], [ %126, %123 ]
  br i1 %128, label %27, label %129

129:                                              ; preds = %127
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @SDW_READ_INTR_CLEAR_RETRY, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %135 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_warn(i32 %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %140

140:                                              ; preds = %133, %129
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %105, %90, %17
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @sdw_read(%struct.sdw_slave*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @sdw_write(%struct.sdw_slave*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
