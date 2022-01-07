; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pps_set_out_volt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pps_set_out_volt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SNK_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RDO_PROG_VOLT_MV_STEP = common dso_local global i32 0, align 4
@SNK_NEGOTIATE_PPS_CAPABILITIES = common dso_local global i32 0, align 4
@PD_PPS_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32)* @tcpm_pps_set_out_volt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pps_set_out_volt(%struct.tcpm_port* %0, i32 %1) #0 {
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
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %100

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
  br label %100

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %33 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %40 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37, %30
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %100

47:                                               ; preds = %37
  %48 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %49 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sdiv i32 %53, 1000
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %57 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %100

63:                                               ; preds = %47
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @RDO_PROG_VOLT_MV_STEP, align 4
  %67 = srem i32 %65, %66
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %4, align 4
  %69 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %70 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %69, i32 0, i32 6
  %71 = call i32 @reinit_completion(i32* %70)
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %74 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  %76 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %77 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %76, i32 0, i32 2
  store i32 0, i32* %77, align 4
  %78 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %79 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %78, i32 0, i32 3
  store i32 1, i32* %79, align 8
  %80 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %81 = load i32, i32* @SNK_NEGOTIATE_PPS_CAPABILITIES, align 4
  %82 = call i32 @tcpm_set_state(%struct.tcpm_port* %80, i32 %81, i32 0)
  %83 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %84 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %83, i32 0, i32 5
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %87 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %86, i32 0, i32 6
  %88 = load i32, i32* @PD_PPS_CTRL_TIMEOUT, align 4
  %89 = call i32 @msecs_to_jiffies(i32 %88)
  %90 = call i32 @wait_for_completion_timeout(i32* %87, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %63
  %93 = load i32, i32* @ETIMEDOUT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %99

95:                                               ; preds = %63
  %96 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %97 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %92
  br label %104

100:                                              ; preds = %60, %44, %27, %18
  %101 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %102 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %101, i32 0, i32 5
  %103 = call i32 @mutex_unlock(i32* %102)
  br label %104

104:                                              ; preds = %100, %99
  %105 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %106 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %105, i32 0, i32 4
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %6, align 4
  ret i32 %108
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
