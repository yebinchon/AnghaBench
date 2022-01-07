; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, %struct.spi_controller* }
%struct.spi_controller = type { i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@spi_add_device.spi_add_lock = internal global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cs%d >= max %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@spi_bus_type = common dso_local global i32 0, align 4
@spi_dev_check = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"chipselect %d already in use\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"can't setup %s, status %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"can't add %s, status %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"registered child %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_add_device(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 4
  %9 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  store %struct.spi_controller* %9, %struct.spi_controller** %4, align 8
  %10 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %11 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %18 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %27 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %117

32:                                               ; preds = %1
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = call i32 @spi_dev_set_name(%struct.spi_device* %33)
  %35 = call i32 @mutex_lock(i32* @spi_add_device.spi_add_lock)
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load i32, i32* @spi_dev_check, align 4
  %38 = call i32 @bus_for_each_dev(i32* @spi_bus_type, i32* null, %struct.spi_device* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %114

47:                                               ; preds = %32
  %48 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %49 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %54 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %82

64:                                               ; preds = %47
  %65 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %66 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %71 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %69, %64
  br label %82

82:                                               ; preds = %81, %52
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = call i32 @spi_setup(%struct.spi_device* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %89, i32 0, i32 1
  %91 = call i32 @dev_name(i32* %90)
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92)
  br label %114

94:                                               ; preds = %82
  %95 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %96 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %95, i32 0, i32 1
  %97 = call i32 @device_add(i32* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %103 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %102, i32 0, i32 1
  %104 = call i32 @dev_name(i32* %103)
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %105)
  br label %113

107:                                              ; preds = %94
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %110 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %109, i32 0, i32 1
  %111 = call i32 @dev_name(i32* %110)
  %112 = call i32 @dev_dbg(%struct.device* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %107, %100
  br label %114

114:                                              ; preds = %113, %87, %41
  %115 = call i32 @mutex_unlock(i32* @spi_add_device.spi_add_lock)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %114, %21
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @spi_dev_set_name(%struct.spi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.spi_device*, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
