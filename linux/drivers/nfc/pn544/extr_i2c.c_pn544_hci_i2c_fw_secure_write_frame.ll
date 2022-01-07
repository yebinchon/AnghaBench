; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_secure_write_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_secure_write_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn544_i2c_phy = type { i64, i64, i32, i32, i64, i32, i32 }
%struct.pn544_i2c_fw_secure_frame = type { i64, i32 }

@PN544_FW_SECURE_FRAME_HEADER_LEN = common dso_local global i32 0, align 4
@PN544_FW_I2C_MAX_PAYLOAD = common dso_local global i32 0, align 4
@PN544_FW_CMD_SECURE_WRITE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FW_WORK_STATE_WAIT_SECURE_WRITE_ANSWER = common dso_local global i32 0, align 4
@PN544_FW_CMD_RESET = common dso_local global i64 0, align 8
@PN544_FW_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn544_i2c_phy*)* @pn544_hci_i2c_fw_secure_write_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_i2c_fw_secure_write_frame(%struct.pn544_i2c_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pn544_i2c_phy*, align 8
  %4 = alloca %struct.pn544_i2c_fw_secure_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.pn544_i2c_phy* %0, %struct.pn544_i2c_phy** %3, align 8
  %6 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %7 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.pn544_i2c_fw_secure_frame*
  store %struct.pn544_i2c_fw_secure_frame* %9, %struct.pn544_i2c_fw_secure_frame** %4, align 8
  %10 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %11 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.pn544_i2c_fw_secure_frame*, %struct.pn544_i2c_fw_secure_frame** %4, align 8
  %16 = getelementptr inbounds %struct.pn544_i2c_fw_secure_frame, %struct.pn544_i2c_fw_secure_frame* %15, i32 0, i32 1
  %17 = call i32 @get_unaligned_be16(i32* %16)
  %18 = load i32, i32* @PN544_FW_SECURE_FRAME_HEADER_LEN, align 4
  %19 = add nsw i32 %17, %18
  %20 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %21 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %24 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PN544_FW_I2C_MAX_PAYLOAD, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.pn544_i2c_fw_secure_frame*, %struct.pn544_i2c_fw_secure_frame** %4, align 8
  %30 = getelementptr inbounds %struct.pn544_i2c_fw_secure_frame, %struct.pn544_i2c_fw_secure_frame* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PN544_FW_CMD_SECURE_WRITE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %117

37:                                               ; preds = %28, %22
  %38 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %39 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PN544_FW_I2C_MAX_PAYLOAD, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %45 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %48 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %52 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @i2c_master_send(i32 %46, i8* %50, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %57 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  br label %92

61:                                               ; preds = %43
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %117

66:                                               ; preds = %61
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %117

69:                                               ; preds = %37
  %70 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %71 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %72 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %75 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %79 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %83 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = call i32 @pn544_hci_i2c_fw_secure_write_frame_cmd(%struct.pn544_i2c_phy* %70, i64 %77, i64 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %69
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %117

91:                                               ; preds = %69
  br label %92

92:                                               ; preds = %91, %60
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %96 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %94
  store i64 %98, i64* %96, align 8
  %99 = load i32, i32* @FW_WORK_STATE_WAIT_SECURE_WRITE_ANSWER, align 4
  %100 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %101 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load %struct.pn544_i2c_fw_secure_frame*, %struct.pn544_i2c_fw_secure_frame** %4, align 8
  %103 = getelementptr inbounds %struct.pn544_i2c_fw_secure_frame, %struct.pn544_i2c_fw_secure_frame* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PN544_FW_CMD_RESET, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %92
  %108 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %109 = load i32, i32* @PN544_FW_MODE, align 4
  %110 = call i32 @pn544_hci_i2c_enable_mode(%struct.pn544_i2c_phy* %108, i32 %109)
  %111 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %112 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %114 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %113, i32 0, i32 3
  %115 = call i32 @schedule_work(i32* %114)
  br label %116

116:                                              ; preds = %107, %92
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %89, %66, %64, %34
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i8*, i32) #1

declare dso_local i32 @pn544_hci_i2c_fw_secure_write_frame_cmd(%struct.pn544_i2c_phy*, i64, i64) #1

declare dso_local i32 @pn544_hci_i2c_enable_mode(%struct.pn544_i2c_phy*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
