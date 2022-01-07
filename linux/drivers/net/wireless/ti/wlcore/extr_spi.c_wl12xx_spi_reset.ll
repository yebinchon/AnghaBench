; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_spi.c_wl12xx_spi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_spi.c_wl12xx_spi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wl12xx_spi_glue = type { i32 }
%struct.spi_transfer = type { i32, %struct.spi_transfer* }
%struct.spi_message = type { i32 }

@WSPI_INIT_CMD_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not allocate cmd for spi reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @wl12xx_spi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl12xx_spi_reset(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.wl12xx_spi_glue*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.spi_transfer, align 8
  %6 = alloca %struct.spi_message, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.wl12xx_spi_glue* @dev_get_drvdata(i32 %9)
  store %struct.wl12xx_spi_glue* %10, %struct.wl12xx_spi_glue** %3, align 8
  %11 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.spi_transfer* @kzalloc(i32 %11, i32 %12)
  store %struct.spi_transfer* %13, %struct.spi_transfer** %4, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %15 = icmp ne %struct.spi_transfer* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %39

21:                                               ; preds = %1
  %22 = call i32 @memset(%struct.spi_transfer* %5, i32 0, i32 16)
  %23 = call i32 @spi_message_init(%struct.spi_message* %6)
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %25 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %26 = call i32 @memset(%struct.spi_transfer* %24, i32 255, i32 %25)
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %5, i32 0, i32 1
  store %struct.spi_transfer* %27, %struct.spi_transfer** %28, align 8
  %29 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = call i32 @spi_message_add_tail(%struct.spi_transfer* %5, %struct.spi_message* %6)
  %32 = load %struct.wl12xx_spi_glue*, %struct.wl12xx_spi_glue** %3, align 8
  %33 = getelementptr inbounds %struct.wl12xx_spi_glue, %struct.wl12xx_spi_glue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @to_spi_device(i32 %34)
  %36 = call i32 @spi_sync(i32 %35, %struct.spi_message* %6)
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %38 = call i32 @kfree(%struct.spi_transfer* %37)
  br label %39

39:                                               ; preds = %21, %16
  ret void
}

declare dso_local %struct.wl12xx_spi_glue* @dev_get_drvdata(i32) #1

declare dso_local %struct.spi_transfer* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @to_spi_device(i32) #1

declare dso_local i32 @kfree(%struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
