; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_uart.c_nfcmrvl_nci_uart_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_uart.c_nfcmrvl_nci_uart_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_uart = type { i32, %struct.nfcmrvl_private*, %struct.TYPE_3__* }
%struct.nfcmrvl_private = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.nfcmrvl_platform_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"No platform data / DT -> fallback to module params\0A\00", align 1
@hci_muxed = common dso_local global i32 0, align 4
@reset_n_io = common dso_local global i32 0, align 4
@flow_control = common dso_local global i32 0, align 4
@break_control = common dso_local global i32 0, align 4
@NFCMRVL_PHY_UART = common dso_local global i32 0, align 4
@uart_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_uart*)* @nfcmrvl_nci_uart_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_nci_uart_open(%struct.nci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_uart*, align 8
  %4 = alloca %struct.nfcmrvl_private*, align 8
  %5 = alloca %struct.nfcmrvl_platform_data*, align 8
  %6 = alloca %struct.nfcmrvl_platform_data, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.nci_uart* %0, %struct.nci_uart** %3, align 8
  store %struct.nfcmrvl_platform_data* null, %struct.nfcmrvl_platform_data** %5, align 8
  %8 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %9 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = icmp ne %struct.device* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @nfcmrvl_uart_parse_dt(i64 %32, %struct.nfcmrvl_platform_data* %6)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store %struct.nfcmrvl_platform_data* %6, %struct.nfcmrvl_platform_data** %5, align 8
  br label %36

36:                                               ; preds = %35, %27
  br label %37

37:                                               ; preds = %36, %20, %15, %1
  %38 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %39 = icmp ne %struct.nfcmrvl_platform_data* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @hci_muxed, align 4
  %43 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %6, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @reset_n_io, align 4
  %45 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %6, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @flow_control, align 4
  %47 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @break_control, align 4
  %49 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  store %struct.nfcmrvl_platform_data* %6, %struct.nfcmrvl_platform_data** %5, align 8
  br label %50

50:                                               ; preds = %40, %37
  %51 = load i32, i32* @NFCMRVL_PHY_UART, align 4
  %52 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %55 = call %struct.nfcmrvl_private* @nfcmrvl_nci_register_dev(i32 %51, %struct.nci_uart* %52, i32* @uart_ops, %struct.device* %53, %struct.nfcmrvl_platform_data* %54)
  store %struct.nfcmrvl_private* %55, %struct.nfcmrvl_private** %4, align 8
  %56 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %57 = call i64 @IS_ERR(%struct.nfcmrvl_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %61 = call i32 @PTR_ERR(%struct.nfcmrvl_private* %60)
  store i32 %61, i32* %2, align 4
  br label %73

62:                                               ; preds = %50
  %63 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %64 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %66 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %67 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %66, i32 0, i32 1
  store %struct.nfcmrvl_private* %65, %struct.nfcmrvl_private** %67, align 8
  %68 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %69 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nci_uart*, %struct.nci_uart** %3, align 8
  %72 = getelementptr inbounds %struct.nci_uart, %struct.nci_uart* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %62, %59
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @nfcmrvl_uart_parse_dt(i64, %struct.nfcmrvl_platform_data*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.nfcmrvl_private* @nfcmrvl_nci_register_dev(i32, %struct.nci_uart*, i32*, %struct.device*, %struct.nfcmrvl_platform_data*) #1

declare dso_local i64 @IS_ERR(%struct.nfcmrvl_private*) #1

declare dso_local i32 @PTR_ERR(%struct.nfcmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
