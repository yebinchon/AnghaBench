; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_fcoe_free_vnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_attr.c_csio_fcoe_free_vnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32 }
%struct.csio_lnode = type { i32, i32 }
%struct.csio_mb = type { i64 }
%struct.fw_fcoe_vnp_cmd = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to issue mbox FCoE VNP command\0A\00", align 1
@FW_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"FCOE VNP FREE cmd returned 0x%x!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, %struct.csio_lnode*)* @csio_fcoe_free_vnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_fcoe_free_vnp(%struct.csio_hw* %0, %struct.csio_lnode* %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_lnode*, align 8
  %5 = alloca %struct.csio_mb*, align 8
  %6 = alloca %struct.fw_fcoe_vnp_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store %struct.csio_lnode* %1, %struct.csio_lnode** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %10 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %13 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.csio_mb* @mempool_alloc(i32 %14, i32 %15)
  store %struct.csio_mb* %16, %struct.csio_mb** %5, align 8
  %17 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %18 = icmp ne %struct.csio_mb* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %21 = load i32, i32* @n_err_nomem, align 4
  %22 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %20, i32 %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %27 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %28 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %29 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %30 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %33 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @csio_fcoe_vnp_free_init_mb(%struct.csio_lnode* %26, %struct.csio_mb* %27, i32 %28, i32 %31, i32 %34, i32* null)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %56, %25
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %41 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %42 = call i32 @csio_mb_issue(%struct.csio_hw* %40, %struct.csio_mb* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %59

48:                                               ; preds = %39
  %49 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %50 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = call i32 @msleep(i32 2000)
  %53 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %54 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_irq(i32* %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %36

59:                                               ; preds = %47, %36
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %64 = call i32 (%struct.csio_lnode*, i8*, ...) @csio_ln_err(%struct.csio_lnode* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %88

65:                                               ; preds = %59
  %66 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %67 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.fw_fcoe_vnp_cmd*
  store %struct.fw_fcoe_vnp_cmd* %69, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %70 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohl(i32 %72)
  %74 = call i64 @FW_CMD_RETVAL_G(i32 %73)
  %75 = load i64, i64* @FW_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %65
  %78 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %79 = load %struct.fw_fcoe_vnp_cmd*, %struct.fw_fcoe_vnp_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.fw_fcoe_vnp_cmd, %struct.fw_fcoe_vnp_cmd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ntohl(i32 %81)
  %83 = call i64 @FW_CMD_RETVAL_G(i32 %82)
  %84 = call i32 (%struct.csio_lnode*, i8*, ...) @csio_ln_err(%struct.csio_lnode* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %77, %65
  br label %88

88:                                               ; preds = %87, %62
  %89 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %90 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %91 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mempool_free(%struct.csio_mb* %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %19
  %95 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %96 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock_irq(i32* %96)
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_fcoe_vnp_free_init_mb(%struct.csio_lnode*, %struct.csio_mb*, i32, i32, i32, i32*) #1

declare dso_local i32 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @csio_ln_err(%struct.csio_lnode*, i8*, ...) #1

declare dso_local i64 @FW_CMD_RETVAL_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
