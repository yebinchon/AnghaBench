; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_tunnel = type { %struct.tb_path**, %struct.tb_port*, %struct.tb_port*, i32 }
%struct.tb_path = type { i32 }
%struct.tb = type { i32 }
%struct.tb_port = type { i32 }

@TB_TUNNEL_DMA = common dso_local global i32 0, align 4
@tb_dma_activate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DMA RX\00", align 1
@TB_PATH_NONE = common dso_local global i32 0, align 4
@TB_PATH_SOURCE = common dso_local global i32 0, align 4
@TB_PATH_INTERNAL = common dso_local global i32 0, align 4
@TB_DMA_PATH_IN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"DMA TX\00", align 1
@TB_PATH_ALL = common dso_local global i32 0, align 4
@TB_DMA_PATH_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_tunnel* @tb_tunnel_alloc_dma(%struct.tb* %0, %struct.tb_port* %1, %struct.tb_port* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.tb_tunnel*, align 8
  %9 = alloca %struct.tb*, align 8
  %10 = alloca %struct.tb_port*, align 8
  %11 = alloca %struct.tb_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tb_tunnel*, align 8
  %17 = alloca %struct.tb_path*, align 8
  %18 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %9, align 8
  store %struct.tb_port* %1, %struct.tb_port** %10, align 8
  store %struct.tb_port* %2, %struct.tb_port** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.tb*, %struct.tb** %9, align 8
  %20 = load i32, i32* @TB_TUNNEL_DMA, align 4
  %21 = call %struct.tb_tunnel* @tb_tunnel_alloc(%struct.tb* %19, i32 2, i32 %20)
  store %struct.tb_tunnel* %21, %struct.tb_tunnel** %16, align 8
  %22 = load %struct.tb_tunnel*, %struct.tb_tunnel** %16, align 8
  %23 = icmp ne %struct.tb_tunnel* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %7
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %8, align 8
  br label %86

25:                                               ; preds = %7
  %26 = load i32, i32* @tb_dma_activate, align 4
  %27 = load %struct.tb_tunnel*, %struct.tb_tunnel** %16, align 8
  %28 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.tb_port*, %struct.tb_port** %10, align 8
  %30 = load %struct.tb_tunnel*, %struct.tb_tunnel** %16, align 8
  %31 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %30, i32 0, i32 2
  store %struct.tb_port* %29, %struct.tb_port** %31, align 8
  %32 = load %struct.tb_port*, %struct.tb_port** %11, align 8
  %33 = load %struct.tb_tunnel*, %struct.tb_tunnel** %16, align 8
  %34 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %33, i32 0, i32 1
  store %struct.tb_port* %32, %struct.tb_port** %34, align 8
  %35 = load %struct.tb_port*, %struct.tb_port** %10, align 8
  %36 = call i32 @tb_dma_credits(%struct.tb_port* %35)
  store i32 %36, i32* %18, align 4
  %37 = load %struct.tb*, %struct.tb** %9, align 8
  %38 = load %struct.tb_port*, %struct.tb_port** %11, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.tb_port*, %struct.tb_port** %10, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call %struct.tb_path* @tb_path_alloc(%struct.tb* %37, %struct.tb_port* %38, i32 %39, %struct.tb_port* %40, i32 %41, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.tb_path* %42, %struct.tb_path** %17, align 8
  %43 = load %struct.tb_path*, %struct.tb_path** %17, align 8
  %44 = icmp ne %struct.tb_path* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %25
  %46 = load %struct.tb_tunnel*, %struct.tb_tunnel** %16, align 8
  %47 = call i32 @tb_tunnel_free(%struct.tb_tunnel* %46)
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %8, align 8
  br label %86

48:                                               ; preds = %25
  %49 = load %struct.tb_path*, %struct.tb_path** %17, align 8
  %50 = load i32, i32* @TB_PATH_NONE, align 4
  %51 = load i32, i32* @TB_PATH_SOURCE, align 4
  %52 = load i32, i32* @TB_PATH_INTERNAL, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @tb_dma_init_path(%struct.tb_path* %49, i32 %50, i32 %53, i32 %54)
  %56 = load %struct.tb_path*, %struct.tb_path** %17, align 8
  %57 = load %struct.tb_tunnel*, %struct.tb_tunnel** %16, align 8
  %58 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %57, i32 0, i32 0
  %59 = load %struct.tb_path**, %struct.tb_path*** %58, align 8
  %60 = load i64, i64* @TB_DMA_PATH_IN, align 8
  %61 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %59, i64 %60
  store %struct.tb_path* %56, %struct.tb_path** %61, align 8
  %62 = load %struct.tb*, %struct.tb** %9, align 8
  %63 = load %struct.tb_port*, %struct.tb_port** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.tb_port*, %struct.tb_port** %11, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.tb_path* @tb_path_alloc(%struct.tb* %62, %struct.tb_port* %63, i32 %64, %struct.tb_port* %65, i32 %66, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.tb_path* %67, %struct.tb_path** %17, align 8
  %68 = load %struct.tb_path*, %struct.tb_path** %17, align 8
  %69 = icmp ne %struct.tb_path* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %48
  %71 = load %struct.tb_tunnel*, %struct.tb_tunnel** %16, align 8
  %72 = call i32 @tb_tunnel_free(%struct.tb_tunnel* %71)
  store %struct.tb_tunnel* null, %struct.tb_tunnel** %8, align 8
  br label %86

73:                                               ; preds = %48
  %74 = load %struct.tb_path*, %struct.tb_path** %17, align 8
  %75 = load i32, i32* @TB_PATH_SOURCE, align 4
  %76 = load i32, i32* @TB_PATH_ALL, align 4
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @tb_dma_init_path(%struct.tb_path* %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.tb_path*, %struct.tb_path** %17, align 8
  %80 = load %struct.tb_tunnel*, %struct.tb_tunnel** %16, align 8
  %81 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %80, i32 0, i32 0
  %82 = load %struct.tb_path**, %struct.tb_path*** %81, align 8
  %83 = load i64, i64* @TB_DMA_PATH_OUT, align 8
  %84 = getelementptr inbounds %struct.tb_path*, %struct.tb_path** %82, i64 %83
  store %struct.tb_path* %79, %struct.tb_path** %84, align 8
  %85 = load %struct.tb_tunnel*, %struct.tb_tunnel** %16, align 8
  store %struct.tb_tunnel* %85, %struct.tb_tunnel** %8, align 8
  br label %86

86:                                               ; preds = %73, %70, %45, %24
  %87 = load %struct.tb_tunnel*, %struct.tb_tunnel** %8, align 8
  ret %struct.tb_tunnel* %87
}

declare dso_local %struct.tb_tunnel* @tb_tunnel_alloc(%struct.tb*, i32, i32) #1

declare dso_local i32 @tb_dma_credits(%struct.tb_port*) #1

declare dso_local %struct.tb_path* @tb_path_alloc(%struct.tb*, %struct.tb_port*, i32, %struct.tb_port*, i32, i32, i8*) #1

declare dso_local i32 @tb_tunnel_free(%struct.tb_tunnel*) #1

declare dso_local i32 @tb_dma_init_path(%struct.tb_path*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
