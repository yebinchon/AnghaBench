; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_default_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_default_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@TYPEC_PORT_DRP = common dso_local global i64 0, align 8
@TYPEC_SINK = common dso_local global i64 0, align 8
@SNK_UNATTACHED = common dso_local global i32 0, align 4
@TYPEC_SOURCE = common dso_local global i64 0, align 8
@SRC_UNATTACHED = common dso_local global i32 0, align 4
@TYPEC_PORT_SNK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @tcpm_default_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_default_state(%struct.tcpm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpm_port*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  %4 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %5 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TYPEC_PORT_DRP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %11 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TYPEC_SINK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @SNK_UNATTACHED, align 4
  store i32 %16, i32* %2, align 4
  br label %58

17:                                               ; preds = %9
  %18 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %19 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TYPEC_SOURCE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @SRC_UNATTACHED, align 4
  store i32 %24, i32* %2, align 4
  br label %58

25:                                               ; preds = %17
  %26 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %27 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %34 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TYPEC_SINK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @SNK_UNATTACHED, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %32, %25
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  br label %56

47:                                               ; preds = %1
  %48 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %49 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TYPEC_PORT_SNK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @SNK_UNATTACHED, align 4
  store i32 %54, i32* %2, align 4
  br label %58

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i32, i32* @SRC_UNATTACHED, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %53, %42, %23, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
