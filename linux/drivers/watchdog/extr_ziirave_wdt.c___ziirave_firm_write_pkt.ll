; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ziirave_wdt.c___ziirave_firm_write_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ziirave_wdt.c___ziirave_firm_write_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.i2c_client = type { i32 }

@ZIIRAVE_FIRM_PKT_TOTAL_SIZE = common dso_local global i32 0, align 4
@ZIIRAVE_FIRM_PKT_DATA_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Firmware packet too long (%d)\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@ZIIRAVE_CMD_DOWNLOAD_PACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to send DOWNLOAD_PACKET: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Failed to write firmware packet at address 0x%04x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i64, i64*, i64)* @__ziirave_firm_write_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ziirave_firm_write_pkt(%struct.watchdog_device* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %10, align 4
  %21 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %22 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.i2c_client* @to_i2c_client(i32 %23)
  store %struct.i2c_client* %24, %struct.i2c_client** %11, align 8
  store i64 0, i64* %13, align 8
  %25 = load i32, i32* @ZIIRAVE_FIRM_PKT_TOTAL_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @ZIIRAVE_FIRM_PKT_DATA_SIZE, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i64, i64* %9, align 8
  %36 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EMSGSIZE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %111

39:                                               ; preds = %4
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @ziirave_firm_addr_readonly(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %111

47:                                               ; preds = %42, %39
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %48, i64* %49, align 16
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds i64, i64* %28, i64 1
  %52 = call i32 @put_unaligned_le16(i32 %50, i64* %51)
  %53 = getelementptr inbounds i64, i64* %28, i64 3
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @memcpy(i64* %53, i64* %54, i64 %55)
  %57 = getelementptr inbounds i64, i64* %28, i64 3
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* @ZIIRAVE_FIRM_PKT_DATA_SIZE, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub nsw i64 %60, %61
  %63 = call i32 @memset(i64* %59, i32 0, i64 %62)
  store i64 0, i64* %12, align 8
  br label %64

64:                                               ; preds = %75, %47
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %66, 3
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds i64, i64* %28, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %12, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %64

78:                                               ; preds = %64
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* @ZIIRAVE_FIRM_PKT_TOTAL_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %28, i64 %82
  store i64 %79, i64* %83, align 8
  %84 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %85 = load i32, i32* @ZIIRAVE_CMD_DOWNLOAD_PACKET, align 4
  %86 = mul nuw i64 8, %26
  %87 = trunc i64 %86 to i32
  %88 = call i32 @i2c_smbus_write_block_data(%struct.i2c_client* %84, i32 %85, i32 %87, i64* %28)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %78
  %92 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %95)
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %111

98:                                               ; preds = %78
  %99 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %100 = call i32 @ziirave_firm_read_ack(%struct.watchdog_device* %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = load i64, i64* %7, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %111

111:                                              ; preds = %109, %91, %46, %32
  %112 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i64 @ziirave_firm_addr_readonly(i64) #1

declare dso_local i32 @put_unaligned_le16(i32, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @i2c_smbus_write_block_data(%struct.i2c_client*, i32, i32, i64*) #1

declare dso_local i32 @ziirave_firm_read_ack(%struct.watchdog_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
