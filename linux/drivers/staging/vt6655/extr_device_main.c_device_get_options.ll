; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_get_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_get_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.vnt_options }
%struct.vnt_options = type { i32, i32, i32, i32, i32*, i32, i32 }

@RX_DESC_DEF0 = common dso_local global i32 0, align 4
@RX_DESC_DEF1 = common dso_local global i32 0, align 4
@TX_DESC_DEF0 = common dso_local global i32 0, align 4
@TX_DESC_DEF1 = common dso_local global i32 0, align 4
@INT_WORKS_DEF = common dso_local global i32 0, align 4
@SHORT_RETRY_DEF = common dso_local global i32 0, align 4
@LONG_RETRY_DEF = common dso_local global i32 0, align 4
@BBP_TYPE_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*)* @device_get_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_get_options(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca %struct.vnt_options*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %4 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %5 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %4, i32 0, i32 0
  store %struct.vnt_options* %5, %struct.vnt_options** %3, align 8
  %6 = load i32, i32* @RX_DESC_DEF0, align 4
  %7 = load %struct.vnt_options*, %struct.vnt_options** %3, align 8
  %8 = getelementptr inbounds %struct.vnt_options, %struct.vnt_options* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @RX_DESC_DEF1, align 4
  %10 = load %struct.vnt_options*, %struct.vnt_options** %3, align 8
  %11 = getelementptr inbounds %struct.vnt_options, %struct.vnt_options* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @TX_DESC_DEF0, align 4
  %13 = load %struct.vnt_options*, %struct.vnt_options** %3, align 8
  %14 = getelementptr inbounds %struct.vnt_options, %struct.vnt_options* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @TX_DESC_DEF1, align 4
  %18 = load %struct.vnt_options*, %struct.vnt_options** %3, align 8
  %19 = getelementptr inbounds %struct.vnt_options, %struct.vnt_options* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @INT_WORKS_DEF, align 4
  %23 = load %struct.vnt_options*, %struct.vnt_options** %3, align 8
  %24 = getelementptr inbounds %struct.vnt_options, %struct.vnt_options* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @SHORT_RETRY_DEF, align 4
  %26 = load %struct.vnt_options*, %struct.vnt_options** %3, align 8
  %27 = getelementptr inbounds %struct.vnt_options, %struct.vnt_options* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @LONG_RETRY_DEF, align 4
  %29 = load %struct.vnt_options*, %struct.vnt_options** %3, align 8
  %30 = getelementptr inbounds %struct.vnt_options, %struct.vnt_options* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @BBP_TYPE_DEF, align 4
  %32 = load %struct.vnt_options*, %struct.vnt_options** %3, align 8
  %33 = getelementptr inbounds %struct.vnt_options, %struct.vnt_options* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
