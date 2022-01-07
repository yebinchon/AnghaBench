; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_receive_n_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_receive_n_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i32, i32*, %struct.cros_ec_spi* }
%struct.cros_ec_spi = type { i32 }
%struct.spi_transfer = type { i32, i32, i32* }
%struct.spi_message = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"spi transfer failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, i32*, i32)* @receive_n_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_n_bytes(%struct.cros_ec_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cros_ec_spi*, align 8
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca %struct.spi_message, align 4
  %10 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %12 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %11, i32 0, i32 3
  %13 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %12, align 8
  store %struct.cros_ec_spi* %13, %struct.cros_ec_spi** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %16 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = ptrtoint i32* %14 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %26 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp sgt i64 %24, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = call i32 @memset(%struct.spi_transfer* %8, i32 0, i32 16)
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i32* %34, i32** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = call i32 @spi_message_init(%struct.spi_message* %9)
  %39 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %9)
  %40 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %7, align 8
  %41 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @spi_sync_locked(i32 %42, %struct.spi_message* %9)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %3
  %47 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %48 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %3
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync_locked(i32, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
