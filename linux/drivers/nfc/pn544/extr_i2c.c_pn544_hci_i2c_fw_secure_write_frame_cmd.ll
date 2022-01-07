; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_secure_write_frame_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_secure_write_frame_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn544_i2c_phy = type { i32 }
%struct.pn544_i2c_fw_secure_frame = type { i32, i32, i32 }

@PN544_FW_I2C_MAX_PAYLOAD = common dso_local global i32 0, align 4
@PN544_FW_SECURE_CHUNK_WRITE_DATA_MAX_LEN = common dso_local global i32 0, align 4
@PN544_FW_CMD_SECURE_CHUNK_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn544_i2c_phy*, i32*, i32)* @pn544_hci_i2c_fw_secure_write_frame_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_i2c_fw_secure_write_frame_cmd(%struct.pn544_i2c_phy* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pn544_i2c_phy*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pn544_i2c_fw_secure_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pn544_i2c_phy* %0, %struct.pn544_i2c_phy** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @PN544_FW_I2C_MAX_PAYLOAD, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PN544_FW_SECURE_CHUNK_WRITE_DATA_MAX_LEN, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @PN544_FW_SECURE_CHUNK_WRITE_DATA_MAX_LEN, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %3
  %24 = bitcast i32* %17 to %struct.pn544_i2c_fw_secure_frame*
  store %struct.pn544_i2c_fw_secure_frame* %24, %struct.pn544_i2c_fw_secure_frame** %10, align 8
  %25 = load i32, i32* @PN544_FW_CMD_SECURE_CHUNK_WRITE, align 4
  %26 = load %struct.pn544_i2c_fw_secure_frame*, %struct.pn544_i2c_fw_secure_frame** %10, align 8
  %27 = getelementptr inbounds %struct.pn544_i2c_fw_secure_frame, %struct.pn544_i2c_fw_secure_frame* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.pn544_i2c_fw_secure_frame*, %struct.pn544_i2c_fw_secure_frame** %10, align 8
  %30 = getelementptr inbounds %struct.pn544_i2c_fw_secure_frame, %struct.pn544_i2c_fw_secure_frame* %29, i32 0, i32 1
  %31 = call i32 @put_unaligned_be16(i32 %28, i32* %30)
  %32 = load %struct.pn544_i2c_fw_secure_frame*, %struct.pn544_i2c_fw_secure_frame** %10, align 8
  %33 = getelementptr inbounds %struct.pn544_i2c_fw_secure_frame, %struct.pn544_i2c_fw_secure_frame* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memcpy(i32 %34, i32* %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 8, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %5, align 8
  %43 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @i2c_master_send(i32 %44, i32* %17, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %23
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %60

52:                                               ; preds = %23
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %57, %55, %50
  %61 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
