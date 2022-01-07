; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_vconn_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_vconn_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_capability = type { i32 }
%struct.tcpm_port = type { i64, i32, i32, i32, i32, i32, i32 }

@SRC_READY = common dso_local global i64 0, align 8
@SNK_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@VCONN_SWAP_SEND = common dso_local global i32 0, align 4
@PD_ROLE_SWAP_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_capability*, i32)* @tcpm_vconn_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_vconn_set(%struct.typec_capability* %0, i32 %1) #0 {
  %3 = alloca %struct.typec_capability*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpm_port*, align 8
  %6 = alloca i32, align 4
  store %struct.typec_capability* %0, %struct.typec_capability** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.typec_capability*, %struct.typec_capability** %3, align 8
  %8 = call %struct.tcpm_port* @typec_cap_to_tcpm(%struct.typec_capability* %7)
  store %struct.tcpm_port* %8, %struct.tcpm_port** %5, align 8
  %9 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %10 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %9, i32 0, i32 4
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 5
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %16 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SRC_READY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %22 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNK_READY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %64

29:                                               ; preds = %20, %2
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %32 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %64

36:                                               ; preds = %29
  %37 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %38 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %40 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %39, i32 0, i32 3
  store i32 1, i32* %40, align 8
  %41 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %42 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %41, i32 0, i32 6
  %43 = call i32 @reinit_completion(i32* %42)
  %44 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %45 = load i32, i32* @VCONN_SWAP_SEND, align 4
  %46 = call i32 @tcpm_set_state(%struct.tcpm_port* %44, i32 %45, i32 0)
  %47 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %48 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %47, i32 0, i32 5
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %51 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %50, i32 0, i32 6
  %52 = load i32, i32* @PD_ROLE_SWAP_TIMEOUT, align 4
  %53 = call i32 @msecs_to_jiffies(i32 %52)
  %54 = call i32 @wait_for_completion_timeout(i32* %51, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %36
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %63

59:                                               ; preds = %36
  %60 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %61 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %56
  br label %68

64:                                               ; preds = %35, %26
  %65 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %66 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %65, i32 0, i32 5
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %64, %63
  %69 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %70 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %69, i32 0, i32 4
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.tcpm_port* @typec_cap_to_tcpm(%struct.typec_capability*) #1

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
