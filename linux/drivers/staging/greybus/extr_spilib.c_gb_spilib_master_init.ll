; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_gb_spilib_master_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_gb_spilib_master_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.device = type { i32 }
%struct.spilib_ops = type { i64, i64 }
%struct.gb_spilib = type { i64, i32, i32, i32, %struct.spilib_ops*, %struct.device*, %struct.gb_connection* }
%struct.spi_master = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"cannot alloc SPI master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@gb_spi_cleanup = common dso_local global i32 0, align 4
@gb_spi_setup = common dso_local global i32 0, align 4
@gb_spi_transfer_one_message = common dso_local global i32 0, align 4
@gb_spi_prepare_transfer_hardware = common dso_local global i32 0, align 4
@gb_spi_unprepare_transfer_hardware = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to allocate spi device %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_spilib_master_init(%struct.gb_connection* %0, %struct.device* %1, %struct.spilib_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_connection*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.spilib_ops*, align 8
  %8 = alloca %struct.gb_spilib*, align 8
  %9 = alloca %struct.spi_master*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.spilib_ops* %2, %struct.spilib_ops** %7, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.spi_master* @spi_alloc_master(%struct.device* %12, i32 48)
  store %struct.spi_master* %13, %struct.spi_master** %9, align 8
  %14 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %15 = icmp ne %struct.spi_master* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %135

21:                                               ; preds = %3
  %22 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %23 = call %struct.gb_spilib* @spi_master_get_devdata(%struct.spi_master* %22)
  store %struct.gb_spilib* %23, %struct.gb_spilib** %8, align 8
  %24 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %25 = load %struct.gb_spilib*, %struct.gb_spilib** %8, align 8
  %26 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %25, i32 0, i32 6
  store %struct.gb_connection* %24, %struct.gb_connection** %26, align 8
  %27 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %28 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %29 = call i32 @gb_connection_set_data(%struct.gb_connection* %27, %struct.spi_master* %28)
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.gb_spilib*, %struct.gb_spilib** %8, align 8
  %32 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %31, i32 0, i32 5
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.spilib_ops*, %struct.spilib_ops** %7, align 8
  %34 = load %struct.gb_spilib*, %struct.gb_spilib** %8, align 8
  %35 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %34, i32 0, i32 4
  store %struct.spilib_ops* %33, %struct.spilib_ops** %35, align 8
  %36 = load %struct.gb_spilib*, %struct.gb_spilib** %8, align 8
  %37 = call i32 @gb_spi_get_master_config(%struct.gb_spilib* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %127

41:                                               ; preds = %21
  %42 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %43 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.gb_spilib*, %struct.gb_spilib** %8, align 8
  %45 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %48 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.gb_spilib*, %struct.gb_spilib** %8, align 8
  %50 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %53 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 8
  %54 = load %struct.gb_spilib*, %struct.gb_spilib** %8, align 8
  %55 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %58 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 4
  %59 = load %struct.gb_spilib*, %struct.gb_spilib** %8, align 8
  %60 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %63 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @gb_spi_cleanup, align 4
  %65 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %66 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @gb_spi_setup, align 4
  %68 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %69 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @gb_spi_transfer_one_message, align 4
  %71 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %72 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.spilib_ops*, %struct.spilib_ops** %7, align 8
  %74 = icmp ne %struct.spilib_ops* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %41
  %76 = load %struct.spilib_ops*, %struct.spilib_ops** %7, align 8
  %77 = getelementptr inbounds %struct.spilib_ops, %struct.spilib_ops* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @gb_spi_prepare_transfer_hardware, align 4
  %82 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %83 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %75, %41
  %85 = load %struct.spilib_ops*, %struct.spilib_ops** %7, align 8
  %86 = icmp ne %struct.spilib_ops* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.spilib_ops*, %struct.spilib_ops** %7, align 8
  %89 = getelementptr inbounds %struct.spilib_ops, %struct.spilib_ops* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @gb_spi_unprepare_transfer_hardware, align 4
  %94 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %95 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %87, %84
  %97 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %98 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  %99 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %100 = call i32 @spi_register_master(%struct.spi_master* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %127

104:                                              ; preds = %96
  store i64 0, i64* %11, align 8
  br label %105

105:                                              ; preds = %123, %104
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.gb_spilib*, %struct.gb_spilib** %8, align 8
  %108 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %106, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = load %struct.gb_spilib*, %struct.gb_spilib** %8, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @gb_spi_setup_device(%struct.gb_spilib* %112, i64 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %119, i32 %120)
  br label %131

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %11, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %11, align 8
  br label %105

126:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %135

127:                                              ; preds = %103, %40
  %128 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %129 = call i32 @spi_master_put(%struct.spi_master* %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %4, align 4
  br label %135

131:                                              ; preds = %117
  %132 = load %struct.spi_master*, %struct.spi_master** %9, align 8
  %133 = call i32 @spi_unregister_master(%struct.spi_master* %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %131, %127, %126, %16
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.gb_spilib* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.spi_master*) #1

declare dso_local i32 @gb_spi_get_master_config(%struct.gb_spilib*) #1

declare dso_local i32 @spi_register_master(%struct.spi_master*) #1

declare dso_local i32 @gb_spi_setup_device(%struct.gb_spilib*, i64) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

declare dso_local i32 @spi_unregister_master(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
