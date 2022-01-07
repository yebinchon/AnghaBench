; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_set_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_set_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo = type { i32, i64, i8*, i64 }

@MLXBF_TMFIFO_TX_CTL = common dso_local global i64 0, align 8
@MLXBF_TMFIFO_TX_CTL__MAX_ENTRIES_MASK = common dso_local global i32 0, align 4
@MLXBF_TMFIFO_TX_CTL__LWM_MASK = common dso_local global i32 0, align 4
@MLXBF_TMFIFO_TX_CTL__HWM_MASK = common dso_local global i32 0, align 4
@MLXBF_TMFIFO_RX_CTL = common dso_local global i64 0, align 8
@MLXBF_TMFIFO_RX_CTL__MAX_ENTRIES_MASK = common dso_local global i32 0, align 4
@MLXBF_TMFIFO_RX_CTL__LWM_MASK = common dso_local global i32 0, align 4
@MLXBF_TMFIFO_RX_CTL__HWM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo*)* @mlxbf_tmfifo_set_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_set_threshold(%struct.mlxbf_tmfifo* %0) #0 {
  %2 = alloca %struct.mlxbf_tmfifo*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxbf_tmfifo* %0, %struct.mlxbf_tmfifo** %2, align 8
  %4 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %5 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MLXBF_TMFIFO_TX_CTL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readq(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @MLXBF_TMFIFO_TX_CTL__MAX_ENTRIES_MASK, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @FIELD_GET(i32 %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %15 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MLXBF_TMFIFO_TX_CTL__LWM_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* @MLXBF_TMFIFO_TX_CTL__LWM_MASK, align 4
  %21 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %22 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %23, 2
  %25 = call i32 @FIELD_PREP(i32 %20, i32 %24)
  %26 = or i32 %19, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MLXBF_TMFIFO_TX_CTL__HWM_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* @MLXBF_TMFIFO_TX_CTL__HWM_MASK, align 4
  %32 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %33 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = call i32 @FIELD_PREP(i32 %31, i32 %35)
  %37 = or i32 %30, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %40 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MLXBF_TMFIFO_TX_CTL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writeq(i32 %38, i64 %43)
  %45 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %46 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MLXBF_TMFIFO_RX_CTL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readq(i64 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @MLXBF_TMFIFO_RX_CTL__MAX_ENTRIES_MASK, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i8* @FIELD_GET(i32 %51, i32 %52)
  %54 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %55 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @MLXBF_TMFIFO_RX_CTL__LWM_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load i32, i32* @MLXBF_TMFIFO_RX_CTL__LWM_MASK, align 4
  %61 = call i32 @FIELD_PREP(i32 %60, i32 0)
  %62 = or i32 %59, %61
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @MLXBF_TMFIFO_RX_CTL__HWM_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* @MLXBF_TMFIFO_RX_CTL__HWM_MASK, align 4
  %68 = call i32 @FIELD_PREP(i32 %67, i32 1)
  %69 = or i32 %66, %68
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %72 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MLXBF_TMFIFO_RX_CTL, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writeq(i32 %70, i64 %75)
  ret void
}

declare dso_local i32 @readq(i64) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writeq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
