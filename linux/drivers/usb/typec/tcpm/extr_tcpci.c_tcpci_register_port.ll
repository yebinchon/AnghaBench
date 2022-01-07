; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_register_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_register_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpci = type { i32, %struct.TYPE_2__, %struct.device*, i32, %struct.tcpci_data* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.tcpci_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tcpci_init = common dso_local global i32 0, align 4
@tcpci_get_vbus = common dso_local global i32 0, align 4
@tcpci_set_vbus = common dso_local global i32 0, align 4
@tcpci_set_cc = common dso_local global i32 0, align 4
@tcpci_get_cc = common dso_local global i32 0, align 4
@tcpci_set_polarity = common dso_local global i32 0, align 4
@tcpci_set_vconn = common dso_local global i32 0, align 4
@tcpci_start_toggling = common dso_local global i32 0, align 4
@tcpci_set_pd_rx = common dso_local global i32 0, align 4
@tcpci_set_roles = common dso_local global i32 0, align 4
@tcpci_pd_transmit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcpci* @tcpci_register_port(%struct.device* %0, %struct.tcpci_data* %1) #0 {
  %3 = alloca %struct.tcpci*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tcpci_data*, align 8
  %6 = alloca %struct.tcpci*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tcpci_data* %1, %struct.tcpci_data** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tcpci* @devm_kzalloc(%struct.device* %8, i32 72, i32 %9)
  store %struct.tcpci* %10, %struct.tcpci** %6, align 8
  %11 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %12 = icmp ne %struct.tcpci* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.tcpci* @ERR_PTR(i32 %15)
  store %struct.tcpci* %16, %struct.tcpci** %3, align 8
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %20 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %19, i32 0, i32 2
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.tcpci_data*, %struct.tcpci_data** %5, align 8
  %22 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %23 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %22, i32 0, i32 4
  store %struct.tcpci_data* %21, %struct.tcpci_data** %23, align 8
  %24 = load %struct.tcpci_data*, %struct.tcpci_data** %5, align 8
  %25 = getelementptr inbounds %struct.tcpci_data, %struct.tcpci_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %28 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @tcpci_init, align 4
  %30 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %31 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 10
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @tcpci_get_vbus, align 4
  %34 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %35 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 9
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @tcpci_set_vbus, align 4
  %38 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %39 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 8
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @tcpci_set_cc, align 4
  %42 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %43 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 7
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @tcpci_get_cc, align 4
  %46 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %47 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @tcpci_set_polarity, align 4
  %50 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %51 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @tcpci_set_vconn, align 4
  %54 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %55 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @tcpci_start_toggling, align 4
  %58 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %59 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @tcpci_set_pd_rx, align 4
  %62 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %63 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @tcpci_set_roles, align 4
  %66 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %67 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @tcpci_pd_transmit, align 4
  %70 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %71 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %74 = call i32 @tcpci_parse_config(%struct.tcpci* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %17
  %78 = load i32, i32* %7, align 4
  %79 = call %struct.tcpci* @ERR_PTR(i32 %78)
  store %struct.tcpci* %79, %struct.tcpci** %3, align 8
  br label %101

80:                                               ; preds = %17
  %81 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %82 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %81, i32 0, i32 2
  %83 = load %struct.device*, %struct.device** %82, align 8
  %84 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %85 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %84, i32 0, i32 1
  %86 = call i32 @tcpm_register_port(%struct.device* %83, %struct.TYPE_2__* %85)
  %87 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %88 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %90 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @IS_ERR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %80
  %95 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  %96 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call %struct.tcpci* @ERR_CAST(i32 %97)
  store %struct.tcpci* %98, %struct.tcpci** %3, align 8
  br label %101

99:                                               ; preds = %80
  %100 = load %struct.tcpci*, %struct.tcpci** %6, align 8
  store %struct.tcpci* %100, %struct.tcpci** %3, align 8
  br label %101

101:                                              ; preds = %99, %94, %77, %13
  %102 = load %struct.tcpci*, %struct.tcpci** %3, align 8
  ret %struct.tcpci* %102
}

declare dso_local %struct.tcpci* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.tcpci* @ERR_PTR(i32) #1

declare dso_local i32 @tcpci_parse_config(%struct.tcpci*) #1

declare dso_local i32 @tcpm_register_port(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.tcpci* @ERR_CAST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
