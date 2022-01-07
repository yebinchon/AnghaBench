; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_port.c_sci_port_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i64, i32, i32**, i32*, i32, i32, i32, i64, i64, i64, %struct.isci_host*, i64, i64, i64, i32, i32 }
%struct.isci_host = type { i32 }

@sci_port_state_table = common dso_local global i32 0, align 4
@SCI_PORT_STOPPED = common dso_local global i32 0, align 4
@SCIC_SDS_DUMMY_PORT = common dso_local global i32 0, align 4
@SCU_DUMMY_INDEX = common dso_local global i32 0, align 4
@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i32 0, align 4
@port_timeout = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_port_construct(%struct.isci_port* %0, i64 %1, %struct.isci_host* %2) #0 {
  %4 = alloca %struct.isci_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.isci_host*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.isci_host* %2, %struct.isci_host** %6, align 8
  %7 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %8 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %7, i32 0, i32 15
  %9 = load i32, i32* @sci_port_state_table, align 4
  %10 = load i32, i32* @SCI_PORT_STOPPED, align 4
  %11 = call i32 @sci_init_sm(i32* %8, i32 %9, i32 %10)
  %12 = load i32, i32* @SCIC_SDS_DUMMY_PORT, align 4
  %13 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %14 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %17 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %19 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %18, i32 0, i32 13
  store i64 0, i64* %19, align 8
  %20 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %21 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %20, i32 0, i32 12
  store i64 0, i64* %21, align 8
  %22 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %23 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %22, i32 0, i32 11
  store i64 0, i64* %23, align 8
  %24 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %25 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.isci_host*, %struct.isci_host** %6, align 8
  %27 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %28 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %27, i32 0, i32 10
  store %struct.isci_host* %26, %struct.isci_host** %28, align 8
  %29 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %30 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %29, i32 0, i32 9
  store i64 0, i64* %30, align 8
  %31 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %32 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %31, i32 0, i32 8
  store i64 0, i64* %32, align 8
  %33 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %34 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @SCU_DUMMY_INDEX, align 4
  %36 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %37 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %39 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %40 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %42 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %41, i32 0, i32 4
  %43 = load i32, i32* @port_timeout, align 4
  %44 = call i32 @sci_init_timer(i32* %42, i32 %43)
  %45 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %46 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  store i64 0, i64* %5, align 8
  br label %47

47:                                               ; preds = %57, %3
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @SCI_MAX_PHYS, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.isci_port*, %struct.isci_port** %4, align 8
  %53 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %52, i32 0, i32 2
  %54 = load i32**, i32*** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 %55
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %5, align 8
  br label %47

60:                                               ; preds = %47
  ret void
}

declare dso_local i32 @sci_init_sm(i32*, i32, i32) #1

declare dso_local i32 @sci_init_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
