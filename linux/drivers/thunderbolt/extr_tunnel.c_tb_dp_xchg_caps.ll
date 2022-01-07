; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_dp_xchg_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_dp_xchg_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_tunnel = type { %struct.tb_port*, %struct.tb_port* }
%struct.tb_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TB_CFG_PORT = common dso_local global i32 0, align 4
@TB_DP_LOCAL_CAP = common dso_local global i64 0, align 8
@TB_DP_REMOTE_CAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_tunnel*)* @tb_dp_xchg_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_dp_xchg_caps(%struct.tb_tunnel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_tunnel*, align 8
  %4 = alloca %struct.tb_port*, align 8
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tb_tunnel* %0, %struct.tb_tunnel** %3, align 8
  %9 = load %struct.tb_tunnel*, %struct.tb_tunnel** %3, align 8
  %10 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %9, i32 0, i32 1
  %11 = load %struct.tb_port*, %struct.tb_port** %10, align 8
  store %struct.tb_port* %11, %struct.tb_port** %4, align 8
  %12 = load %struct.tb_tunnel*, %struct.tb_tunnel** %3, align 8
  %13 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %12, i32 0, i32 0
  %14 = load %struct.tb_port*, %struct.tb_port** %13, align 8
  store %struct.tb_port* %14, %struct.tb_port** %5, align 8
  %15 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %16 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %23 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %1
  store i32 0, i32* %2, align 4
  br label %77

29:                                               ; preds = %21
  %30 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %31 = load i32, i32* @TB_CFG_PORT, align 4
  %32 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %33 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TB_DP_LOCAL_CAP, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @tb_port_read(%struct.tb_port* %30, i32* %6, i32 %31, i64 %36, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %77

42:                                               ; preds = %29
  %43 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %44 = load i32, i32* @TB_CFG_PORT, align 4
  %45 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %46 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TB_DP_LOCAL_CAP, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @tb_port_read(%struct.tb_port* %43, i32* %7, i32 %44, i64 %49, i32 1)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %77

55:                                               ; preds = %42
  %56 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %57 = load i32, i32* @TB_CFG_PORT, align 4
  %58 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  %59 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TB_DP_REMOTE_CAP, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @tb_port_write(%struct.tb_port* %56, i32* %6, i32 %57, i64 %62, i32 1)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %77

68:                                               ; preds = %55
  %69 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %70 = load i32, i32* @TB_CFG_PORT, align 4
  %71 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %72 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TB_DP_REMOTE_CAP, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @tb_port_write(%struct.tb_port* %69, i32* %7, i32 %70, i64 %75, i32 1)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %68, %66, %53, %40, %28
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @tb_port_read(%struct.tb_port*, i32*, i32, i64, i32) #1

declare dso_local i32 @tb_port_write(%struct.tb_port*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
