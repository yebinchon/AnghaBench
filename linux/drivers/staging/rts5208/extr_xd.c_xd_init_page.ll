; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_init_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_init_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.xd_info }
%struct.xd_info = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Init block 0x%x\0A\00", align 1
@STATUS_FAIL = common dso_local global i32 0, align 4
@BLK_NOT_FOUND = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@XD_PAGE_STATUS = common dso_local global i32 0, align 4
@XD_BLOCK_STATUS = common dso_local global i32 0, align 4
@XD_BLOCK_ADDR1_H = common dso_local global i32 0, align 4
@XD_BLOCK_ADDR1_L = common dso_local global i32 0, align 4
@XD_RW_ADDR = common dso_local global i32 0, align 4
@XD_CFG = common dso_local global i32 0, align 4
@XD_BA_TRANSFORM = common dso_local global i32 0, align 4
@XD_PAGE_CNT = common dso_local global i32 0, align 4
@XD_TRANSFER = common dso_local global i32 0, align 4
@XD_TRANSFER_START = common dso_local global i32 0, align 4
@XD_WRITE_REDUNDANT = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER_END = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@XD_DAT = common dso_local global i32 0, align 4
@PROGRAM_ERROR = common dso_local global i64 0, align 8
@XD_PRG_ERROR = common dso_local global i32 0, align 4
@XD_TO_ERROR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i64, i64)* @xd_init_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_init_page(%struct.rtsx_chip* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xd_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %17 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %16, i32 0, i32 0
  store %struct.xd_info* %17, %struct.xd_info** %12, align 8
  store i64 0, i64* %15, align 8
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %19 = call i32 @rtsx_dev(%struct.rtsx_chip* %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %26, i32* %6, align 4
  br label %129

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @BLK_NOT_FOUND, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %32, i32* %6, align 4
  br label %129

33:                                               ; preds = %27
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %35 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %34)
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %37 = load i32, i32* @WRITE_REG_CMD, align 4
  %38 = load i32, i32* @XD_PAGE_STATUS, align 4
  %39 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %36, i32 %37, i32 %38, i32 255, i32 255)
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %41 = load i32, i32* @WRITE_REG_CMD, align 4
  %42 = load i32, i32* @XD_BLOCK_STATUS, align 4
  %43 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %40, i32 %41, i32 %42, i32 255, i32 255)
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %45 = load i32, i32* @WRITE_REG_CMD, align 4
  %46 = load i32, i32* @XD_BLOCK_ADDR1_H, align 4
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = trunc i64 %49 to i32
  %51 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %44, i32 %45, i32 %46, i32 255, i32 %50)
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %53 = load i32, i32* @WRITE_REG_CMD, align 4
  %54 = load i32, i32* @XD_BLOCK_ADDR1_L, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = trunc i64 %56 to i32
  %58 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %52, i32 %53, i32 %54, i32 255, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.xd_info*, %struct.xd_info** %12, align 8
  %61 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @XD_RW_ADDR, align 4
  %71 = call i32 @xd_assign_phy_addr(%struct.rtsx_chip* %68, i32 %69, i32 %70)
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %73 = load i32, i32* @WRITE_REG_CMD, align 4
  %74 = load i32, i32* @XD_CFG, align 4
  %75 = load i32, i32* @XD_BA_TRANSFORM, align 4
  %76 = load i32, i32* @XD_BA_TRANSFORM, align 4
  %77 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %79 = load i32, i32* @WRITE_REG_CMD, align 4
  %80 = load i32, i32* @XD_PAGE_CNT, align 4
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %10, align 8
  %83 = sub nsw i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %78, i32 %79, i32 %80, i32 255, i32 %84)
  %86 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %87 = load i32, i32* @WRITE_REG_CMD, align 4
  %88 = load i32, i32* @XD_TRANSFER, align 4
  %89 = load i32, i32* @XD_TRANSFER_START, align 4
  %90 = load i32, i32* @XD_WRITE_REDUNDANT, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %86, i32 %87, i32 %88, i32 255, i32 %91)
  %93 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %94 = load i32, i32* @CHECK_REG_CMD, align 4
  %95 = load i32, i32* @XD_TRANSFER, align 4
  %96 = load i32, i32* @XD_TRANSFER_END, align 4
  %97 = load i32, i32* @XD_TRANSFER_END, align 4
  %98 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %93, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %100 = load i32, i32* @XD_CARD, align 4
  %101 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %99, i32 %100, i32 500)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %33
  %105 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %106 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %105)
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %108 = load i32, i32* @XD_DAT, align 4
  %109 = call i32 @rtsx_read_register(%struct.rtsx_chip* %107, i32 %108, i64* %15)
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* @PROGRAM_ERROR, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %104
  %115 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @xd_mark_bad_block(%struct.rtsx_chip* %115, i32 %116)
  %118 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %119 = load i32, i32* @XD_PRG_ERROR, align 4
  %120 = call i32 @xd_set_err_code(%struct.rtsx_chip* %118, i32 %119)
  br label %125

121:                                              ; preds = %104
  %122 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %123 = load i32, i32* @XD_TO_ERROR, align 4
  %124 = call i32 @xd_set_err_code(%struct.rtsx_chip* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %114
  %126 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %126, i32* %6, align 4
  br label %129

127:                                              ; preds = %33
  %128 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %127, %125, %31, %25
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @xd_assign_phy_addr(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_clear_xd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i64*) #1

declare dso_local i32 @xd_mark_bad_block(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @xd_set_err_code(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
