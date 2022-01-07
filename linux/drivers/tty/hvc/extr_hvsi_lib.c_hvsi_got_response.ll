; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsi_got_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsi_got_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsi_priv = type { i32, i64 }
%struct.hvsi_query_response = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HVSI_TSCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvsi_priv*)* @hvsi_got_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvsi_got_response(%struct.hvsi_priv* %0) #0 {
  %2 = alloca %struct.hvsi_priv*, align 8
  %3 = alloca %struct.hvsi_query_response*, align 8
  store %struct.hvsi_priv* %0, %struct.hvsi_priv** %2, align 8
  %4 = load %struct.hvsi_priv*, %struct.hvsi_priv** %2, align 8
  %5 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.hvsi_query_response*
  store %struct.hvsi_query_response* %7, %struct.hvsi_query_response** %3, align 8
  %8 = load %struct.hvsi_query_response*, %struct.hvsi_query_response** %3, align 8
  %9 = getelementptr inbounds %struct.hvsi_query_response, %struct.hvsi_query_response* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 128, label %11
  ]

11:                                               ; preds = %1
  %12 = load %struct.hvsi_priv*, %struct.hvsi_priv** %2, align 8
  %13 = load %struct.hvsi_query_response*, %struct.hvsi_query_response** %3, align 8
  %14 = getelementptr inbounds %struct.hvsi_query_response, %struct.hvsi_query_response* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be32_to_cpu(i32 %16)
  %18 = load i32, i32* @HVSI_TSCD, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @hvsi_cd_change(%struct.hvsi_priv* %12, i32 %19)
  %21 = load %struct.hvsi_priv*, %struct.hvsi_priv** %2, align 8
  %22 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %1, %11
  ret void
}

declare dso_local i32 @hvsi_cd_change(%struct.hvsi_priv*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
