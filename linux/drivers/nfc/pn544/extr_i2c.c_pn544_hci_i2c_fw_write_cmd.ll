; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pn544_i2c_fw_frame_write = type { i32*, i32, i32, i32, i32 }

@PN544_FW_I2C_MAX_PAYLOAD = common dso_local global i32 0, align 4
@PN544_FW_I2C_WRITE_DATA_MAX_LEN = common dso_local global i64 0, align 8
@PN544_FW_CMD_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*, i64)* @pn544_hci_i2c_fw_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_i2c_fw_write_cmd(%struct.i2c_client* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pn544_i2c_fw_frame_write*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @PN544_FW_I2C_MAX_PAYLOAD, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @PN544_FW_I2C_WRITE_DATA_MAX_LEN, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* @PN544_FW_I2C_WRITE_DATA_MAX_LEN, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %24, %4
  %27 = bitcast i32* %20 to %struct.pn544_i2c_fw_frame_write*
  store %struct.pn544_i2c_fw_frame_write* %27, %struct.pn544_i2c_fw_frame_write** %12, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 12, %28
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %30, 4
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @PN544_FW_CMD_WRITE, align 4
  %35 = load %struct.pn544_i2c_fw_frame_write*, %struct.pn544_i2c_fw_frame_write** %12, align 8
  %36 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, %struct.pn544_i2c_fw_frame_write* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.pn544_i2c_fw_frame_write*, %struct.pn544_i2c_fw_frame_write** %12, align 8
  %39 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, %struct.pn544_i2c_fw_frame_write* %38, i32 0, i32 3
  %40 = call i32 @put_unaligned_be16(i64 %37, i32* %39)
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 16711680
  %43 = ashr i32 %42, 16
  %44 = load %struct.pn544_i2c_fw_frame_write*, %struct.pn544_i2c_fw_frame_write** %12, align 8
  %45 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, %struct.pn544_i2c_fw_frame_write* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 65280
  %50 = ashr i32 %49, 8
  %51 = load %struct.pn544_i2c_fw_frame_write*, %struct.pn544_i2c_fw_frame_write** %12, align 8
  %52 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, %struct.pn544_i2c_fw_frame_write* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 255
  %57 = load %struct.pn544_i2c_fw_frame_write*, %struct.pn544_i2c_fw_frame_write** %12, align 8
  %58 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, %struct.pn544_i2c_fw_frame_write* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %56, i32* %60, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.pn544_i2c_fw_frame_write*, %struct.pn544_i2c_fw_frame_write** %12, align 8
  %63 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, %struct.pn544_i2c_fw_frame_write* %62, i32 0, i32 2
  %64 = call i32 @put_unaligned_be16(i64 %61, i32* %63)
  %65 = load %struct.pn544_i2c_fw_frame_write*, %struct.pn544_i2c_fw_frame_write** %12, align 8
  %66 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, %struct.pn544_i2c_fw_frame_write* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @memcpy(i32 %67, i32* %68, i64 %69)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @i2c_master_send(%struct.i2c_client* %71, i32* %20, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %26
  %78 = load i64, i64* %9, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %88

80:                                               ; preds = %26
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %88

88:                                               ; preds = %85, %83, %77
  %89 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @put_unaligned_be16(i64, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i64) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
