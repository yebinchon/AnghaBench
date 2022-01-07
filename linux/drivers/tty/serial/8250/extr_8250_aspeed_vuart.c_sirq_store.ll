; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_sirq_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_sirq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.aspeed_vuart = type { i64 }

@ASPEED_VUART_GCRB_HOST_SIRQ_SHIFT = common dso_local global i64 0, align 8
@ASPEED_VUART_GCRB_HOST_SIRQ_MASK = common dso_local global i64 0, align 8
@ASPEED_VUART_GCRB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sirq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirq_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.aspeed_vuart*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.aspeed_vuart* @dev_get_drvdata(%struct.device* %14)
  store %struct.aspeed_vuart* %15, %struct.aspeed_vuart** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 0, i64* %11)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %51

22:                                               ; preds = %4
  %23 = load i64, i64* @ASPEED_VUART_GCRB_HOST_SIRQ_SHIFT, align 8
  %24 = load i64, i64* %11, align 8
  %25 = shl i64 %24, %23
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* @ASPEED_VUART_GCRB_HOST_SIRQ_MASK, align 8
  %27 = load i64, i64* %11, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %11, align 8
  %29 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %10, align 8
  %30 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ASPEED_VUART_GCRB, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @readb(i64 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* @ASPEED_VUART_GCRB_HOST_SIRQ_MASK, align 8
  %36 = xor i64 %35, -1
  %37 = load i64, i64* %13, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %10, align 8
  %44 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ASPEED_VUART_GCRB, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writeb(i64 %42, i64 %47)
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %22, %20
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.aspeed_vuart* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @readb(i64) #1

declare dso_local i32 @writeb(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
