; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_erase_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.xd_info }
%struct.xd_info = type { i32 }

@BLK_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@XD_ERASE_ADDR = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER = common dso_local global i32 0, align 4
@XD_TRANSFER_START = common dso_local global i32 0, align 4
@XD_ERASE = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER_END = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@XD_DAT = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@PROGRAM_ERROR = common dso_local global i32 0, align 4
@XD_PRG_ERROR = common dso_local global i32 0, align 4
@XD_ERASE_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @xd_erase_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_erase_block(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 0
  store %struct.xd_info* %13, %struct.xd_info** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BLK_NOT_FOUND, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %18, i32* %3, align 4
  br label %117

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.xd_info*, %struct.xd_info** %6, align 8
  %22 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %20, %23
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %106, %19
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %109

28:                                               ; preds = %25
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %30 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %29)
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @XD_ERASE_ADDR, align 4
  %34 = call i32 @xd_assign_phy_addr(%struct.rtsx_chip* %31, i32 %32, i32 %33)
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %36 = load i32, i32* @WRITE_REG_CMD, align 4
  %37 = load i32, i32* @XD_TRANSFER, align 4
  %38 = load i32, i32* @XD_TRANSFER_START, align 4
  %39 = load i32, i32* @XD_ERASE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %35, i32 %36, i32 %37, i32 255, i32 %40)
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %43 = load i32, i32* @CHECK_REG_CMD, align 4
  %44 = load i32, i32* @XD_TRANSFER, align 4
  %45 = load i32, i32* @XD_TRANSFER_END, align 4
  %46 = load i32, i32* @XD_TRANSFER_END, align 4
  %47 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %49 = load i32, i32* @READ_REG_CMD, align 4
  %50 = load i32, i32* @XD_DAT, align 4
  %51 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %48, i32 %49, i32 %50, i32 0, i32 0)
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %53 = load i32, i32* @XD_CARD, align 4
  %54 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %52, i32 %53, i32 250)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %28
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %59 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %58)
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %61 = load i32, i32* @XD_DAT, align 4
  %62 = call i32 @rtsx_read_register(%struct.rtsx_chip* %60, i32 %61, i32* %8)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PROGRAM_ERROR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @xd_mark_bad_block(%struct.rtsx_chip* %68, i32 %69)
  %71 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %72 = load i32, i32* @XD_PRG_ERROR, align 4
  %73 = call i32 @xd_set_err_code(%struct.rtsx_chip* %71, i32 %72)
  %74 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %74, i32* %3, align 4
  br label %117

75:                                               ; preds = %57
  %76 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %77 = load i32, i32* @XD_ERASE_FAIL, align 4
  %78 = call i32 @xd_set_err_code(%struct.rtsx_chip* %76, i32 %77)
  %79 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %80 = call i32 @xd_reset_cmd(%struct.rtsx_chip* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @STATUS_SUCCESS, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %85, i32* %3, align 4
  br label %117

86:                                               ; preds = %75
  br label %106

87:                                               ; preds = %28
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %89 = call i32* @rtsx_get_cmd_data(%struct.rtsx_chip* %88)
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32* %90, i32** %9, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PROGRAM_ERROR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @xd_mark_bad_block(%struct.rtsx_chip* %97, i32 %98)
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %101 = load i32, i32* @XD_PRG_ERROR, align 4
  %102 = call i32 @xd_set_err_code(%struct.rtsx_chip* %100, i32 %101)
  %103 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %103, i32* %3, align 4
  br label %117

104:                                              ; preds = %87
  %105 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %105, i32* %3, align 4
  br label %117

106:                                              ; preds = %86
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %25

109:                                              ; preds = %25
  %110 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @xd_mark_bad_block(%struct.rtsx_chip* %110, i32 %111)
  %113 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %114 = load i32, i32* @XD_ERASE_FAIL, align 4
  %115 = call i32 @xd_set_err_code(%struct.rtsx_chip* %113, i32 %114)
  %116 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %109, %104, %96, %84, %67, %17
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_assign_phy_addr(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_clear_xd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @xd_mark_bad_block(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @xd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @xd_reset_cmd(%struct.rtsx_chip*) #1

declare dso_local i32* @rtsx_get_cmd_data(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
