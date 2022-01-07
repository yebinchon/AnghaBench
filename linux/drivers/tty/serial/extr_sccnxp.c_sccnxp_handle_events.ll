; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_handle_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_handle_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sccnxp_port = type { i32, i32*, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SCCNXP_ISR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sccnxp_port*)* @sccnxp_handle_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccnxp_handle_events(%struct.sccnxp_port* %0) #0 {
  %2 = alloca %struct.sccnxp_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sccnxp_port* %0, %struct.sccnxp_port** %2, align 8
  br label %5

5:                                                ; preds = %79, %1
  %6 = load %struct.sccnxp_port*, %struct.sccnxp_port** %2, align 8
  %7 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* @SCCNXP_ISR_REG, align 4
  %11 = call i32 @sccnxp_read(i32* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.sccnxp_port*, %struct.sccnxp_port** %2, align 8
  %13 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %80

20:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %75, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.sccnxp_port*, %struct.sccnxp_port** %2, align 8
  %24 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %21
  %29 = load %struct.sccnxp_port*, %struct.sccnxp_port** %2, align 8
  %30 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ISR_RXRDY(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.sccnxp_port*, %struct.sccnxp_port** %2, align 8
  %45 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @sccnxp_handle_rx(i32* %49)
  br label %51

51:                                               ; preds = %43, %37, %28
  %52 = load %struct.sccnxp_port*, %struct.sccnxp_port** %2, align 8
  %53 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @ISR_TXRDY(i32 %62)
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.sccnxp_port*, %struct.sccnxp_port** %2, align 8
  %68 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @sccnxp_handle_tx(i32* %72)
  br label %74

74:                                               ; preds = %66, %60, %51
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %21

78:                                               ; preds = %21
  br label %79

79:                                               ; preds = %78
  br i1 true, label %5, label %80

80:                                               ; preds = %79, %19
  ret void
}

declare dso_local i32 @sccnxp_read(i32*, i32) #1

declare dso_local i32 @ISR_RXRDY(i32) #1

declare dso_local i32 @sccnxp_handle_rx(i32*) #1

declare dso_local i32 @ISR_TXRDY(i32) #1

declare dso_local i32 @sccnxp_handle_tx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
