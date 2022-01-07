; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_read_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_read_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcove_typec = type { i32 }

@USBC_RXINFO = common dso_local global i32 0, align 4
@USBC_RX_DATA = common dso_local global i64 0, align 8
@USBC_RXSTATUS = common dso_local global i32 0, align 4
@USBC_RXSTATUS_RXCLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcove_typec*, i8*)* @wcove_read_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_read_rx_buffer(%struct.wcove_typec* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wcove_typec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wcove_typec* %0, %struct.wcove_typec** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.wcove_typec*, %struct.wcove_typec** %4, align 8
  %10 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @USBC_RXINFO, align 4
  %13 = sext i32 %12 to i64
  %14 = bitcast i32* %6 to i8*
  %15 = call i32 @regmap_read(i32 %11, i64 %13, i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %44, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @USBC_RXINFO_RXBYTES(i32 %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.wcove_typec*, %struct.wcove_typec** %4, align 8
  %28 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @USBC_RX_DATA, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  %38 = call i32 @regmap_read(i32 %29, i64 %33, i8* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %54

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.wcove_typec*, %struct.wcove_typec** %4, align 8
  %49 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @USBC_RXSTATUS, align 4
  %52 = load i32, i32* @USBC_RXSTATUS_RXCLEAR, align 4
  %53 = call i32 @regmap_write(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %41, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @regmap_read(i32, i64, i8*) #1

declare dso_local i32 @USBC_RXINFO_RXBYTES(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
