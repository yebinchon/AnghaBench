; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_port_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_port_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icom_port = type { i32, i64, i64 }
%struct.icom_adapter = type { i64, i64 }

@ADAPTER_V1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icom_port*, %struct.icom_adapter*, i32)* @icom_port_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icom_port_active(%struct.icom_port* %0, %struct.icom_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.icom_port*, align 8
  %5 = alloca %struct.icom_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.icom_port* %0, %struct.icom_port** %4, align 8
  store %struct.icom_adapter* %1, %struct.icom_adapter** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.icom_adapter*, %struct.icom_adapter** %5, align 8
  %8 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ADAPTER_V1, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.icom_adapter*, %struct.icom_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 16384
  %17 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %18 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load %struct.icom_adapter*, %struct.icom_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 16388
  %23 = add nsw i64 %22, 2
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 2, %24
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %23, %26
  %28 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %29 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %71

30:                                               ; preds = %3
  %31 = load %struct.icom_adapter*, %struct.icom_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 32768
  %35 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %36 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %38 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %55

41:                                               ; preds = %30
  %42 = load %struct.icom_adapter*, %struct.icom_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 32772
  %46 = add nsw i64 %45, 2
  %47 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %48 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %46, %51
  %53 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %54 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %70

55:                                               ; preds = %30
  %56 = load %struct.icom_adapter*, %struct.icom_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.icom_adapter, %struct.icom_adapter* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 32804
  %60 = add nsw i64 %59, 2
  %61 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %62 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 2
  %65 = mul nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %60, %66
  %68 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %69 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %55, %41
  br label %71

71:                                               ; preds = %70, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
