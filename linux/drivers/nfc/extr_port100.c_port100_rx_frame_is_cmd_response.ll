; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_rx_frame_is_cmd_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_rx_frame_is_cmd_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.port100_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port100*, i8*)* @port100_rx_frame_is_cmd_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_rx_frame_is_cmd_response(%struct.port100* %0, i8* %1) #0 {
  %3 = alloca %struct.port100*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.port100_frame*, align 8
  store %struct.port100* %0, %struct.port100** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.port100_frame*
  store %struct.port100_frame* %7, %struct.port100_frame** %5, align 8
  %8 = load %struct.port100_frame*, %struct.port100_frame** %5, align 8
  %9 = call i64 @PORT100_FRAME_CMD(%struct.port100_frame* %8)
  %10 = load %struct.port100*, %struct.port100** %3, align 8
  %11 = getelementptr inbounds %struct.port100, %struct.port100* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @PORT100_CMD_RESPONSE(i32 %14)
  %16 = icmp eq i64 %9, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @PORT100_FRAME_CMD(%struct.port100_frame*) #1

declare dso_local i64 @PORT100_CMD_RESPONSE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
