; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_spi.c_wl1251_spi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.spi_transfer = type { i32, %struct.spi_transfer* }
%struct.spi_message = type { i32 }

@WSPI_INIT_CMD_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not allocate cmd for spi reset\00", align 1
@DEBUG_SPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"spi reset -> \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*)* @wl1251_spi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_spi_reset(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.spi_transfer*, align 8
  %4 = alloca %struct.spi_transfer, align 8
  %5 = alloca %struct.spi_message, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %6 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.spi_transfer* @kzalloc(i32 %6, i32 %7)
  store %struct.spi_transfer* %8, %struct.spi_transfer** %3, align 8
  %9 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %10 = icmp ne %struct.spi_transfer* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @wl1251_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %33

13:                                               ; preds = %1
  %14 = call i32 @memset(%struct.spi_transfer* %4, i32 0, i32 16)
  %15 = call i32 @spi_message_init(%struct.spi_message* %5)
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %17 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %18 = call i32 @memset(%struct.spi_transfer* %16, i32 255, i32 %17)
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 1
  store %struct.spi_transfer* %19, %struct.spi_transfer** %20, align 8
  %21 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %4, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = call i32 @spi_message_add_tail(%struct.spi_transfer* %4, %struct.spi_message* %5)
  %24 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %25 = call i32 @wl_to_spi(%struct.wl1251* %24)
  %26 = call i32 @spi_sync(i32 %25, %struct.spi_message* %5)
  %27 = load i32, i32* @DEBUG_SPI, align 4
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %29 = load i32, i32* @WSPI_INIT_CMD_LEN, align 4
  %30 = call i32 @wl1251_dump(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.spi_transfer* %28, i32 %29)
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %32 = call i32 @kfree(%struct.spi_transfer* %31)
  br label %33

33:                                               ; preds = %13, %11
  ret void
}

declare dso_local %struct.spi_transfer* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @wl_to_spi(%struct.wl1251*) #1

declare dso_local i32 @wl1251_dump(i32, i8*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @kfree(%struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
