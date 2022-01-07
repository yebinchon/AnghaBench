; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_load_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_load_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icom_adapter = type { i32, %struct.TYPE_2__*, i64, %struct.icom_port* }
%struct.TYPE_2__ = type { i32 }
%struct.icom_port = type { i64, i32, %struct.icom_adapter*, i64 }

@ICOM_PORT_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Memory allocation for port FAILED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icom_adapter*)* @icom_load_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icom_load_ports(%struct.icom_adapter* %0) #0 {
  %2 = alloca %struct.icom_adapter*, align 8
  %3 = alloca %struct.icom_port*, align 8
  %4 = alloca i32, align 4
  store %struct.icom_adapter* %0, %struct.icom_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %55, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %5
  %12 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %12, i32 0, i32 3
  %14 = load %struct.icom_port*, %struct.icom_port** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %14, i64 %16
  store %struct.icom_port* %17, %struct.icom_port** %3, align 8
  %18 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %19 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ICOM_PORT_ACTIVE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %11
  %24 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %25 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @icom_port_active(%struct.icom_port* %24, %struct.icom_adapter* %25, i32 %26)
  %28 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %32 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 8192, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %30, %35
  %37 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %38 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.icom_adapter*, %struct.icom_adapter** %2, align 8
  %40 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %41 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %40, i32 0, i32 2
  store %struct.icom_adapter* %39, %struct.icom_adapter** %41, align 8
  %42 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %43 = call i64 @get_port_memory(%struct.icom_port* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %23
  %46 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %47 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %46, i32 0, i32 2
  %48 = load %struct.icom_adapter*, %struct.icom_adapter** %47, align 8
  %49 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %45, %23
  br label %54

54:                                               ; preds = %53, %11
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %5

58:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @icom_port_active(%struct.icom_port*, %struct.icom_adapter*, i32) #1

declare dso_local i64 @get_port_memory(%struct.icom_port*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
