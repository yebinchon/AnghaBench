; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_sync_vc_l4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_sync_vc_l4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_packet_sent_handler_data = type { i32*, %struct.platform_device* }

@completion = common dso_local global i32 0, align 4
@dsi_packet_sent_handler_l4 = common dso_local global i32 0, align 4
@DSI_VC_IRQ_PACKET_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to complete previous l4 transfer\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @dsi_sync_vc_l4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_sync_vc_l4(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsi_packet_sent_handler_data, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @completion, align 4
  %9 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %8)
  %10 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %6, i32 0, i32 0
  store i32* @completion, i32** %10, align 8
  %11 = getelementptr inbounds %struct.dsi_packet_sent_handler_data, %struct.dsi_packet_sent_handler_data* %6, i32 0, i32 1
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  store %struct.platform_device* %12, %struct.platform_device** %11, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @dsi_packet_sent_handler_l4, align 4
  %16 = load i32, i32* @DSI_VC_IRQ_PACKET_SENT, align 4
  %17 = call i32 @dsi_register_isr_vc(%struct.platform_device* %13, i32 %14, i32 %15, %struct.dsi_packet_sent_handler_data* %6, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @DSI_VC_CTRL(i32 %23)
  %25 = call i64 @REG_GET(%struct.platform_device* %22, i32 %24, i32 5, i32 5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = call i32 @msecs_to_jiffies(i32 10)
  %29 = call i64 @wait_for_completion_timeout(i32* @completion, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 @DSSERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %42

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @dsi_packet_sent_handler_l4, align 4
  %40 = load i32, i32* @DSI_VC_IRQ_PACKET_SENT, align 4
  %41 = call i32 @dsi_unregister_isr_vc(%struct.platform_device* %37, i32 %38, i32 %39, %struct.dsi_packet_sent_handler_data* %6, i32 %40)
  store i32 0, i32* %3, align 4
  br label %50

42:                                               ; preds = %31
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @dsi_packet_sent_handler_l4, align 4
  %46 = load i32, i32* @DSI_VC_IRQ_PACKET_SENT, align 4
  %47 = call i32 @dsi_unregister_isr_vc(%struct.platform_device* %43, i32 %44, i32 %45, %struct.dsi_packet_sent_handler_data* %6, i32 %46)
  br label %48

48:                                               ; preds = %42, %20
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %36
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @dsi_register_isr_vc(%struct.platform_device*, i32, i32, %struct.dsi_packet_sent_handler_data*, i32) #1

declare dso_local i64 @REG_GET(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

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
