; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_dr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_dr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_capability = type { i32 }
%struct.tcpm_port = type { i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@TYPEC_PORT_DRP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SRC_READY = common dso_local global i64 0, align 8
@SNK_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@TYPEC_NO_PREFERRED_ROLE = common dso_local global i64 0, align 8
@PORT_RESET = common dso_local global i32 0, align 4
@DR_SWAP_SEND = common dso_local global i32 0, align 4
@PD_ROLE_SWAP_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_capability*, i32)* @tcpm_dr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_dr_set(%struct.typec_capability* %0, i32 %1) #0 {
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
  %10 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %9, i32 0, i32 8
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 9
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %16 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TYPEC_PORT_DRP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %104

23:                                               ; preds = %2
  %24 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %25 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SRC_READY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %31 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNK_READY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %104

38:                                               ; preds = %29, %23
  %39 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %40 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %104

45:                                               ; preds = %38
  %46 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %47 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %45
  %51 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %52 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TYPEC_NO_PREFERRED_ROLE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %50
  %57 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %58 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %61 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56, %50
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %104

67:                                               ; preds = %56
  %68 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %69 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %68, i32 0, i32 5
  store i32 1, i32* %69, align 8
  %70 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %71 = load i32, i32* @PORT_RESET, align 4
  %72 = call i32 @tcpm_set_state(%struct.tcpm_port* %70, i32 %71, i32 0)
  br label %77

73:                                               ; preds = %45
  %74 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %75 = load i32, i32* @DR_SWAP_SEND, align 4
  %76 = call i32 @tcpm_set_state(%struct.tcpm_port* %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %79 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %78, i32 0, i32 6
  store i32 0, i32* %79, align 4
  %80 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %81 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %80, i32 0, i32 7
  store i32 1, i32* %81, align 8
  %82 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %83 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %82, i32 0, i32 10
  %84 = call i32 @reinit_completion(i32* %83)
  %85 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %86 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %85, i32 0, i32 9
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %89 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %88, i32 0, i32 10
  %90 = load i32, i32* @PD_ROLE_SWAP_TIMEOUT, align 4
  %91 = call i32 @msecs_to_jiffies(i32 %90)
  %92 = call i32 @wait_for_completion_timeout(i32* %89, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %77
  %95 = load i32, i32* @ETIMEDOUT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %101

97:                                               ; preds = %77
  %98 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %99 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %94
  %102 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %103 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %102, i32 0, i32 5
  store i32 0, i32* %103, align 8
  br label %108

104:                                              ; preds = %64, %44, %35, %20
  %105 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %106 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %105, i32 0, i32 9
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %101
  %109 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %110 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %109, i32 0, i32 8
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.tcpm_port* @typec_cap_to_tcpm(%struct.typec_capability*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
