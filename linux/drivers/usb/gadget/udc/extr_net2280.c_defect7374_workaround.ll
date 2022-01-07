; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_defect7374_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_defect7374_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280 = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@SCRATCH = common dso_local global i32 0, align 4
@DEFECT7374_FSM_FIELD = common dso_local global i32 0, align 4
@DEFECT7374_FSM_WAITING_FOR_CONTROL_READ = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@SUPER_SPEED_MODE = common dso_local global i32 0, align 4
@DEFECT7374_FSM_NON_SS_CONTROL_READ = common dso_local global i32 0, align 4
@DEFECT_7374_NUMBEROF_MAX_WAIT_LOOPS = common dso_local global i32 0, align 4
@STATE = common dso_local global i32 0, align 4
@ACK_GOOD_NORMAL = common dso_local global i32 0, align 4
@ACK_GOOD_MORE_ACKS_TO_COME = common dso_local global i32 0, align 4
@DEFECT7374_FSM_SS_CONTROL_READ = common dso_local global i32 0, align 4
@DEFECT_7374_PROCESSOR_WAIT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"FAIL: Defect 7374 workaround waited but failed to detect SS host's data phase ACK.\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"PL_EP_STATUS_1(23:16):.Expected from 0x11 to 0x16got 0x%2.2x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"INFO: Defect 7374 workaround waited about\0A%duSec for Control Read Data Phase ACK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280*, i32)* @defect7374_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @defect7374_workaround(%struct.net2280* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_ctrlrequest, align 4
  %4 = alloca %struct.net2280*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.net2280* %0, %struct.net2280** %4, align 8
  %10 = load %struct.net2280*, %struct.net2280** %4, align 8
  %11 = getelementptr inbounds %struct.net2280, %struct.net2280* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SCRATCH, align 4
  %14 = call i32 @get_idx_reg(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DEFECT7374_FSM_FIELD, align 4
  %17 = shl i32 15, %16
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @DEFECT7374_FSM_FIELD, align 4
  %20 = shl i32 15, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DEFECT7374_FSM_WAITING_FOR_CONTROL_READ, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @USB_DIR_IN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %2
  br label %115

34:                                               ; preds = %27
  %35 = load %struct.net2280*, %struct.net2280** %4, align 8
  %36 = getelementptr inbounds %struct.net2280, %struct.net2280* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @readl(i32* %38)
  %40 = load i32, i32* @SUPER_SPEED_MODE, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @DEFECT7374_FSM_NON_SS_CONTROL_READ, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.net2280*, %struct.net2280** %4, align 8
  %49 = getelementptr inbounds %struct.net2280, %struct.net2280* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %106

50:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %84, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @DEFECT_7374_NUMBEROF_MAX_WAIT_LOOPS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %51
  %56 = load %struct.net2280*, %struct.net2280** %4, align 8
  %57 = getelementptr inbounds %struct.net2280, %struct.net2280* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @readl(i32* %59)
  %61 = load i32, i32* @STATE, align 4
  %62 = shl i32 255, %61
  %63 = and i32 %60, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ACK_GOOD_NORMAL, align 4
  %66 = load i32, i32* @STATE, align 4
  %67 = shl i32 %65, %66
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %55
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ACK_GOOD_MORE_ACKS_TO_COME, align 4
  %72 = load i32, i32* @STATE, align 4
  %73 = shl i32 %71, %72
  %74 = icmp sle i32 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @DEFECT7374_FSM_SS_CONTROL_READ, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load %struct.net2280*, %struct.net2280** %4, align 8
  %80 = getelementptr inbounds %struct.net2280, %struct.net2280* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %87

81:                                               ; preds = %69, %55
  %82 = load i32, i32* @DEFECT_7374_PROCESSOR_WAIT_TIME, align 4
  %83 = call i32 @udelay(i32 %82)
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %51

87:                                               ; preds = %75, %51
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @DEFECT_7374_NUMBEROF_MAX_WAIT_LOOPS, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.net2280*, %struct.net2280** %4, align 8
  %93 = call i32 (%struct.net2280*, i8*, ...) @ep_err(%struct.net2280* %92, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.net2280*, %struct.net2280** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @STATE, align 4
  %97 = ashr i32 %95, %96
  %98 = call i32 (%struct.net2280*, i8*, ...) @ep_err(%struct.net2280* %94, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %105

99:                                               ; preds = %87
  %100 = load %struct.net2280*, %struct.net2280** %4, align 8
  %101 = load i32, i32* @DEFECT_7374_PROCESSOR_WAIT_TIME, align 4
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 %101, %102
  %104 = call i32 @ep_warn(%struct.net2280* %100, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %91
  br label %106

106:                                              ; preds = %105, %44
  %107 = load %struct.net2280*, %struct.net2280** %4, align 8
  %108 = call i32 @defect7374_disable_data_eps(%struct.net2280* %107)
  %109 = load %struct.net2280*, %struct.net2280** %4, align 8
  %110 = getelementptr inbounds %struct.net2280, %struct.net2280* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SCRATCH, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @set_idx_reg(i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %106, %33
  ret void
}

declare dso_local i32 @get_idx_reg(i32, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ep_err(%struct.net2280*, i8*, ...) #1

declare dso_local i32 @ep_warn(%struct.net2280*, i8*, i32) #1

declare dso_local i32 @defect7374_disable_data_eps(%struct.net2280*) #1

declare dso_local i32 @set_idx_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
