; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_displayport.c_ucsi_displayport_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_displayport.c_ucsi_displayport_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.ucsi_dp = type { i32, %struct.TYPE_2__*, i32, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ucsi_control = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"firmware doesn't support alternate mode overriding\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_TYPEC_DP_SID = common dso_local global i32 0, align 4
@CMD_EXIT_MODE = common dso_local global i32 0, align 4
@USB_TYPEC_DP_MODE = common dso_local global i32 0, align 4
@CMDT_RSP_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_altmode*)* @ucsi_displayport_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_displayport_exit(%struct.typec_altmode* %0) #0 {
  %2 = alloca %struct.typec_altmode*, align 8
  %3 = alloca %struct.ucsi_dp*, align 8
  %4 = alloca %struct.ucsi_control, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.typec_altmode*, align 8
  store %struct.typec_altmode* %0, %struct.typec_altmode** %2, align 8
  %7 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %8 = call %struct.ucsi_dp* @typec_altmode_get_drvdata(%struct.typec_altmode* %7)
  store %struct.ucsi_dp* %8, %struct.ucsi_dp** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %10 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %15 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %20 = call %struct.typec_altmode* @typec_altmode_get_partner(%struct.typec_altmode* %19)
  store %struct.typec_altmode* %20, %struct.typec_altmode** %6, align 8
  %21 = load %struct.typec_altmode*, %struct.typec_altmode** %6, align 8
  %22 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %21, i32 0, i32 0
  %23 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %71

26:                                               ; preds = %1
  %27 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %28 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %33 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @UCSI_CMD_SET_NEW_CAM(i32 %31, i32 0, i32 %34, i32 0)
  %36 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %4, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %38 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ucsi_send_command(i32 %41, %struct.ucsi_control* %4, i32* null, i32 0)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  br label %71

46:                                               ; preds = %26
  %47 = load i32, i32* @USB_TYPEC_DP_SID, align 4
  %48 = load i32, i32* @CMD_EXIT_MODE, align 4
  %49 = call i32 @VDO(i32 %47, i32 1, i32 %48)
  %50 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %51 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @USB_TYPEC_DP_MODE, align 4
  %53 = call i32 @VDO_OPOS(i32 %52)
  %54 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %55 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @CMDT_RSP_ACK, align 4
  %59 = call i32 @VDO_CMDT(i32 %58)
  %60 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %61 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %65 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %64, i32 0, i32 3
  store i32* null, i32** %65, align 8
  %66 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %67 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %69 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %68, i32 0, i32 2
  %70 = call i32 @schedule_work(i32* %69)
  br label %71

71:                                               ; preds = %46, %45, %18
  %72 = load %struct.ucsi_dp*, %struct.ucsi_dp** %3, align 8
  %73 = getelementptr inbounds %struct.ucsi_dp, %struct.ucsi_dp* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.ucsi_dp* @typec_altmode_get_drvdata(%struct.typec_altmode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.typec_altmode* @typec_altmode_get_partner(%struct.typec_altmode*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @UCSI_CMD_SET_NEW_CAM(i32, i32, i32, i32) #1

declare dso_local i32 @ucsi_send_command(i32, %struct.ucsi_control*, i32*, i32) #1

declare dso_local i32 @VDO(i32, i32, i32) #1

declare dso_local i32 @VDO_OPOS(i32) #1

declare dso_local i32 @VDO_CMDT(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
