; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_eh_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_eh_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_7__, %struct.scsi_device* }
%struct.TYPE_7__ = type { i32 }
%struct.scsi_device = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i64 }
%struct.aac_dev = type { %struct.TYPE_8__*, %struct.aac_hba_map_info**, %struct.fib* }
%struct.TYPE_8__ = type { i32 }
%struct.aac_hba_map_info = type { i64 }
%struct.fib = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@AAC_NUM_MGT_FIB = common dso_local global i32 0, align 4
@FIB_CONTEXT_FLAG = common dso_local global i32 0, align 4
@FIB_CONTEXT_FLAG_SCSI_CMD = common dso_local global i32 0, align 4
@AAC_MAX_BUSES = common dso_local global i64 0, align 8
@AAC_MAX_TARGETS = common dso_local global i64 0, align 8
@AAC_DEVTYPE_NATIVE_RAW = common dso_local global i64 0, align 8
@FIB_CONTEXT_FLAG_EH_RESET = common dso_local global i32 0, align 4
@AAC_OWNER_ERROR_HANDLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: Host adapter reset request. SCSI hang ?\0A\00", align 1
@AAC_DRIVERNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Adapter health - %d\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @aac_eh_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_eh_bus_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.aac_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib*, align 8
  %10 = alloca %struct.aac_hba_map_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 1
  %15 = load %struct.scsi_device*, %struct.scsi_device** %14, align 8
  store %struct.scsi_device* %15, %struct.scsi_device** %3, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %4, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.aac_dev*
  store %struct.aac_dev* %22, %struct.aac_dev** %5, align 8
  store i32 0, i32* %8, align 4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %24 = call i32 @scmd_channel(%struct.scsi_cmnd* %23)
  %25 = call i64 @aac_logical_to_phys(i32 %24)
  store i64 %25, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %110, %1
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %113

34:                                               ; preds = %26
  %35 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %36 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %35, i32 0, i32 2
  %37 = load %struct.fib*, %struct.fib** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.fib, %struct.fib* %37, i64 %39
  store %struct.fib* %40, %struct.fib** %9, align 8
  %41 = load %struct.fib*, %struct.fib** %9, align 8
  %42 = getelementptr inbounds %struct.fib, %struct.fib* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %109

48:                                               ; preds = %34
  %49 = load %struct.fib*, %struct.fib** %9, align 8
  %50 = getelementptr inbounds %struct.fib, %struct.fib* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FIB_CONTEXT_FLAG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %109

55:                                               ; preds = %48
  %56 = load %struct.fib*, %struct.fib** %9, align 8
  %57 = getelementptr inbounds %struct.fib, %struct.fib* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FIB_CONTEXT_FLAG_SCSI_CMD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %55
  %63 = load %struct.fib*, %struct.fib** %9, align 8
  %64 = getelementptr inbounds %struct.fib, %struct.fib* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %66, %struct.scsi_cmnd** %2, align 8
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %68 = call i32 @scmd_channel(%struct.scsi_cmnd* %67)
  %69 = call i64 @aac_logical_to_phys(i32 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %110

74:                                               ; preds = %62
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %76 = call i64 @scmd_id(%struct.scsi_cmnd* %75)
  store i64 %76, i64* %12, align 8
  %77 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %78 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %77, i32 0, i32 1
  %79 = load %struct.aac_hba_map_info**, %struct.aac_hba_map_info*** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %79, i64 %80
  %82 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %82, i64 %83
  store %struct.aac_hba_map_info* %84, %struct.aac_hba_map_info** %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @AAC_MAX_BUSES, align 8
  %87 = icmp uge i64 %85, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %74
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @AAC_MAX_TARGETS, align 8
  %91 = icmp uge i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %10, align 8
  %94 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AAC_DEVTYPE_NATIVE_RAW, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %92, %88, %74
  %99 = load i32, i32* @FIB_CONTEXT_FLAG_EH_RESET, align 4
  %100 = load %struct.fib*, %struct.fib** %9, align 8
  %101 = getelementptr inbounds %struct.fib, %struct.fib* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @AAC_OWNER_ERROR_HANDLER, align 4
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %106 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %108

108:                                              ; preds = %98, %92
  br label %109

109:                                              ; preds = %108, %55, %48, %34
  br label %110

110:                                              ; preds = %109, %73
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %26

113:                                              ; preds = %26
  %114 = load i32, i32* @AAC_DRIVERNAME, align 4
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %117 = call i32 @aac_adapter_check_health(%struct.aac_dev* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %122 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %120, %113
  %128 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %129 = call i32 @get_num_of_incomplete_fibs(%struct.aac_dev* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @SUCCESS, align 4
  br label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @FAILED, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  ret i32 %137
}

declare dso_local i64 @aac_logical_to_phys(i32) #1

declare dso_local i32 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @aac_adapter_check_health(%struct.aac_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @get_num_of_incomplete_fibs(%struct.aac_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
