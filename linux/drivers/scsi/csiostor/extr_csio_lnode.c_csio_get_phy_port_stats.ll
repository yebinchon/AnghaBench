; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_get_phy_port_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_get_phy_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.fw_fcoe_port_stats = type { i32 }
%struct.csio_mb = type { i32 }
%struct.fw_fcoe_port_cmd_params = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FCoE FCF PARAMS command out of memory!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Issue of FCoE port params failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_get_phy_port_stats(%struct.csio_hw* %0, i32 %1, %struct.fw_fcoe_port_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_fcoe_port_stats*, align 8
  %8 = alloca %struct.csio_mb*, align 8
  %9 = alloca %struct.fw_fcoe_port_cmd_params, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fw_fcoe_port_stats* %2, %struct.fw_fcoe_port_stats** %7, align 8
  %12 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %13 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.csio_mb* @mempool_alloc(i32 %14, i32 %15)
  store %struct.csio_mb* %16, %struct.csio_mb** %8, align 8
  %17 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %18 = icmp ne %struct.csio_mb* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %21 = call i32 @csio_err(%struct.csio_hw* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %9, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  store i32 1, i32* %11, align 4
  br label %27

27:                                               ; preds = %65, %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp sle i32 %28, 3
  br i1 %29, label %30, label %68

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %31, 1
  %33 = mul nsw i32 %32, 6
  %34 = add nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %9, i32 0, i32 1
  store i32 6, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.fw_fcoe_port_cmd_params, %struct.fw_fcoe_port_cmd_params* %9, i32 0, i32 1
  store i32 4, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %30
  %42 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %43 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %44 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %45 = call i32 @csio_fcoe_read_portparams_init_mb(%struct.csio_hw* %42, %struct.csio_mb* %43, i32 %44, %struct.fw_fcoe_port_cmd_params* %9, i32* null)
  %46 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %47 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %48 = call i64 @csio_mb_issue(%struct.csio_hw* %46, %struct.csio_mb* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %52 = call i32 @csio_err(%struct.csio_hw* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %54 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %55 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mempool_free(%struct.csio_mb* %53, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %74

60:                                               ; preds = %41
  %61 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %62 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %63 = load %struct.fw_fcoe_port_stats*, %struct.fw_fcoe_port_stats** %7, align 8
  %64 = call i32 @csio_mb_process_portparams_rsp(%struct.csio_hw* %61, %struct.csio_mb* %62, i32* %10, %struct.fw_fcoe_port_cmd_params* %9, %struct.fw_fcoe_port_stats* %63)
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %27

68:                                               ; preds = %27
  %69 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %70 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %71 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mempool_free(%struct.csio_mb* %69, i32 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %68, %50, %19
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*) #1

declare dso_local i32 @csio_fcoe_read_portparams_init_mb(%struct.csio_hw*, %struct.csio_mb*, i32, %struct.fw_fcoe_port_cmd_params*, i32*) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_mb_process_portparams_rsp(%struct.csio_hw*, %struct.csio_mb*, i32*, %struct.fw_fcoe_port_cmd_params*, %struct.fw_fcoe_port_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
