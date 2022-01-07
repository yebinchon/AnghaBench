; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsi_get_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvsi_lib.c_hvsi_get_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsi_priv = type { i64, i32*, i32, i64 (i32, i32*, i64)* }

@HVSI_INBUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hvsi_priv*)* @hvsi_get_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvsi_get_packet(%struct.hvsi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hvsi_priv*, align 8
  store %struct.hvsi_priv* %0, %struct.hvsi_priv** %3, align 8
  %4 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %5 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HVSI_INBUF_SIZE, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %11 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %10, i32 0, i32 3
  %12 = load i64 (i32, i32*, i64)*, i64 (i32, i32*, i64)** %11, align 8
  %13 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %14 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %17 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %20 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i64, i64* @HVSI_INBUF_SIZE, align 8
  %24 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %25 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %23, %26
  %28 = call i64 %12(i32 %15, i32* %22, i64 %27)
  %29 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %30 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, %28
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %9, %1
  %34 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %35 = getelementptr inbounds %struct.hvsi_priv, %struct.hvsi_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.hvsi_priv*, %struct.hvsi_priv** %3, align 8
  %40 = call i32 @hvsi_check_packet(%struct.hvsi_priv* %39)
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @hvsi_check_packet(%struct.hvsi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
