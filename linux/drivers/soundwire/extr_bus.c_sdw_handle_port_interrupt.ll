; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_handle_port_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_handle_port_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_slave = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [28 x i8] c"SDW_DPN_INT read failed:%d\0A\00", align 1
@SDW_DPN_INT_TEST_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Test fail for port:%d\0A\00", align 1
@SDW_DPN_INT_PORT_READY = common dso_local global i32 0, align 4
@SDW_DPN_INT_IMPDEF1 = common dso_local global i32 0, align 4
@SDW_DPN_INT_IMPDEF2 = common dso_local global i32 0, align 4
@SDW_DPN_INT_IMPDEF3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"SDW_DPN_INT write failed:%d\0A\00", align 1
@SDW_READ_INTR_CLEAR_RETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Reached MAX_RETRY on port read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_slave*, i32, i32*)* @sdw_handle_port_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_handle_port_interrupt(%struct.sdw_slave* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdw_slave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sdw_slave* %0, %struct.sdw_slave** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @sdw_handle_dp0_interrupt(%struct.sdw_slave* %18, i32* %19)
  store i32 %20, i32* %4, align 4
  br label %143

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SDW_DPN_INT(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @sdw_read(%struct.sdw_slave* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %31 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %143

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %128, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @SDW_DPN_INT_TEST_FAIL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %46 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %45, i32 0, i32 2
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @SDW_DPN_INT_TEST_FAIL, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %44, %39
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @SDW_DPN_INT_PORT_READY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %59 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @complete(i32* %63)
  %65 = load i32, i32* @SDW_DPN_INT_PORT_READY, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %57, %52
  %69 = load i32, i32* @SDW_DPN_INT_IMPDEF1, align 4
  %70 = load i32, i32* @SDW_DPN_INT_IMPDEF2, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SDW_DPN_INT_IMPDEF3, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %68
  %85 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @sdw_write(%struct.sdw_slave* %85, i32 %86, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %93 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %4, align 4
  br label %143

100:                                              ; preds = %84
  %101 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @sdw_read(%struct.sdw_slave* %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %108 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %143

115:                                              ; preds = %100
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @SDW_READ_INTR_CLEAR_RETRY, align 4
  %127 = icmp slt i32 %125, %126
  br label %128

128:                                              ; preds = %124, %121
  %129 = phi i1 [ false, %121 ], [ %127, %124 ]
  br i1 %129, label %39, label %130

130:                                              ; preds = %128
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @SDW_READ_INTR_CLEAR_RETRY, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %136 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @dev_warn(i32* %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %141

141:                                              ; preds = %134, %130
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %106, %91, %29, %17
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @sdw_handle_dp0_interrupt(%struct.sdw_slave*, i32*) #1

declare dso_local i32 @SDW_DPN_INT(i32) #1

declare dso_local i32 @sdw_read(%struct.sdw_slave*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @sdw_write(%struct.sdw_slave*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
