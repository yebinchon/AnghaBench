; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_flush_long_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_flush_long_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"\09\09b1 %#02x b2 %#02x b3 %#02x b4 %#02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32)* @dsi_vc_flush_long_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_vc_flush_long_data(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %12, %2
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @DSI_VC_CTRL(i32 %8)
  %10 = call i64 @REG_GET(%struct.platform_device* %7, i32 %9, i32 20, i32 20)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @DSI_VC_SHORT_PACKET_HEADER(i32 %14)
  %16 = call i32 @dsi_read_reg(%struct.platform_device* %13, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 0
  %19 = and i32 %18, 255
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  %29 = call i32 @DSSDBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28)
  br label %6

30:                                               ; preds = %6
  ret void
}

declare dso_local i64 @REG_GET(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @DSI_VC_SHORT_PACKET_HEADER(i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
