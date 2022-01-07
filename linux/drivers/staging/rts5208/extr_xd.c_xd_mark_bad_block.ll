; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_mark_bad_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_mark_bad_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.xd_info }
%struct.xd_info = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"mark block 0x%x as bad block\0A\00", align 1
@BLK_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@XD_PAGE_STATUS = common dso_local global i32 0, align 4
@XD_GPG = common dso_local global i32 0, align 4
@XD_BLOCK_STATUS = common dso_local global i32 0, align 4
@XD_LATER_BBLK = common dso_local global i32 0, align 4
@XD_BLOCK_ADDR1_H = common dso_local global i32 0, align 4
@XD_BLOCK_ADDR1_L = common dso_local global i32 0, align 4
@XD_BLOCK_ADDR2_H = common dso_local global i32 0, align 4
@XD_BLOCK_ADDR2_L = common dso_local global i32 0, align 4
@XD_RESERVED0 = common dso_local global i32 0, align 4
@XD_RESERVED1 = common dso_local global i32 0, align 4
@XD_RESERVED2 = common dso_local global i32 0, align 4
@XD_RESERVED3 = common dso_local global i32 0, align 4
@XD_RW_ADDR = common dso_local global i32 0, align 4
@XD_PAGE_CNT = common dso_local global i32 0, align 4
@XD_TRANSFER = common dso_local global i32 0, align 4
@XD_TRANSFER_START = common dso_local global i32 0, align 4
@XD_WRITE_REDUNDANT = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER_END = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@XD_DAT = common dso_local global i32 0, align 4
@PROGRAM_ERROR = common dso_local global i32 0, align 4
@XD_PRG_ERROR = common dso_local global i32 0, align 4
@XD_TO_ERROR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @xd_mark_bad_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_mark_bad_block(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 0
  store %struct.xd_info* %11, %struct.xd_info** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %13 = call i32 @rtsx_dev(%struct.rtsx_chip* %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BLK_NOT_FOUND, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %20, i32* %3, align 4
  br label %123

21:                                               ; preds = %2
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %23 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %22)
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %25 = load i32, i32* @WRITE_REG_CMD, align 4
  %26 = load i32, i32* @XD_PAGE_STATUS, align 4
  %27 = load i32, i32* @XD_GPG, align 4
  %28 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %24, i32 %25, i32 %26, i32 255, i32 %27)
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %30 = load i32, i32* @WRITE_REG_CMD, align 4
  %31 = load i32, i32* @XD_BLOCK_STATUS, align 4
  %32 = load i32, i32* @XD_LATER_BBLK, align 4
  %33 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %29, i32 %30, i32 %31, i32 255, i32 %32)
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %35 = load i32, i32* @WRITE_REG_CMD, align 4
  %36 = load i32, i32* @XD_BLOCK_ADDR1_H, align 4
  %37 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %34, i32 %35, i32 %36, i32 255, i32 255)
  %38 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %39 = load i32, i32* @WRITE_REG_CMD, align 4
  %40 = load i32, i32* @XD_BLOCK_ADDR1_L, align 4
  %41 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %38, i32 %39, i32 %40, i32 255, i32 255)
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %43 = load i32, i32* @WRITE_REG_CMD, align 4
  %44 = load i32, i32* @XD_BLOCK_ADDR2_H, align 4
  %45 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %42, i32 %43, i32 %44, i32 255, i32 255)
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %47 = load i32, i32* @WRITE_REG_CMD, align 4
  %48 = load i32, i32* @XD_BLOCK_ADDR2_L, align 4
  %49 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %46, i32 %47, i32 %48, i32 255, i32 255)
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %51 = load i32, i32* @WRITE_REG_CMD, align 4
  %52 = load i32, i32* @XD_RESERVED0, align 4
  %53 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %50, i32 %51, i32 %52, i32 255, i32 255)
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %55 = load i32, i32* @WRITE_REG_CMD, align 4
  %56 = load i32, i32* @XD_RESERVED1, align 4
  %57 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %54, i32 %55, i32 %56, i32 255, i32 255)
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %59 = load i32, i32* @WRITE_REG_CMD, align 4
  %60 = load i32, i32* @XD_RESERVED2, align 4
  %61 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %58, i32 %59, i32 %60, i32 255, i32 255)
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %63 = load i32, i32* @WRITE_REG_CMD, align 4
  %64 = load i32, i32* @XD_RESERVED3, align 4
  %65 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %62, i32 %63, i32 %64, i32 255, i32 255)
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.xd_info*, %struct.xd_info** %6, align 8
  %68 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %66, %69
  store i32 %70, i32* %8, align 4
  %71 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @XD_RW_ADDR, align 4
  %74 = call i32 @xd_assign_phy_addr(%struct.rtsx_chip* %71, i32 %72, i32 %73)
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %76 = load i32, i32* @WRITE_REG_CMD, align 4
  %77 = load i32, i32* @XD_PAGE_CNT, align 4
  %78 = load %struct.xd_info*, %struct.xd_info** %6, align 8
  %79 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %75, i32 %76, i32 %77, i32 255, i32 %81)
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %84 = load i32, i32* @WRITE_REG_CMD, align 4
  %85 = load i32, i32* @XD_TRANSFER, align 4
  %86 = load i32, i32* @XD_TRANSFER_START, align 4
  %87 = load i32, i32* @XD_WRITE_REDUNDANT, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %83, i32 %84, i32 %85, i32 255, i32 %88)
  %90 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %91 = load i32, i32* @CHECK_REG_CMD, align 4
  %92 = load i32, i32* @XD_TRANSFER, align 4
  %93 = load i32, i32* @XD_TRANSFER_END, align 4
  %94 = load i32, i32* @XD_TRANSFER_END, align 4
  %95 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %97 = load i32, i32* @XD_CARD, align 4
  %98 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %96, i32 %97, i32 500)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %21
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %103 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %102)
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %105 = load i32, i32* @XD_DAT, align 4
  %106 = call i32 @rtsx_read_register(%struct.rtsx_chip* %104, i32 %105, i32* %9)
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @PROGRAM_ERROR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %113 = load i32, i32* @XD_PRG_ERROR, align 4
  %114 = call i32 @xd_set_err_code(%struct.rtsx_chip* %112, i32 %113)
  br label %119

115:                                              ; preds = %101
  %116 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %117 = load i32, i32* @XD_TO_ERROR, align 4
  %118 = call i32 @xd_set_err_code(%struct.rtsx_chip* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %120, i32* %3, align 4
  br label %123

121:                                              ; preds = %21
  %122 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %119, %19
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @xd_assign_phy_addr(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_clear_xd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @xd_set_err_code(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
