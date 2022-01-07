; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pps_set_op_curr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pps_set_op_curr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SNK_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDO_PROG_CURR_MA_STEP = common dso_local global i32 0, align 4
@SNK_NEGOTIATE_PPS_CAPABILITIES = common dso_local global i32 0, align 4
@PD_PPS_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32)* @tcpm_pps_set_op_curr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pps_set_op_curr(%struct.tcpm_port* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %8 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %7, i32 0, i32 4
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %11 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %10, i32 0, i32 5
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %14 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %93

21:                                               ; preds = %2
  %22 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %23 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNK_READY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %93

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %33 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %93

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %43 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %41, %45
  %47 = sdiv i32 %46, 1000
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %50 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %93

56:                                               ; preds = %40
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @RDO_PROG_CURR_MA_STEP, align 4
  %60 = srem i32 %58, %59
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %4, align 4
  %62 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %63 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %62, i32 0, i32 6
  %64 = call i32 @reinit_completion(i32* %63)
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %67 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %70 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %69, i32 0, i32 2
  store i32 0, i32* %70, align 4
  %71 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %72 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %71, i32 0, i32 3
  store i32 1, i32* %72, align 8
  %73 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %74 = load i32, i32* @SNK_NEGOTIATE_PPS_CAPABILITIES, align 4
  %75 = call i32 @tcpm_set_state(%struct.tcpm_port* %73, i32 %74, i32 0)
  %76 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %77 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %76, i32 0, i32 5
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %80 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %79, i32 0, i32 6
  %81 = load i32, i32* @PD_PPS_CTRL_TIMEOUT, align 4
  %82 = call i32 @msecs_to_jiffies(i32 %81)
  %83 = call i32 @wait_for_completion_timeout(i32* %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %56
  %86 = load i32, i32* @ETIMEDOUT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %92

88:                                               ; preds = %56
  %89 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %90 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %85
  br label %97

93:                                               ; preds = %53, %37, %27, %18
  %94 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %95 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %94, i32 0, i32 5
  %96 = call i32 @mutex_unlock(i32* %95)
  br label %97

97:                                               ; preds = %93, %92
  %98 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %99 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %98, i32 0, i32 4
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
