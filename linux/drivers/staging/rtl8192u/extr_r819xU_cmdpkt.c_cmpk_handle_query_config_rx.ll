; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_cmdpkt.c_cmpk_handle_query_config_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_cmdpkt.c_cmpk_handle_query_config_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cmpk_query_cfg = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*)* @cmpk_handle_query_config_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmpk_handle_query_config_rx(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cmpk_query_cfg, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 4
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 128
  %10 = ashr i32 %9, 7
  %11 = getelementptr inbounds %struct.cmpk_query_cfg, %struct.cmpk_query_cfg* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 4
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 96
  %16 = ashr i32 %15, 5
  %17 = getelementptr inbounds %struct.cmpk_query_cfg, %struct.cmpk_query_cfg* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 24
  %22 = ashr i32 %21, 3
  %23 = getelementptr inbounds %struct.cmpk_query_cfg, %struct.cmpk_query_cfg* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 6
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 15
  %28 = ashr i32 %27, 0
  %29 = getelementptr inbounds %struct.cmpk_query_cfg, %struct.cmpk_query_cfg* %5, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 7
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.cmpk_query_cfg, %struct.cmpk_query_cfg* %5, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 24
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 9
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = or i32 %37, %41
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 10
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = or i32 %42, %46
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 11
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 0
  %52 = or i32 %47, %51
  %53 = getelementptr inbounds %struct.cmpk_query_cfg, %struct.cmpk_query_cfg* %5, i32 0, i32 5
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 12
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 24
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 13
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 %57, %61
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 14
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %62, %66
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 15
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 0
  %72 = or i32 %67, %71
  %73 = getelementptr inbounds %struct.cmpk_query_cfg, %struct.cmpk_query_cfg* %5, i32 0, i32 6
  store i32 %72, i32* %73, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
