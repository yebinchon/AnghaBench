; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ziirave_wdt.c_ziirave_firm_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ziirave_wdt.c_ziirave_firm_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.firmware = type { i64 }
%struct.i2c_client = type { i32 }
%struct.ihex_binrec = type { i32, i32, i32 }

@ZIIRAVE_FIRM_PKT_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to send SET_READ_ADDR command: %d\0A\00", align 1
@ZIIRAVE_CMD_DOWNLOAD_READ_BYTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to READ DATA: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Firmware mismatch at address 0x%04x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, %struct.firmware*)* @ziirave_firm_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ziirave_firm_verify(%struct.watchdog_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ihex_binrec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %15 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %16 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.i2c_client* @to_i2c_client(i32 %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %6, align 8
  %19 = load i32, i32* @ZIIRAVE_FIRM_PKT_DATA_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load %struct.firmware*, %struct.firmware** %5, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.ihex_binrec*
  store %struct.ihex_binrec* %27, %struct.ihex_binrec** %7, align 8
  br label %28

28:                                               ; preds = %96, %2
  %29 = load %struct.ihex_binrec*, %struct.ihex_binrec** %7, align 8
  %30 = icmp ne %struct.ihex_binrec* %29, null
  br i1 %30, label %31, label %99

31:                                               ; preds = %28
  %32 = load %struct.ihex_binrec*, %struct.ihex_binrec** %7, align 8
  %33 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be16_to_cpu(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.ihex_binrec*, %struct.ihex_binrec** %7, align 8
  %37 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @ziirave_firm_addr_readonly(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %96

44:                                               ; preds = %31
  %45 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @ziirave_firm_set_read_addr(%struct.watchdog_device* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %100

56:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %78, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %63 = load i32, i32* @ZIIRAVE_CMD_DOWNLOAD_READ_BYTE, align 4
  %64 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %100

73:                                               ; preds = %61
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %22, i64 %76
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %57

81:                                               ; preds = %57
  %82 = load %struct.ihex_binrec*, %struct.ihex_binrec** %7, align 8
  %83 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i64 @memcmp(i32* %22, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %100

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %43
  %97 = load %struct.ihex_binrec*, %struct.ihex_binrec** %7, align 8
  %98 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %97)
  store %struct.ihex_binrec* %98, %struct.ihex_binrec** %7, align 8
  br label %28

99:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %100

100:                                              ; preds = %99, %88, %67, %50
  %101 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @ziirave_firm_addr_readonly(i32) #1

declare dso_local i32 @ziirave_firm_set_read_addr(%struct.watchdog_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
