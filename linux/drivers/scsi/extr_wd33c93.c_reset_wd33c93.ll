; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_reset_wd33c93.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_reset_wd33c93.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64, i32, i64 }
%struct.WD33C93_hostdata = type { i32, i32, i64, i64, i8*, i32, i32 }

@WD_OWN_ID = common dso_local global i32 0, align 4
@OWNID_EAF = common dso_local global i32 0, align 4
@OWNID_RAF = common dso_local global i32 0, align 4
@WD_CONTROL = common dso_local global i32 0, align 4
@CTRL_IDI = common dso_local global i32 0, align 4
@CTRL_EDI = common dso_local global i32 0, align 4
@CTRL_POLLED = common dso_local global i32 0, align 4
@WD_SYNCHRONOUS_TRANSFER = common dso_local global i32 0, align 4
@DEFAULT_SX_OFF = common dso_local global i32 0, align 4
@WD_COMMAND = common dso_local global i32 0, align 4
@WD_CMD_RESET = common dso_local global i32 0, align 4
@ASR_INT = common dso_local global i32 0, align 4
@WD_SCSI_STATUS = common dso_local global i32 0, align 4
@WD_CDB_1 = common dso_local global i32 0, align 4
@C_WD33C93 = common dso_local global i64 0, align 8
@WD_QUEUE_TAG = common dso_local global i32 0, align 4
@C_WD33C93B = common dso_local global i64 0, align 8
@C_WD33C93A = common dso_local global i64 0, align 8
@C_UNKNOWN_CHIP = common dso_local global i64 0, align 8
@WD_TIMEOUT_PERIOD = common dso_local global i32 0, align 4
@TIMEOUT_PERIOD_VALUE = common dso_local global i32 0, align 4
@ASR_BSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @reset_wd33c93 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_wd33c93(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.WD33C93_hostdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.WD33C93_hostdata*
  store %struct.WD33C93_hostdata* %9, %struct.WD33C93_hostdata** %3, align 8
  %10 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %11 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @WD_OWN_ID, align 4
  %15 = load i32, i32* @OWNID_EAF, align 4
  %16 = load i32, i32* @OWNID_RAF, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %17, %20
  %22 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %23 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %21, %24
  %26 = call i32 @write_wd33c93(i32 %13, i32 %14, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @WD_CONTROL, align 4
  %29 = load i32, i32* @CTRL_IDI, align 4
  %30 = load i32, i32* @CTRL_EDI, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CTRL_POLLED, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @write_wd33c93(i32 %27, i32 %28, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @WD_SYNCHRONOUS_TRANSFER, align 4
  %37 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %38 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 4
  %41 = load i32, i32* @DEFAULT_SX_OFF, align 4
  %42 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %43 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @calc_sync_xfer(i32 %40, i32 %41, i32 0, i32 %44)
  %46 = call i32 @write_wd33c93(i32 %35, i32 %36, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @WD_COMMAND, align 4
  %49 = load i32, i32* @WD_CMD_RESET, align 4
  %50 = call i32 @write_wd33c93(i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %58, %1
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @read_aux_stat(i32 %52)
  %54 = load i32, i32* @ASR_INT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %51

59:                                               ; preds = %51
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @WD_SCSI_STATUS, align 4
  %62 = call i8* @read_wd33c93(i32 %60, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @WD_CDB_1, align 4
  %66 = call i8* @read_wd33c93(i32 %64, i32 %65)
  %67 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %68 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load i64, i64* @C_WD33C93, align 8
  %73 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %74 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  br label %105

75:                                               ; preds = %59
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %100

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @WD_QUEUE_TAG, align 4
  %81 = call i32 @write_wd33c93(i32 %79, i32 %80, i32 165)
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @WD_QUEUE_TAG, align 4
  %84 = call i8* @read_wd33c93(i32 %82, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 165
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = load i64, i64* @C_WD33C93B, align 8
  %90 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %91 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @WD_QUEUE_TAG, align 4
  %94 = call i32 @write_wd33c93(i32 %92, i32 %93, i32 0)
  br label %99

95:                                               ; preds = %78
  %96 = load i64, i64* @C_WD33C93A, align 8
  %97 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %98 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %88
  br label %104

100:                                              ; preds = %75
  %101 = load i64, i64* @C_UNKNOWN_CHIP, align 8
  %102 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %103 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %99
  br label %105

105:                                              ; preds = %104, %71
  %106 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %107 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @C_WD33C93B, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %3, align 8
  %113 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %111, %105
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @WD_TIMEOUT_PERIOD, align 4
  %117 = load i32, i32* @TIMEOUT_PERIOD_VALUE, align 4
  %118 = call i32 @write_wd33c93(i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @WD_CONTROL, align 4
  %121 = load i32, i32* @CTRL_IDI, align 4
  %122 = load i32, i32* @CTRL_EDI, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @CTRL_POLLED, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @write_wd33c93(i32 %119, i32 %120, i32 %125)
  ret void
}

declare dso_local i32 @write_wd33c93(i32, i32, i32) #1

declare dso_local i32 @calc_sync_xfer(i32, i32, i32, i32) #1

declare dso_local i32 @read_aux_stat(i32) #1

declare dso_local i8* @read_wd33c93(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
