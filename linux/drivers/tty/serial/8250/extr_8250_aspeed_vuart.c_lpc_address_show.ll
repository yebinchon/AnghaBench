; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_lpc_address_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_lpc_address_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.aspeed_vuart = type { i64 }

@ASPEED_VUART_ADDRH = common dso_local global i64 0, align 8
@ASPEED_VUART_ADDRL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lpc_address_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_address_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.aspeed_vuart*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.aspeed_vuart* @dev_get_drvdata(%struct.device* %9)
  store %struct.aspeed_vuart* %10, %struct.aspeed_vuart** %7, align 8
  %11 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %7, align 8
  %12 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ASPEED_VUART_ADDRH, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readb(i64 %15)
  %17 = shl i32 %16, 8
  %18 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %7, align 8
  %19 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ASPEED_VUART_ADDRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readb(i64 %22)
  %24 = or i32 %17, %23
  store i32 %24, i32* %8, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = sub nsw i64 %26, 1
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @snprintf(i8* %25, i64 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28)
  ret i32 %29
}

declare dso_local %struct.aspeed_vuart* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
