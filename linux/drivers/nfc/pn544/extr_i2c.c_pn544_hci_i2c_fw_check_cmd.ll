; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_check_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_check_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pn544_i2c_fw_frame_check = type { i32*, i32, i32, i32, i32 }

@PN544_FW_CMD_CHECK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*, i32)* @pn544_hci_i2c_fw_check_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_i2c_fw_check_cmd(%struct.i2c_client* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pn544_i2c_fw_frame_check, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @crc_ccitt(i32 65535, i32* %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @PN544_FW_CMD_CHECK, align 4
  %17 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, %struct.pn544_i2c_fw_frame_check* %10, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, %struct.pn544_i2c_fw_frame_check* %10, i32 0, i32 3
  %19 = call i32 @put_unaligned_be16(i32 16, i32* %18)
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 16711680
  %22 = ashr i32 %21, 16
  %23 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, %struct.pn544_i2c_fw_frame_check* %10, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 65280
  %28 = ashr i32 %27, 8
  %29 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, %struct.pn544_i2c_fw_frame_check* %10, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, %struct.pn544_i2c_fw_frame_check* %10, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, %struct.pn544_i2c_fw_frame_check* %10, i32 0, i32 2
  %39 = call i32 @put_unaligned_be16(i32 %37, i32* %38)
  %40 = load i32, i32* %12, align 4
  %41 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, %struct.pn544_i2c_fw_frame_check* %10, i32 0, i32 1
  %42 = call i32 @put_unaligned_be16(i32 %40, i32* %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = bitcast %struct.pn544_i2c_fw_frame_check* %10 to i8*
  %45 = call i32 @i2c_master_send(%struct.i2c_client* %43, i8* %44, i32 24)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %47, 24
  br i1 %48, label %49, label %50

49:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

50:                                               ; preds = %4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %53, %49
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @crc_ccitt(i32, i32*, i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
