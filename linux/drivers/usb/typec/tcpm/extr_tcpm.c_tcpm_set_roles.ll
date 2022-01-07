; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_set_roles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_set_roles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32, i32)* }

@TYPEC_POLARITY_CC1 = common dso_local global i64 0, align 8
@TYPEC_ORIENTATION_NORMAL = common dso_local global i32 0, align 4
@TYPEC_ORIENTATION_REVERSE = common dso_local global i32 0, align 4
@TYPEC_HOST = common dso_local global i32 0, align 4
@USB_ROLE_HOST = common dso_local global i32 0, align 4
@USB_ROLE_DEVICE = common dso_local global i32 0, align 4
@TYPEC_STATE_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32, i32, i32)* @tcpm_set_roles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_set_roles(%struct.tcpm_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpm_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %14 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TYPEC_POLARITY_CC1, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @TYPEC_ORIENTATION_NORMAL, align 4
  store i32 %19, i32* %10, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @TYPEC_ORIENTATION_REVERSE, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @TYPEC_HOST, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @USB_ROLE_HOST, align 4
  store i32 %27, i32* %11, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @USB_ROLE_DEVICE, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %32 = load i32, i32* @TYPEC_STATE_USB, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @tcpm_mux_set(%struct.tcpm_port* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %74

40:                                               ; preds = %30
  %41 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %42 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_2__*, i32, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32, i32)** %44, align 8
  %46 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %47 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 %45(%struct.TYPE_2__* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %74

57:                                               ; preds = %40
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %60 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %63 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %65 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @typec_set_data_role(i32 %66, i32 %67)
  %69 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %70 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @typec_set_pwr_role(i32 %71, i32 %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %57, %55, %38
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @tcpm_mux_set(%struct.tcpm_port*, i32, i32, i32) #1

declare dso_local i32 @typec_set_data_role(i32, i32) #1

declare dso_local i32 @typec_set_pwr_role(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
