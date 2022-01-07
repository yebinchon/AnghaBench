; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_init_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icom_adapter = type { i64, i64, i32, %struct.icom_port* }
%struct.icom_port = type { i32, i8*, i8* }

@ADAPTER_V1 = common dso_local global i64 0, align 8
@ICOM_PORT_ACTIVE = common dso_local global i8* null, align 8
@ICOM_UNKNOWN = common dso_local global i8* null, align 8
@PCI_DEVICE_ID_IBM_ICOM_FOUR_PORT_MODEL = common dso_local global i64 0, align 8
@ICOM_IMBED_MODEM = common dso_local global i8* null, align 8
@PCI_DEVICE_ID_IBM_ICOM_V2_ONE_PORT_RVX_ONE_PORT_MDM = common dso_local global i64 0, align 8
@ICOM_RVX = common dso_local global i8* null, align 8
@ICOM_PORT_OFF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icom_adapter*)* @icom_init_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icom_init_ports(%struct.icom_adapter* %0) #0 {
  %2 = alloca %struct.icom_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.icom_port*, align 8
  store %struct.icom_adapter* %0, %struct.icom_adapter** %2, align 8
  %6 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ADAPTER_V1, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %15, i32 0, i32 2
  store i32 2, i32* %16, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %36, %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %21, i32 0, i32 3
  %23 = load %struct.icom_port*, %struct.icom_port** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %23, i64 %25
  store %struct.icom_port* %26, %struct.icom_port** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.icom_port*, %struct.icom_port** %5, align 8
  %29 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** @ICOM_PORT_ACTIVE, align 8
  %31 = load %struct.icom_port*, %struct.icom_port** %5, align 8
  %32 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @ICOM_UNKNOWN, align 8
  %34 = load %struct.icom_port*, %struct.icom_port** %5, align 8
  %35 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %17

39:                                               ; preds = %17
  br label %132

40:                                               ; preds = %1
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @PCI_DEVICE_ID_IBM_ICOM_FOUR_PORT_MODEL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %45, i32 0, i32 2
  store i32 4, i32* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %66, %44
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %51, i32 0, i32 3
  %53 = load %struct.icom_port*, %struct.icom_port** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %53, i64 %55
  store %struct.icom_port* %56, %struct.icom_port** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.icom_port*, %struct.icom_port** %5, align 8
  %59 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** @ICOM_PORT_ACTIVE, align 8
  %61 = load %struct.icom_port*, %struct.icom_port** %5, align 8
  %62 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @ICOM_IMBED_MODEM, align 8
  %64 = load %struct.icom_port*, %struct.icom_port** %5, align 8
  %65 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %50
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %47

69:                                               ; preds = %47
  br label %131

70:                                               ; preds = %40
  %71 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %71, i32 0, i32 2
  store i32 4, i32* %72, align 8
  %73 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %73, i32 0, i32 3
  %75 = load %struct.icom_port*, %struct.icom_port** %74, align 8
  %76 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %75, i64 0
  %77 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load i8*, i8** @ICOM_PORT_ACTIVE, align 8
  %79 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %79, i32 0, i32 3
  %81 = load %struct.icom_port*, %struct.icom_port** %80, align 8
  %82 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %81, i64 0
  %83 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %82, i32 0, i32 1
  store i8* %78, i8** %83, align 8
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* @PCI_DEVICE_ID_IBM_ICOM_V2_ONE_PORT_RVX_ONE_PORT_MDM, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %70
  %88 = load i8*, i8** @ICOM_IMBED_MODEM, align 8
  %89 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %89, i32 0, i32 3
  %91 = load %struct.icom_port*, %struct.icom_port** %90, align 8
  %92 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %91, i64 0
  %93 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %92, i32 0, i32 2
  store i8* %88, i8** %93, align 8
  br label %101

94:                                               ; preds = %70
  %95 = load i8*, i8** @ICOM_RVX, align 8
  %96 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %96, i32 0, i32 3
  %98 = load %struct.icom_port*, %struct.icom_port** %97, align 8
  %99 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %98, i64 0
  %100 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %99, i32 0, i32 2
  store i8* %95, i8** %100, align 8
  br label %101

101:                                              ; preds = %94, %87
  %102 = load i8*, i8** @ICOM_PORT_OFF, align 8
  %103 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %103, i32 0, i32 3
  %105 = load %struct.icom_port*, %struct.icom_port** %104, align 8
  %106 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %105, i64 1
  %107 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %106, i32 0, i32 1
  store i8* %102, i8** %107, align 8
  %108 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %108, i32 0, i32 3
  %110 = load %struct.icom_port*, %struct.icom_port** %109, align 8
  %111 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %110, i64 2
  %112 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %111, i32 0, i32 0
  store i32 2, i32* %112, align 8
  %113 = load i8*, i8** @ICOM_PORT_ACTIVE, align 8
  %114 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %114, i32 0, i32 3
  %116 = load %struct.icom_port*, %struct.icom_port** %115, align 8
  %117 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %116, i64 2
  %118 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %117, i32 0, i32 1
  store i8* %113, i8** %118, align 8
  %119 = load i8*, i8** @ICOM_RVX, align 8
  %120 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %121 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %120, i32 0, i32 3
  %122 = load %struct.icom_port*, %struct.icom_port** %121, align 8
  %123 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %122, i64 2
  %124 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %123, i32 0, i32 2
  store i8* %119, i8** %124, align 8
  %125 = load i8*, i8** @ICOM_PORT_OFF, align 8
  %126 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %127 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %126, i32 0, i32 3
  %128 = load %struct.icom_port*, %struct.icom_port** %127, align 8
  %129 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %128, i64 3
  %130 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %129, i32 0, i32 1
  store i8* %125, i8** %130, align 8
  br label %131

131:                                              ; preds = %101, %69
  br label %132

132:                                              ; preds = %131, %39
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
