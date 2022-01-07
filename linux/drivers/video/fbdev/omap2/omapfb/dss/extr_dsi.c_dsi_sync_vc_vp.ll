; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_sync_vc_vp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_sync_vc_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i64 }
%struct.dsi_packet_sent_handler_data = type { i32*, %struct.platform_device* }

@completion = common dso_local global i32 0, align 4
@dsi_packet_sent_handler_vp = common dso_local global i32 0, align 4
@DSI_VC_IRQ_PACKET_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to complete previous frame transfer\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @dsi_sync_vc_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_sync_vc_vp(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca %struct.dsi_packet_sent_handler_data, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %10)
  store %struct.dsi_data* %11, %struct.dsi_data** %6, align 8
  %12 = load i32, i32* @completion, align 4
  %13 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %12)
  %14 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %7, i32 0, i32 0
  store i32* @completion, i32** %14, align 8
  %15 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %7, i32 0, i32 1
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  store %struct.platform_device* %16, %struct.platform_device** %15, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %18 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 30, i32 31
  store i32 %22, i32* %9, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @dsi_packet_sent_handler_vp, align 4
  %26 = load i32, i32* @DSI_VC_IRQ_PACKET_SENT, align 4
  %27 = call i32 @dsi_register_isr_vc(%struct.platform_device* %23, i32 %24, i32 %25, %struct.dsi_packet_sent_handler_data* %7, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %60

31:                                               ; preds = %2
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @DSI_VC_TE(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @REG_GET(%struct.platform_device* %32, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = call i32 @msecs_to_jiffies(i32 10)
  %41 = call i64 @wait_for_completion_timeout(i32* @completion, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = call i32 @DSSERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %54

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @dsi_packet_sent_handler_vp, align 4
  %52 = load i32, i32* @DSI_VC_IRQ_PACKET_SENT, align 4
  %53 = call i32 @dsi_unregister_isr_vc(%struct.platform_device* %49, i32 %50, i32 %51, %struct.dsi_packet_sent_handler_data* %7, i32 %52)
  store i32 0, i32* %3, align 4
  br label %62

54:                                               ; preds = %43
  %55 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @dsi_packet_sent_handler_vp, align 4
  %58 = load i32, i32* @DSI_VC_IRQ_PACKET_SENT, align 4
  %59 = call i32 @dsi_unregister_isr_vc(%struct.platform_device* %55, i32 %56, i32 %57, %struct.dsi_packet_sent_handler_data* %7, i32 %58)
  br label %60

60:                                               ; preds = %54, %30
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %48
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @dsi_register_isr_vc(%struct.platform_device*, i32, i32, %struct.dsi_packet_sent_handler_data*, i32) #1

declare dso_local i64 @REG_GET(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_TE(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_unregister_isr_vc(%struct.platform_device*, i32, i32, %struct.dsi_packet_sent_handler_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
