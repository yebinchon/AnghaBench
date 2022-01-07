; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgtty.c_xhci_dbc_tty_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgtty.c_xhci_dbc_tty_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_dbc* }
%struct.xhci_dbc = type { %struct.dbc_port }
%struct.dbc_port = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@dbc_tty_driver = common dso_local global i32 0, align 4
@DBC_WRITE_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@dbc_read_complete = common dso_local global i32 0, align 4
@dbc_write_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can't register tty port, err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_dbc_tty_register_device(%struct.xhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.xhci_dbc*, align 8
  %7 = alloca %struct.dbc_port*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %8, i32 0, i32 0
  %10 = load %struct.xhci_dbc*, %struct.xhci_dbc** %9, align 8
  store %struct.xhci_dbc* %10, %struct.xhci_dbc** %6, align 8
  %11 = load %struct.xhci_dbc*, %struct.xhci_dbc** %6, align 8
  %12 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %11, i32 0, i32 0
  store %struct.dbc_port* %12, %struct.dbc_port** %7, align 8
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %14 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %15 = call i32 @xhci_dbc_tty_init_port(%struct.xhci_hcd* %13, %struct.dbc_port* %14)
  %16 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %17 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %16, i32 0, i32 6
  %18 = load i32, i32* @dbc_tty_driver, align 4
  %19 = call %struct.device* @tty_port_register_device(i32* %17, i32 %18, i32 0, i32* null)
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i64 @IS_ERR(%struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.device* %24)
  store i32 %25, i32* %4, align 4
  br label %79

26:                                               ; preds = %1
  %27 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %28 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %27, i32 0, i32 1
  %29 = load i32, i32* @DBC_WRITE_BUF_SIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kfifo_alloc(i32* %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %76

35:                                               ; preds = %26
  %36 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %37 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %40 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %39, i32 0, i32 4
  %41 = load i32, i32* @dbc_read_complete, align 4
  %42 = call i32 @xhci_dbc_alloc_requests(i32 %38, i32* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %60

46:                                               ; preds = %35
  %47 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %48 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %51 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %50, i32 0, i32 2
  %52 = load i32, i32* @dbc_write_complete, align 4
  %53 = call i32 @xhci_dbc_alloc_requests(i32 %49, i32* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %60

57:                                               ; preds = %46
  %58 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %59 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  store i32 0, i32* %2, align 4
  br label %86

60:                                               ; preds = %56, %45
  %61 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %62 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %65 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %64, i32 0, i32 4
  %66 = call i32 @xhci_dbc_free_requests(i32 %63, i32* %65)
  %67 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %68 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %71 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %70, i32 0, i32 2
  %72 = call i32 @xhci_dbc_free_requests(i32 %69, i32* %71)
  %73 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %74 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %73, i32 0, i32 1
  %75 = call i32 @kfifo_free(i32* %74)
  br label %76

76:                                               ; preds = %60, %34
  %77 = load i32, i32* @dbc_tty_driver, align 4
  %78 = call i32 @tty_unregister_device(i32 %77, i32 0)
  br label %79

79:                                               ; preds = %76, %23
  %80 = load %struct.dbc_port*, %struct.dbc_port** %7, align 8
  %81 = call i32 @xhci_dbc_tty_exit_port(%struct.dbc_port* %80)
  %82 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @xhci_err(%struct.xhci_hcd* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %57
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @xhci_dbc_tty_init_port(%struct.xhci_hcd*, %struct.dbc_port*) #1

declare dso_local %struct.device* @tty_port_register_device(i32*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @xhci_dbc_alloc_requests(i32, i32*, i32) #1

declare dso_local i32 @xhci_dbc_free_requests(i32, i32*) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @xhci_dbc_tty_exit_port(%struct.dbc_port*) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
