; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_packet_sent_handler_vp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_packet_sent_handler_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_packet_sent_handler_data = type { i32, i32 }
%struct.dsi_data = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dsi_packet_sent_handler_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_packet_sent_handler_vp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsi_packet_sent_handler_data*, align 8
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.dsi_packet_sent_handler_data*
  store %struct.dsi_packet_sent_handler_data* %10, %struct.dsi_packet_sent_handler_data** %5, align 8
  %11 = load %struct.dsi_packet_sent_handler_data*, %struct.dsi_packet_sent_handler_data** %5, align 8
  %12 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dsi_data* @dsi_get_dsidrv_data(i32 %13)
  store %struct.dsi_data* %14, %struct.dsi_data** %6, align 8
  %15 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %16 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 30, i32 31
  store i32 %23, i32* %8, align 4
  %24 = load %struct.dsi_packet_sent_handler_data*, %struct.dsi_packet_sent_handler_data** %5, align 8
  %25 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @DSI_VC_TE(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @REG_GET(i32 %26, i32 %28, i32 %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.dsi_packet_sent_handler_data*, %struct.dsi_packet_sent_handler_data** %5, align 8
  %35 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @complete(i32 %36)
  br label %38

38:                                               ; preds = %33, %2
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(i32) #1

declare dso_local i64 @REG_GET(i32, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_TE(i32) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
