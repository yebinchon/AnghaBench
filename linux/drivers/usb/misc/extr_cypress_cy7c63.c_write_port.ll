; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_cypress_cy7c63.c_write_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_cypress_cy7c63.c_write_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.cypress = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"WRITE_PORT%d called\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CYPRESS_WRITE_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Result of vendor_command: %d\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64, i32, i32)* @write_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_port(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.usb_interface*, align 8
  %16 = alloca %struct.cypress*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.usb_interface* @to_usb_interface(%struct.device* %17)
  store %struct.usb_interface* %18, %struct.usb_interface** %15, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  %20 = call %struct.cypress* @usb_get_intfdata(%struct.usb_interface* %19)
  store %struct.cypress* %20, %struct.cypress** %16, align 8
  %21 = load %struct.cypress*, %struct.cypress** %16, align 8
  %22 = getelementptr inbounds %struct.cypress, %struct.cypress* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %14, align 4
  br label %55

33:                                               ; preds = %6
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 255
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %14, align 4
  br label %55

42:                                               ; preds = %36
  %43 = load %struct.cypress*, %struct.cypress** %16, align 8
  %44 = load i32, i32* @CYPRESS_WRITE_PORT, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = trunc i32 %46 to i8
  %48 = call i32 @vendor_command(%struct.cypress* %43, i32 %44, i32 %45, i8 zeroext %47)
  store i32 %48, i32* %14, align 4
  %49 = load %struct.cypress*, %struct.cypress** %16, align 8
  %50 = getelementptr inbounds %struct.cypress, %struct.cypress* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %42, %39, %30
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  br label %63

61:                                               ; preds = %55
  %62 = load i64, i64* %10, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i64 [ %60, %58 ], [ %62, %61 ]
  %65 = trunc i64 %64 to i32
  ret i32 %65
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.cypress* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @vendor_command(%struct.cypress*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
