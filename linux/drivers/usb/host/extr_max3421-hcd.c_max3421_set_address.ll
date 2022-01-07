; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { i32 }
%struct.max3421_hcd = type { i32, %struct.usb_device* }

@MAX3421_REG_HRSL = common dso_local global i32 0, align 4
@MAX3421_HRSL_RCVTOGRD_BIT = common dso_local global i32 0, align 4
@MAX3421_HRSL_SNDTOGRD_BIT = common dso_local global i32 0, align 4
@MAX3421_HCTL_RCVTOG0_BIT = common dso_local global i64 0, align 8
@MAX3421_HCTL_SNDTOG0_BIT = common dso_local global i64 0, align 8
@MAX3421_REG_HCTL = common dso_local global i32 0, align 4
@MAX3421_REG_PERADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_device*, i32, i32)* @max3421_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3421_set_address(%struct.usb_hcd* %0, %struct.usb_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.max3421_hcd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.usb_device* %1, %struct.usb_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %18 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %17)
  store %struct.max3421_hcd* %18, %struct.max3421_hcd** %9, align 8
  %19 = load %struct.max3421_hcd*, %struct.max3421_hcd** %9, align 8
  %20 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %19, i32 0, i32 1
  %21 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  store %struct.usb_device* %21, %struct.usb_device** %14, align 8
  %22 = load %struct.max3421_hcd*, %struct.max3421_hcd** %9, align 8
  %23 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %27 = icmp eq %struct.usb_device* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %101

41:                                               ; preds = %37, %32
  %42 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %43 = icmp ne %struct.usb_device* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %49 = load i32, i32* @MAX3421_REG_HRSL, align 4
  %50 = call i32 @spi_rd8(%struct.usb_hcd* %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* @MAX3421_HRSL_RCVTOGRD_BIT, align 4
  %53 = ashr i32 %51, %52
  %54 = and i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @MAX3421_HRSL_SNDTOGRD_BIT, align 4
  %57 = ashr i32 %55, %56
  %58 = and i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @usb_settoggle(%struct.usb_device* %59, i32 %60, i32 0, i32 %61)
  %63 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @usb_settoggle(%struct.usb_device* %63, i32 %64, i32 1, i32 %65)
  br label %67

67:                                               ; preds = %47, %44, %41
  %68 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @usb_gettoggle(%struct.usb_device* %68, i32 %69, i32 0)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @usb_gettoggle(%struct.usb_device* %71, i32 %72, i32 1)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @MAX3421_HCTL_RCVTOG0_BIT, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @BIT(i64 %77)
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @MAX3421_HCTL_SNDTOG0_BIT, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @BIT(i64 %82)
  %84 = or i32 %78, %83
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.max3421_hcd*, %struct.max3421_hcd** %9, align 8
  %87 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %89 = load i32, i32* @MAX3421_REG_HCTL, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @spi_wr8(%struct.usb_hcd* %88, i32 %89, i32 %90)
  %92 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %93 = load %struct.max3421_hcd*, %struct.max3421_hcd** %9, align 8
  %94 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %93, i32 0, i32 1
  store %struct.usb_device* %92, %struct.usb_device** %94, align 8
  %95 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %96 = load i32, i32* @MAX3421_REG_PERADDR, align 4
  %97 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %98 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @spi_wr8(%struct.usb_hcd* %95, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %67, %40
  ret void
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @spi_rd8(%struct.usb_hcd*, i32) #1

declare dso_local i32 @usb_settoggle(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @usb_gettoggle(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @spi_wr8(%struct.usb_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
