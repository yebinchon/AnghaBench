; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, %struct.pd_message*)* }
%struct.pd_message = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"PD TX, header: %#x\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PD TX, type: %#x\00", align 1
@PD_T_TCPC_TX_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PD_HEADER_ID_MASK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32, %struct.pd_message*)* @tcpm_pd_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pd_transmit(%struct.tcpm_port* %0, i32 %1, %struct.pd_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpm_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pd_message*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pd_message* %2, %struct.pd_message** %7, align 8
  %10 = load %struct.pd_message*, %struct.pd_message** %7, align 8
  %11 = icmp ne %struct.pd_message* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %14 = load %struct.pd_message*, %struct.pd_message** %7, align 8
  %15 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = call i32 @tcpm_log(%struct.tcpm_port* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @tcpm_log(%struct.tcpm_port* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %12
  %24 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %25 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %24, i32 0, i32 3
  %26 = call i32 @reinit_completion(i32* %25)
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %28 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_2__*, i32, %struct.pd_message*)*, i32 (%struct.TYPE_2__*, i32, %struct.pd_message*)** %30, align 8
  %32 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %33 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.pd_message*, %struct.pd_message** %7, align 8
  %37 = call i32 %31(%struct.TYPE_2__* %34, i32 %35, %struct.pd_message* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %79

42:                                               ; preds = %23
  %43 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %44 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %43, i32 0, i32 2
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %47 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %46, i32 0, i32 3
  %48 = load i32, i32* @PD_T_TCPC_TX_TIMEOUT, align 4
  %49 = call i32 @msecs_to_jiffies(i32 %48)
  %50 = call i64 @wait_for_completion_timeout(i32* %47, i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %52 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %51, i32 0, i32 2
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %79

59:                                               ; preds = %42
  %60 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %61 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %76 [
    i32 128, label %63
    i32 130, label %72
    i32 129, label %75
  ]

63:                                               ; preds = %59
  %64 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %65 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* @PD_HEADER_ID_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %71 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %4, align 4
  br label %79

72:                                               ; preds = %59
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %59, %75
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %72, %63, %56, %40
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
