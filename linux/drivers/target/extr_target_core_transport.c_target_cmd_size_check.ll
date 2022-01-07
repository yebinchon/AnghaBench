; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_cmd_size_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_cmd_size_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, i32, i32, i32*, %struct.TYPE_4__*, i64, %struct.se_device* }
%struct.TYPE_4__ = type { i32 }
%struct.se_device = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [105 x i8] c"TARGET_CORE[%s]: Expected Transfer Length: %u does not match SCSI CDB Length: %u for SAM Opcode: 0x%02x\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@SCF_SCSI_DATA_CDB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Rejecting underflow/overflow for WRITE data CDB\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Rejecting overflow for WRITE control CDB\0A\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"Failing OVERFLOW/UNDERFLOW for LBA op CDB on non 512-byte sector setup subsystem plugin: %s\0A\00", align 1
@SCF_OVERFLOW_BIT = common dso_local global i32 0, align 4
@SCF_UNDERFLOW_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_cmd_size_check(%struct.se_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_device*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 7
  %9 = load %struct.se_device*, %struct.se_device** %8, align 8
  store %struct.se_device* %9, %struct.se_device** %6, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %116

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %115

24:                                               ; preds = %18
  %25 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %33, i32 %38)
  %40 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DMA_TO_DEVICE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %24
  %46 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SCF_SCSI_DATA_CDB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %54, i32* %3, align 4
  br label %121

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ugt i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %63, i32* %3, align 4
  br label %121

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %24
  %66 = load %struct.se_device*, %struct.se_device** %6, align 8
  %67 = getelementptr inbounds %struct.se_device, %struct.se_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 512
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.se_device*, %struct.se_device** %6, align 8
  %73 = getelementptr inbounds %struct.se_device, %struct.se_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %78, i32* %3, align 4
  br label %121

79:                                               ; preds = %65
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ugt i32 %80, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load i32, i32* @SCF_OVERFLOW_BIT, align 4
  %87 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %93 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub i32 %91, %94
  %96 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %97 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  br label %114

98:                                               ; preds = %79
  %99 = load i32, i32* @SCF_UNDERFLOW_BIT, align 4
  %100 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %101 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %105 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sub i32 %106, %107
  %109 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %110 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %113 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %98, %85
  br label %115

115:                                              ; preds = %114, %18
  br label %116

116:                                              ; preds = %115, %14
  %117 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %118 = load %struct.se_device*, %struct.se_device** %6, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @target_check_max_data_sg_nents(%struct.se_cmd* %117, %struct.se_device* %118, i32 %119)
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %71, %61, %52
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @target_check_max_data_sg_nents(%struct.se_cmd*, %struct.se_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
