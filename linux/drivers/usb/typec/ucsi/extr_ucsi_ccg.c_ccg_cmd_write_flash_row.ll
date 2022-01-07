; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_cmd_write_flash_row.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_cmd_write_flash_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.ccg_cmd = type { i32, i32, i32, i32 }

@CCG4_ROW_SIZE = common dso_local global i32 0, align 4
@REG_FLASH_RW_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"REG_FLASH_RW_MEM write fail %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CCGX_RAB_FLASH_ROW_RW = common dso_local global i32 0, align 4
@FLASH_SIG = common dso_local global i64 0, align 8
@FLASH_FWCT_SIG_WR_CMD = common dso_local global i64 0, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"write flash row failed ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*, i32, i8*, i64)* @ccg_cmd_write_flash_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccg_cmd_write_flash_row(%struct.ucsi_ccg* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucsi_ccg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.ccg_cmd, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %6, align 8
  %18 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %17, i32 0, i32 2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %10, align 8
  %20 = load i32, i32* @CCG4_ROW_SIZE, align 4
  %21 = add nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @REG_FLASH_RW_MEM, align 4
  %26 = call i32 @put_unaligned_le16(i32 %25, i64* %24)
  %27 = getelementptr inbounds i64, i64* %24, i64 2
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @CCG4_ROW_SIZE, align 4
  %30 = call i32 @memcpy(i64* %27, i8* %28, i32 %29)
  %31 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %6, align 8
  %32 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %35 = load i32, i32* @CCG4_ROW_SIZE, align 4
  %36 = add nsw i32 %35, 2
  %37 = call i32 @i2c_master_send(%struct.i2c_client* %34, i64* %24, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @CCG4_ROW_SIZE, align 4
  %40 = add nsw i32 %39, 2
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %4
  %43 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %6, align 8
  %44 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %6, align 8
  %49 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %15, align 4
  br label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %54, %53 ], [ %57, %55 ]
  store i32 %59, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %108

60:                                               ; preds = %4
  %61 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %11, i32 0, i32 3
  %62 = bitcast i32* %61 to i64*
  store i64* %62, i64** %14, align 8
  %63 = load i32, i32* @CCGX_RAB_FLASH_ROW_RW, align 4
  %64 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %11, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i64, i64* @FLASH_SIG, align 8
  %66 = load i64*, i64** %14, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64*, i64** %14, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i64*, i64** %14, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  %74 = call i32 @put_unaligned_le16(i32 %71, i64* %73)
  %75 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %11, i32 0, i32 0
  store i32 4, i32* %75, align 4
  %76 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %11, i32 0, i32 1
  store i32 50, i32* %76, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @FLASH_FWCT_SIG_WR_CMD, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %60
  %81 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %11, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 400
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %80, %60
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 510
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.ccg_cmd, %struct.ccg_cmd* %11, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 220
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %6, align 8
  %93 = call i32 @ccg_send_command(%struct.ucsi_ccg* %92, %struct.ccg_cmd* %11)
  store i32 %93, i32* %15, align 4
  %94 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %6, align 8
  %95 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @CMD_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %91
  %101 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %6, align 8
  %102 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %108

107:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %108

108:                                              ; preds = %107, %100, %58
  %109 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @put_unaligned_le16(i32, i64*) #2

declare dso_local i32 @memcpy(i64*, i8*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i64*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ccg_send_command(%struct.ucsi_ccg*, %struct.ccg_cmd*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
