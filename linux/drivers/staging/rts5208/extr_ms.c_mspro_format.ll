; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mspro_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_mspro_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32, i32, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@Pro_TPCParm = common dso_local global i32 0, align 4
@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@PRO_WRITE_REG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@PRO_FORMAT = common dso_local global i32 0, align 4
@MS_TRANS_CFG = common dso_local global i32 0, align 4
@MS_INT_CMDNK = common dso_local global i32 0, align 4
@MS_INT_ERR = common dso_local global i32 0, align 4
@MS_INT_BREQ = common dso_local global i32 0, align 4
@MS_INT_CED = common dso_local global i32 0, align 4
@FORMAT_IN_PROGRESS = common dso_local global i32 0, align 4
@FORMAT_SUCCESS = common dso_local global i32 0, align 4
@SENSE_TYPE_NO_SENSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mspro_format(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ms_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %17 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %16, i32 0, i32 0
  store %struct.ms_info* %17, %struct.ms_info** %10, align 8
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %19 = call i32 @ms_switch_clock(%struct.rtsx_chip* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @STATUS_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %24, i32* %5, align 4
  br label %142

25:                                               ; preds = %4
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %27 = load i32, i32* @Pro_TPCParm, align 4
  %28 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %26, i32 0, i32 0, i32 %27, i32 1)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @STATUS_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %33, i32* %5, align 4
  br label %142

34:                                               ; preds = %25
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %36 = call i32 @memset(i32* %35, i32 0, i32 2)
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %45 [
    i32 32, label %38
    i32 64, label %40
    i32 128, label %42
    i32 256, label %44
  ]

38:                                               ; preds = %34
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %39, align 16
  br label %47

40:                                               ; preds = %34
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  store i32 1, i32* %41, align 16
  br label %47

42:                                               ; preds = %34
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  store i32 2, i32* %43, align 16
  br label %47

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %34, %44
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  store i32 3, i32* %46, align 16
  br label %47

47:                                               ; preds = %45, %42, %40, %38
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %54 = load i32, i32* @PRO_WRITE_REG, align 4
  %55 = load i32, i32* @NO_WAIT_INT, align 4
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %57 = call i32 @ms_write_bytes(%struct.rtsx_chip* %53, i32 %54, i32 1, i32 %55, i32* %56, i32 2)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @STATUS_SUCCESS, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %66

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %48

66:                                               ; preds = %61, %48
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %71, i32* %5, align 4
  br label %142

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  br label %77

76:                                               ; preds = %72
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @PRO_FORMAT, align 4
  %81 = call i32 @mspro_set_rw_cmd(%struct.rtsx_chip* %78, i32 0, i32 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @STATUS_SUCCESS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %86, i32* %5, align 4
  br label %142

87:                                               ; preds = %77
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %89 = load i32, i32* @MS_TRANS_CFG, align 4
  %90 = call i32 @rtsx_read_register(%struct.rtsx_chip* %88, i32 %89, i32* %14)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %142

95:                                               ; preds = %87
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @MS_INT_CMDNK, align 4
  %98 = load i32, i32* @MS_INT_ERR, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %103, i32* %5, align 4
  br label %142

104:                                              ; preds = %95
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @MS_INT_BREQ, align 4
  %107 = load i32, i32* @MS_INT_CED, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = load i32, i32* @MS_INT_BREQ, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %114 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %116 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* @FORMAT_IN_PROGRESS, align 4
  %118 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %119 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %120, i32* %5, align 4
  br label %142

121:                                              ; preds = %104
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @MS_INT_CED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %121
  %127 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %128 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %130 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* @FORMAT_SUCCESS, align 4
  %132 = load %struct.ms_info*, %struct.ms_info** %10, align 8
  %133 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %136 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %135)
  %137 = load i32, i32* @SENSE_TYPE_NO_SENSE, align 4
  %138 = call i32 @set_sense_type(%struct.rtsx_chip* %134, i32 %136, i32 %137)
  %139 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %139, i32* %5, align 4
  br label %142

140:                                              ; preds = %121
  %141 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %126, %112, %102, %93, %85, %70, %32, %23
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @ms_switch_clock(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mspro_set_rw_cmd(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
