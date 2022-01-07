; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_new_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_3__, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.spi_controller = type { i32 }
%struct.spi_board_info = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to add properties to '%s': %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spi_device* @spi_new_device(%struct.spi_controller* %0, %struct.spi_board_info* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_board_info*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_board_info* %1, %struct.spi_board_info** %5, align 8
  %8 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %9 = call %struct.spi_device* @spi_alloc_device(%struct.spi_controller* %8)
  store %struct.spi_device* %9, %struct.spi_device** %6, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %11 = icmp ne %struct.spi_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.spi_device* null, %struct.spi_device** %3, align 8
  br label %106

13:                                               ; preds = %2
  %14 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %15 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = sext i32 %17 to i64
  %19 = icmp uge i64 %18, 4
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %23 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %28 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %33 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %38 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %46 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strlcpy(i32 %44, i32 %47, i32 4)
  %49 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %50 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %57 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %64 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %13
  %68 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %69 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %68, i32 0, i32 0
  %70 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %71 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @device_add_properties(%struct.TYPE_3__* %69, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %78 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %77, i32 0, i32 0
  %79 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %80 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  br label %103

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84, %13
  %86 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %87 = call i32 @spi_add_device(%struct.spi_device* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %93

91:                                               ; preds = %85
  %92 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  store %struct.spi_device* %92, %struct.spi_device** %3, align 8
  br label %106

93:                                               ; preds = %90
  %94 = load %struct.spi_board_info*, %struct.spi_board_info** %5, align 8
  %95 = getelementptr inbounds %struct.spi_board_info, %struct.spi_board_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %100 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %99, i32 0, i32 0
  %101 = call i32 @device_remove_properties(%struct.TYPE_3__* %100)
  br label %102

102:                                              ; preds = %98, %93
  br label %103

103:                                              ; preds = %102, %76
  %104 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %105 = call i32 @spi_dev_put(%struct.spi_device* %104)
  store %struct.spi_device* null, %struct.spi_device** %3, align 8
  br label %106

106:                                              ; preds = %103, %91, %12
  %107 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  ret %struct.spi_device* %107
}

declare dso_local %struct.spi_device* @spi_alloc_device(%struct.spi_controller*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @device_add_properties(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @spi_add_device(%struct.spi_device*) #1

declare dso_local i32 @device_remove_properties(%struct.TYPE_3__*) #1

declare dso_local i32 @spi_dev_put(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
