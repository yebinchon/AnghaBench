; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ziirave_wdt.c_ziirave_firm_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ziirave_wdt.c_ziirave_firm_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.firmware = type { i64 }
%struct.i2c_client = type { i32 }
%struct.ihex_binrec = type { i32, i32*, i32 }

@ZIIRAVE_CMD_JUMP_TO_BOOTLOADER = common dso_local global i32 0, align 4
@ZIIRAVE_CMD_JUMP_TO_BOOTLOADER_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to jump to bootloader\0A\00", align 1
@ZIIRAVE_CMD_DOWNLOAD_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to start download\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"No ACK for start download\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to send EMPTY packet: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to verify firmware: %d\0A\00", align 1
@ZIIRAVE_CMD_DOWNLOAD_END = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to end firmware download: %d\0A\00", align 1
@ZIIRAVE_CMD_RESET_PROCESSOR = common dso_local global i32 0, align 4
@ZIIRAVE_CMD_RESET_PROCESSOR_MAGIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to reset the watchdog: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, %struct.firmware*)* @ziirave_firm_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ziirave_firm_upload(%struct.watchdog_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ihex_binrec*, align 8
  %8 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.i2c_client* @to_i2c_client(i32 %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = load i32, i32* @ZIIRAVE_CMD_JUMP_TO_BOOTLOADER, align 4
  %15 = load i32, i32* @ZIIRAVE_CMD_JUMP_TO_BOOTLOADER_MAGIC, align 4
  %16 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %129

24:                                               ; preds = %2
  %25 = call i32 @msleep(i32 500)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = load i32, i32* @ZIIRAVE_CMD_DOWNLOAD_START, align 4
  %28 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %129

36:                                               ; preds = %24
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %38 = call i32 @ziirave_firm_read_ack(%struct.watchdog_device* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %129

46:                                               ; preds = %36
  %47 = call i32 @msleep(i32 500)
  %48 = load %struct.firmware*, %struct.firmware** %5, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = bitcast i8* %51 to %struct.ihex_binrec*
  store %struct.ihex_binrec* %52, %struct.ihex_binrec** %7, align 8
  br label %53

53:                                               ; preds = %75, %46
  %54 = load %struct.ihex_binrec*, %struct.ihex_binrec** %7, align 8
  %55 = icmp ne %struct.ihex_binrec* %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %58 = load %struct.ihex_binrec*, %struct.ihex_binrec** %7, align 8
  %59 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = load %struct.ihex_binrec*, %struct.ihex_binrec** %7, align 8
  %63 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.ihex_binrec*, %struct.ihex_binrec** %7, align 8
  %66 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @be16_to_cpu(i32 %67)
  %69 = call i32 @ziirave_firm_write_pkt(%struct.watchdog_device* %57, i32 %61, i32* %64, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %129

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.ihex_binrec*, %struct.ihex_binrec** %7, align 8
  %77 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %76)
  store %struct.ihex_binrec* %77, %struct.ihex_binrec** %7, align 8
  br label %53

78:                                               ; preds = %53
  %79 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %80 = call i32 @ziirave_firm_write_pkt(%struct.watchdog_device* %79, i32 0, i32* null, i32 0)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %129

89:                                               ; preds = %78
  %90 = call i32 @msleep(i32 20)
  %91 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %92 = load %struct.firmware*, %struct.firmware** %5, align 8
  %93 = call i32 @ziirave_firm_verify(%struct.watchdog_device* %91, %struct.firmware* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %129

102:                                              ; preds = %89
  %103 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %104 = load i32, i32* @ZIIRAVE_CMD_DOWNLOAD_END, align 4
  %105 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %129

114:                                              ; preds = %102
  %115 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %116 = load i32, i32* @ZIIRAVE_CMD_RESET_PROCESSOR, align 4
  %117 = load i32, i32* @ZIIRAVE_CMD_RESET_PROCESSOR_MAGIC, align 4
  %118 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %115, i32 %116, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %129

127:                                              ; preds = %114
  %128 = call i32 @msleep(i32 500)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %121, %108, %96, %83, %72, %41, %31, %19
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @ziirave_firm_read_ack(%struct.watchdog_device*) #1

declare dso_local i32 @ziirave_firm_write_pkt(%struct.watchdog_device*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec*) #1

declare dso_local i32 @ziirave_firm_verify(%struct.watchdog_device*, %struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
