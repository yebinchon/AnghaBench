; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sony-acx565akm.c_panel_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sony-acx565akm.c_panel_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MIPID_CMD_READ_DISP_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"LCD panel %senabled by bootloader (status 0x%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*)* @panel_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_enabled(%struct.panel_drv_data* %0) #0 {
  %2 = alloca %struct.panel_drv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %2, align 8
  %5 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %6 = load i32, i32* @MIPID_CMD_READ_DISP_STATUS, align 4
  %7 = call i32 @acx565akm_read(%struct.panel_drv_data* %5, i32 %6, i32* %3, i32 4)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @__be32_to_cpu(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 131072
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1024
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i1 [ false, %1 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %2, align 8
  %21 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @acx565akm_read(%struct.panel_drv_data*, i32, i32*, i32) #1

declare dso_local i32 @__be32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
