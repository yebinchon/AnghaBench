; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_recv_data_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_recv_data_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.max3421_hcd = type { i64, %struct.urb* }
%struct.urb = type { i64, i64, i8* }

@MAX3421_REG_RCVBC = common dso_local global i32 0, align 4
@MAX3421_FIFO_SIZE = common dso_local global i64 0, align 8
@MAX3421_REG_RCVFIFO = common dso_local global i32 0, align 4
@MAX3421_REG_HIRQ = common dso_local global i32 0, align 4
@MAX3421_HI_RCVDAV_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @max3421_recv_data_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3421_recv_data_available(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.max3421_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %10 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %9)
  store %struct.max3421_hcd* %10, %struct.max3421_hcd** %3, align 8
  %11 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %11, i32 0, i32 1
  %13 = load %struct.urb*, %struct.urb** %12, align 8
  store %struct.urb* %13, %struct.urb** %4, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %15 = load i32, i32* @MAX3421_REG_RCVBC, align 4
  %16 = call i64 @spi_rd8(%struct.usb_hcd* %14, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @MAX3421_FIFO_SIZE, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @MAX3421_FIFO_SIZE, align 8
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.urb*, %struct.urb** %4, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.urb*, %struct.urb** %4, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i64 0, i64* %5, align 8
  br label %39

31:                                               ; preds = %22
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.urb*, %struct.urb** %4, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %31, %30
  %40 = load i64, i64* %7, align 8
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i64, i64* %6, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load %struct.urb*, %struct.urb** %4, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.urb*, %struct.urb** %4, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr i8, i8* %52, i64 %55
  store i8* %56, i8** %8, align 8
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %58 = load i32, i32* @MAX3421_REG_RCVFIFO, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spi_rd_buf(%struct.usb_hcd* %57, i32 %58, i8* %59, i64 %60)
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.urb*, %struct.urb** %4, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %69 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %49, %46
  %71 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %72 = load i32, i32* @MAX3421_REG_HIRQ, align 4
  %73 = load i32, i32* @MAX3421_HI_RCVDAV_BIT, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = call i32 @spi_wr8(%struct.usb_hcd* %71, i32 %72, i32 %74)
  ret void
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i64 @spi_rd8(%struct.usb_hcd*, i32) #1

declare dso_local i32 @spi_rd_buf(%struct.usb_hcd*, i32, i8*, i64) #1

declare dso_local i32 @spi_wr8(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
