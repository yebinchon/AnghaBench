; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_ext_sd_get_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_ext_sd_get_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@SD_RSP_TYPE_R0 = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R2 = common dso_local global i64 0, align 8
@PPBUF_BASE2 = common dso_local global i64 0, align 8
@READ_REG_CMD = common dso_local global i32 0, align 4
@REG_SD_CMD0 = common dso_local global i64 0, align 8
@REG_SD_CMD4 = common dso_local global i64 0, align 8
@REG_SD_CMD5 = common dso_local global i64 0, align 8
@SD_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"min_len = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Response in cmd buf: 0x%x 0x%x 0x%x 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext_sd_get_rsp(%struct.rtsx_chip* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @SD_RSP_TYPE_R0, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %18, i32* %5, align 4
  br label %114

19:                                               ; preds = %4
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %21 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %20)
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @SD_RSP_TYPE_R2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load i64, i64* @PPBUF_BASE2, align 8
  store i64 %26, i64* %12, align 8
  br label %27

27:                                               ; preds = %37, %25
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @PPBUF_BASE2, align 8
  %30 = add nsw i64 %29, 16
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %34 = load i32, i32* @READ_REG_CMD, align 4
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %33, i32 %34, i64 %35, i32 255, i32 0)
  br label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %12, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %12, align 8
  br label %27

40:                                               ; preds = %27
  store i32 17, i32* %11, align 4
  br label %61

41:                                               ; preds = %19
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @SD_RSP_TYPE_R0, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i64, i64* @REG_SD_CMD0, align 8
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %56, %45
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @REG_SD_CMD4, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %53 = load i32, i32* @READ_REG_CMD, align 4
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %52, i32 %53, i64 %54, i32 255, i32 0)
  br label %56

56:                                               ; preds = %51
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %12, align 8
  br label %47

59:                                               ; preds = %47
  store i32 6, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %40
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %63 = load i32, i32* @READ_REG_CMD, align 4
  %64 = load i64, i64* @REG_SD_CMD5, align 8
  %65 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %62, i32 %63, i64 %64, i32 255, i32 0)
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %67 = load i32, i32* @SD_CARD, align 4
  %68 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %66, i32 %67, i32 100)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @STATUS_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %73, i32* %5, align 4
  br label %114

74:                                               ; preds = %61
  %75 = load i64*, i64** %8, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %112

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  br label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %13, align 4
  %87 = load i64*, i64** %8, align 8
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %89 = call i32 @rtsx_get_cmd_data(%struct.rtsx_chip* %88)
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @memcpy(i64* %87, i32 %89, i32 %90)
  %92 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %93 = call i32 @rtsx_dev(%struct.rtsx_chip* %92)
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %95)
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %98 = call i32 @rtsx_dev(%struct.rtsx_chip* %97)
  %99 = load i64*, i64** %8, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %8, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %8, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 3
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %98, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %101, i64 %104, i64 %107, i64 %110)
  br label %112

112:                                              ; preds = %85, %74
  %113 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %72, %17
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i64, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @rtsx_get_cmd_data(%struct.rtsx_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
