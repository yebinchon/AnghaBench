; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_port_type_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_port_type_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_capability = type { i32 }
%struct.tcpm_port = type { i32, i64, i64, i32, i32 }

@PORT_RESET = common dso_local global i32 0, align 4
@TYPEC_PORT_SNK = common dso_local global i32 0, align 4
@TYPEC_SINK = common dso_local global i64 0, align 8
@TYPEC_DEVICE = common dso_local global i64 0, align 8
@TYPEC_PORT_SRC = common dso_local global i32 0, align 4
@TYPEC_SOURCE = common dso_local global i64 0, align 8
@TYPEC_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_capability*, i32)* @tcpm_port_type_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_port_type_set(%struct.typec_capability* %0, i32 %1) #0 {
  %3 = alloca %struct.typec_capability*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpm_port*, align 8
  store %struct.typec_capability* %0, %struct.typec_capability** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.typec_capability*, %struct.typec_capability** %3, align 8
  %7 = call %struct.tcpm_port* @typec_cap_to_tcpm(%struct.typec_capability* %6)
  store %struct.tcpm_port* %7, %struct.tcpm_port** %5, align 8
  %8 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %9 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %8, i32 0, i32 3
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %74

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %20 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %22 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %27 = load i32, i32* @PORT_RESET, align 4
  %28 = call i32 @tcpm_set_state(%struct.tcpm_port* %26, i32 %27, i32 0)
  br label %73

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TYPEC_PORT_SNK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %35 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TYPEC_SINK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %41 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TYPEC_DEVICE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %47 = load i32, i32* @PORT_RESET, align 4
  %48 = call i32 @tcpm_set_state(%struct.tcpm_port* %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %45, %39
  br label %72

50:                                               ; preds = %29
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @TYPEC_PORT_SRC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %56 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TYPEC_SOURCE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %62 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TYPEC_HOST, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %68 = load i32, i32* @PORT_RESET, align 4
  %69 = call i32 @tcpm_set_state(%struct.tcpm_port* %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %49
  br label %73

73:                                               ; preds = %72, %25
  br label %74

74:                                               ; preds = %73, %16
  %75 = load %struct.tcpm_port*, %struct.tcpm_port** %5, align 8
  %76 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %75, i32 0, i32 3
  %77 = call i32 @mutex_unlock(i32* %76)
  ret i32 0
}

declare dso_local %struct.tcpm_port* @typec_cap_to_tcpm(%struct.typec_capability*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
