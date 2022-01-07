; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.csio_mb = type { i32 }

@CSIO_DEV_STATE_INIT = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Issue of FW_INITIALIZE_CMD failed!\0A\00", align 1
@FW_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"FW_INITIALIZE_CMD returned 0x%x!\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to read fcoe resource info: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Config of queues failed!: %d\0A\00", align 1
@FW_PORT_MOD_TYPE_NA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to enable ports: %d\0A\00", align 1
@CSIO_HWE_INIT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_hw_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_hw_initialize(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca %struct.csio_mb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %7 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %8 = call i64 @csio_is_hw_master(%struct.csio_hw* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %12 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CSIO_DEV_STATE_INIT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %10
  %17 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %18 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.csio_mb* @mempool_alloc(i32 %19, i32 %20)
  store %struct.csio_mb* %21, %struct.csio_mb** %3, align 8
  %22 = load %struct.csio_mb*, %struct.csio_mb** %3, align 8
  %23 = icmp ne %struct.csio_mb* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %127

25:                                               ; preds = %16
  %26 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %27 = load %struct.csio_mb*, %struct.csio_mb** %3, align 8
  %28 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %29 = call i32 @csio_mb_initialize(%struct.csio_hw* %26, %struct.csio_mb* %27, i32 %28, i32* null)
  %30 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %31 = load %struct.csio_mb*, %struct.csio_mb** %3, align 8
  %32 = call i64 @csio_mb_issue(%struct.csio_hw* %30, %struct.csio_mb* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %36 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %121

37:                                               ; preds = %25
  %38 = load %struct.csio_mb*, %struct.csio_mb** %3, align 8
  %39 = call i32 @csio_mb_fw_retval(%struct.csio_mb* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @FW_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %121

47:                                               ; preds = %37
  %48 = load %struct.csio_mb*, %struct.csio_mb** %3, align 8
  %49 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %50 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mempool_free(%struct.csio_mb* %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %10, %1
  %54 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %55 = call i32 @csio_get_fcoe_resinfo(%struct.csio_hw* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %127

62:                                               ; preds = %53
  %63 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %64 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %63, i32 0, i32 5
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %67 = call i32 @csio_config_queues(%struct.csio_hw* %66)
  store i32 %67, i32* %5, align 4
  %68 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %69 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %68, i32 0, i32 5
  %70 = call i32 @spin_lock_irq(i32* %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %127

77:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %93, %77
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %81 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load i32, i32* @FW_PORT_MOD_TYPE_NA, align 4
  %86 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %87 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %78

96:                                               ; preds = %78
  %97 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %98 = call i64 @csio_is_hw_master(%struct.csio_hw* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %102 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CSIO_DEV_STATE_INIT, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %108 = call i32 @csio_enable_ports(%struct.csio_hw* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %127

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %100, %96
  %117 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %118 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %117, i32 0, i32 3
  %119 = load i32, i32* @CSIO_HWE_INIT_DONE, align 4
  %120 = call i32 @csio_post_event(i32* %118, i32 %119)
  br label %128

121:                                              ; preds = %43, %34
  %122 = load %struct.csio_mb*, %struct.csio_mb** %3, align 8
  %123 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %124 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mempool_free(%struct.csio_mb* %122, i32 %125)
  br label %127

127:                                              ; preds = %121, %111, %73, %58, %24
  br label %128

128:                                              ; preds = %127, %116
  ret void
}

declare dso_local i64 @csio_is_hw_master(%struct.csio_hw*) #1

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @csio_mb_initialize(%struct.csio_hw*, %struct.csio_mb*, i32, i32*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @csio_mb_fw_retval(%struct.csio_mb*) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_get_fcoe_resinfo(%struct.csio_hw*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_config_queues(%struct.csio_hw*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_enable_ports(%struct.csio_hw*) #1

declare dso_local i32 @csio_post_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
