; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_packet_sent_handler_l4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_packet_sent_handler_l4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_packet_sent_handler_data = type { i32, i32 }
%struct.dsi_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dsi_packet_sent_handler_l4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_packet_sent_handler_l4(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsi_packet_sent_handler_data*, align 8
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.dsi_packet_sent_handler_data*
  store %struct.dsi_packet_sent_handler_data* %9, %struct.dsi_packet_sent_handler_data** %5, align 8
  %10 = load %struct.dsi_packet_sent_handler_data*, %struct.dsi_packet_sent_handler_data** %5, align 8
  %11 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dsi_data* @dsi_get_dsidrv_data(i32 %12)
  store %struct.dsi_data* %13, %struct.dsi_data** %6, align 8
  %14 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dsi_packet_sent_handler_data*, %struct.dsi_packet_sent_handler_data** %5, align 8
  %18 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @DSI_VC_CTRL(i32 %20)
  %22 = call i64 @REG_GET(i32 %19, i32 %21, i32 5, i32 5)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.dsi_packet_sent_handler_data*, %struct.dsi_packet_sent_handler_data** %5, align 8
  %26 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @complete(i32 %27)
  br label %29

29:                                               ; preds = %24, %2
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(i32) #1

declare dso_local i64 @REG_GET(i32, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
