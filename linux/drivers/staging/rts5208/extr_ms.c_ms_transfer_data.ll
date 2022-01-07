; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_transfer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_transfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_TM_AUTO_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MS_FLASH_READ_ERROR = common dso_local global i32 0, align 4
@MS_TM_AUTO_WRITE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MS_FLASH_WRITE_ERROR = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@MS_TPC = common dso_local global i32 0, align 4
@MS_SECTOR_CNT_H = common dso_local global i32 0, align 4
@MS_SECTOR_CNT_L = common dso_local global i32 0, align 4
@MS_TRANS_CFG = common dso_local global i32 0, align 4
@MS_CFG = common dso_local global i32 0, align 4
@MS_2K_SECTOR_MODE = common dso_local global i32 0, align 4
@DMA_512 = common dso_local global i32 0, align 4
@MS_TRANSFER = common dso_local global i32 0, align 4
@MS_TRANSFER_START = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@MS_TRANSFER_END = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@STATUS_TIMEDOUT = common dso_local global i32 0, align 4
@MS_INT_CMDNK = common dso_local global i32 0, align 4
@MS_INT_ERR = common dso_local global i32 0, align 4
@MS_CRC16_ERR = common dso_local global i32 0, align 4
@MS_RDY_TIMEOUT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32, i32, i32, i32, i8*, i32)* @ms_transfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_transfer_data(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtsx_chip*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %24 = load i8*, i8** %18, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %9
  %27 = load i32, i32* %19, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %9
  %30 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %30, i32* %10, align 4
  br label %158

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @MS_TM_AUTO_READ, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %36, i32* %23, align 4
  %37 = load i32, i32* @MS_FLASH_READ_ERROR, align 4
  store i32 %37, i32* %22, align 4
  br label %48

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @MS_TM_AUTO_WRITE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  store i32 %44, i32* %22, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %46, i32* %10, align 4
  br label %158

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %50 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %49)
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %52 = load i32, i32* @WRITE_REG_CMD, align 4
  %53 = load i32, i32* @MS_TPC, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %51, i32 %52, i32 %53, i32 255, i32 %54)
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %57 = load i32, i32* @WRITE_REG_CMD, align 4
  %58 = load i32, i32* @MS_SECTOR_CNT_H, align 4
  %59 = load i32, i32* %14, align 4
  %60 = ashr i32 %59, 8
  %61 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %56, i32 %57, i32 %58, i32 255, i32 %60)
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %63 = load i32, i32* @WRITE_REG_CMD, align 4
  %64 = load i32, i32* @MS_SECTOR_CNT_L, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %62, i32 %63, i32 %64, i32 255, i32 %65)
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %68 = load i32, i32* @WRITE_REG_CMD, align 4
  %69 = load i32, i32* @MS_TRANS_CFG, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %67, i32 %68, i32 %69, i32 255, i32 %70)
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %48
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %76 = load i32, i32* @WRITE_REG_CMD, align 4
  %77 = load i32, i32* @MS_CFG, align 4
  %78 = load i32, i32* @MS_2K_SECTOR_MODE, align 4
  %79 = load i32, i32* @MS_2K_SECTOR_MODE, align 4
  %80 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  br label %87

81:                                               ; preds = %48
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %83 = load i32, i32* @WRITE_REG_CMD, align 4
  %84 = load i32, i32* @MS_CFG, align 4
  %85 = load i32, i32* @MS_2K_SECTOR_MODE, align 4
  %86 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %82, i32 %83, i32 %84, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %81, %74
  %88 = load i32, i32* %23, align 4
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %90 = load i32, i32* %14, align 4
  %91 = mul nsw i32 %90, 512
  %92 = load i32, i32* @DMA_512, align 4
  %93 = call i32 @trans_dma_enable(i32 %88, %struct.rtsx_chip* %89, i32 %91, i32 %92)
  %94 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %95 = load i32, i32* @WRITE_REG_CMD, align 4
  %96 = load i32, i32* @MS_TRANSFER, align 4
  %97 = load i32, i32* @MS_TRANSFER_START, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %94, i32 %95, i32 %96, i32 255, i32 %99)
  %101 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %102 = load i32, i32* @CHECK_REG_CMD, align 4
  %103 = load i32, i32* @MS_TRANSFER, align 4
  %104 = load i32, i32* @MS_TRANSFER_END, align 4
  %105 = load i32, i32* @MS_TRANSFER_END, align 4
  %106 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %108 = call i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip* %107)
  %109 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %110 = load i32, i32* @MS_CARD, align 4
  %111 = load i8*, i8** %18, align 8
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %23, align 4
  %115 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %116 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @rtsx_transfer_data(%struct.rtsx_chip* %109, i32 %110, i8* %111, i32 %112, i32 %113, i32 %114, i32 %117)
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %87
  %122 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %123 = load i32, i32* %22, align 4
  %124 = call i32 @ms_set_err_code(%struct.rtsx_chip* %122, i32 %123)
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* @ETIMEDOUT, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* @STATUS_TIMEDOUT, align 4
  store i32 %130, i32* %20, align 4
  br label %133

131:                                              ; preds = %121
  %132 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %132, i32* %20, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = load i32, i32* %20, align 4
  store i32 %134, i32* %10, align 4
  br label %158

135:                                              ; preds = %87
  %136 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %137 = load i32, i32* @MS_TRANS_CFG, align 4
  %138 = call i32 @rtsx_read_register(%struct.rtsx_chip* %136, i32 %137, i32* %21)
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* %20, align 4
  store i32 %142, i32* %10, align 4
  br label %158

143:                                              ; preds = %135
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* @MS_INT_CMDNK, align 4
  %146 = load i32, i32* @MS_INT_ERR, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @MS_CRC16_ERR, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @MS_RDY_TIMEOUT, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %144, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %155, i32* %10, align 4
  br label %158

156:                                              ; preds = %143
  %157 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %156, %154, %141, %133, %45, %29
  %159 = load i32, i32* %10, align 4
  ret i32 %159
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @trans_dma_enable(i32, %struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_transfer_data(%struct.rtsx_chip*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
