; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sony-acx565akm.c_acx565akm_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sony-acx565akm.c_acx565akm_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"spi_sync %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panel_drv_data*, i32, i32*, i32, i32*, i32)* @acx565akm_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acx565akm_transfer(%struct.panel_drv_data* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.panel_drv_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.spi_message, align 4
  %14 = alloca %struct.spi_transfer*, align 8
  %15 = alloca [5 x %struct.spi_transfer], align 16
  %16 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %18 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp eq %struct.TYPE_2__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = call i32 @spi_message_init(%struct.spi_message* %13)
  %24 = getelementptr inbounds [5 x %struct.spi_transfer], [5 x %struct.spi_transfer]* %15, i64 0, i64 0
  %25 = call i32 @memset(%struct.spi_transfer* %24, i32 0, i32 120)
  %26 = getelementptr inbounds [5 x %struct.spi_transfer], [5 x %struct.spi_transfer]* %15, i64 0, i64 0
  store %struct.spi_transfer* %26, %struct.spi_transfer** %14, align 8
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 255
  store i32 %28, i32* %8, align 4
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 0
  store i32* %8, i32** %30, align 8
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 1
  store i32 9, i32* %32, align 8
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 2
  store i32 2, i32* %34, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %45

37:                                               ; preds = %6
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 1
  store i32 10, i32* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %37, %6
  %46 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %47 = call i32 @spi_message_add_tail(%struct.spi_transfer* %46, %struct.spi_message* %13)
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %51, i32 1
  store %struct.spi_transfer* %52, %struct.spi_transfer** %14, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 1
  store i32 9, i32* %60, align 8
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %62 = call i32 @spi_message_add_tail(%struct.spi_transfer* %61, %struct.spi_message* %13)
  br label %63

63:                                               ; preds = %50, %45
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 1
  store %struct.spi_transfer* %68, %struct.spi_transfer** %14, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %70, i32 0, i32 3
  store i32* %69, i32** %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %74 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %76 = call i32 @spi_message_add_tail(%struct.spi_transfer* %75, %struct.spi_message* %13)
  br label %77

77:                                               ; preds = %66, %63
  %78 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %79 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = call i32 @spi_sync(%struct.TYPE_2__* %80, %struct.spi_message* %13)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %86 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @dev_dbg(i32* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %84, %77
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
