; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DC_SCRATCH = common dso_local global i32 0, align 4
@DC_CHIPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"udc: scratch test failed (0x%04x/0x%08x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"udc: invalid chip ID 0x%08x\0A\00", align 1
@DC_MODE = common dso_local global i32 0, align 4
@DC_SFRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp1760_udc*)* @isp1760_udc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1760_udc_init(%struct.isp1760_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp1760_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isp1760_udc* %0, %struct.isp1760_udc** %3, align 8
  %6 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %7 = load i32, i32* @DC_SCRATCH, align 4
  %8 = call i32 @isp1760_udc_write(%struct.isp1760_udc* %6, i32 %7, i32 47806)
  %9 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %10 = load i32, i32* @DC_CHIPID, align 4
  %11 = call i32 @isp1760_udc_read(%struct.isp1760_udc* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %13 = load i32, i32* @DC_SCRATCH, align 4
  %14 = call i32 @isp1760_udc_read(%struct.isp1760_udc* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 47806
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %19 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 71042
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 1409552
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %36 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %54

44:                                               ; preds = %31, %28
  %45 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %46 = load i32, i32* @DC_MODE, align 4
  %47 = load i32, i32* @DC_SFRESET, align 4
  %48 = call i32 @isp1760_udc_write(%struct.isp1760_udc* %45, i32 %46, i32 %47)
  %49 = call i32 @usleep_range(i32 10000, i32 11000)
  %50 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %51 = load i32, i32* @DC_MODE, align 4
  %52 = call i32 @isp1760_udc_write(%struct.isp1760_udc* %50, i32 %51, i32 0)
  %53 = call i32 @usleep_range(i32 10000, i32 11000)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %44, %34, %17
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @isp1760_udc_write(%struct.isp1760_udc*, i32, i32) #1

declare dso_local i32 @isp1760_udc_read(%struct.isp1760_udc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
