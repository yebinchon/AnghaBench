; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_read_redundant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_read_redundant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@XD_RW_ADDR = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER = common dso_local global i32 0, align 4
@XD_TRANSFER_START = common dso_local global i32 0, align 4
@XD_READ_REDUNDANT = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER_END = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@XD_PAGE_STATUS = common dso_local global i64 0, align 8
@XD_RESERVED0 = common dso_local global i64 0, align 8
@XD_PARITY = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32*, i32)* @xd_read_redundant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_read_redundant(%struct.rtsx_chip* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %14 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %13)
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @XD_RW_ADDR, align 4
  %18 = call i32 @xd_assign_phy_addr(%struct.rtsx_chip* %15, i32 %16, i32 %17)
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %20 = load i32, i32* @WRITE_REG_CMD, align 4
  %21 = load i32, i32* @XD_TRANSFER, align 4
  %22 = load i32, i32* @XD_TRANSFER_START, align 4
  %23 = load i32, i32* @XD_READ_REDUNDANT, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %19, i32 %20, i32 %21, i32 255, i32 %24)
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %27 = load i32, i32* @CHECK_REG_CMD, align 4
  %28 = load i32, i32* @XD_TRANSFER, align 4
  %29 = load i32, i32* @XD_TRANSFER_END, align 4
  %30 = load i32, i32* @XD_TRANSFER_END, align 4
  %31 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %44, %4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %37 = load i32, i32* @READ_REG_CMD, align 4
  %38 = load i64, i64* @XD_PAGE_STATUS, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %36, i32 %37, i32 %42, i32 0, i32 0)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %32

47:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %53 = load i32, i32* @READ_REG_CMD, align 4
  %54 = load i64, i64* @XD_RESERVED0, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %52, i32 %53, i32 %58, i32 0, i32 0)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %48

63:                                               ; preds = %48
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %65 = load i32, i32* @READ_REG_CMD, align 4
  %66 = load i32, i32* @XD_PARITY, align 4
  %67 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %64, i32 %65, i32 %66, i32 0, i32 0)
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %69 = load i32, i32* @XD_CARD, align 4
  %70 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %68, i32 %69, i32 500)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %74, i32* %5, align 4
  br label %95

75:                                               ; preds = %63
  %76 = load i32*, i32** %8, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %83 = call i32* @rtsx_get_cmd_data(%struct.rtsx_chip* %82)
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32* %84, i32** %12, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 11
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 11, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @memcpy(i32* %89, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %78, %75
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %73
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_assign_phy_addr(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32* @rtsx_get_cmd_data(%struct.rtsx_chip*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
