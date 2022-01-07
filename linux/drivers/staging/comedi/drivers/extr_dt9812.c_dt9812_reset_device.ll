; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.dt9812_private* }
%struct.dt9812_private = type { i64 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"unable to reset configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to read vendor id\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to read product id\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to read device id\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to read serial number\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"USB DT9812 (%4.4x.%4.4x.%4.4x) #0x%8.8x\0A\00", align 1
@DT9812_DEVID_DT9812_10 = common dso_local global i64 0, align 8
@DT9812_DEVID_DT9812_2PT5 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"Unsupported device!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @dt9812_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_reset_device(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.dt9812_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %14)
  store %struct.usb_device* %15, %struct.usb_device** %4, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.dt9812_private*, %struct.dt9812_private** %17, align 8
  store %struct.dt9812_private* %18, %struct.dt9812_private** %5, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = call i32 @dt9812_read_info(%struct.comedi_device* %19, i32 0, i32* %9, i32 4)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %1
  %24 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %25 = call i32 @usb_reset_configuration(%struct.usb_device* %24)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %36, %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = call i32 @dt9812_read_info(%struct.comedi_device* %30, i32 1, i32* %9, i32 4)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %39

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %26

39:                                               ; preds = %34, %26
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %2, align 4
  br label %134

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %51 = call i32 @dt9812_read_info(%struct.comedi_device* %50, i32 1, i32* %10, i32 4)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %2, align 4
  br label %134

60:                                               ; preds = %49
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @le16_to_cpu(i32 %61)
  store i8* %62, i8** %7, align 8
  %63 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %64 = call i32 @dt9812_read_info(%struct.comedi_device* %63, i32 3, i32* %10, i32 4)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %2, align 4
  br label %134

73:                                               ; preds = %60
  %74 = load i32, i32* %10, align 4
  %75 = call i8* @le16_to_cpu(i32 %74)
  store i8* %75, i8** %8, align 8
  %76 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %77 = call i32 @dt9812_read_info(%struct.comedi_device* %76, i32 5, i32* %10, i32 4)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %2, align 4
  br label %134

86:                                               ; preds = %73
  %87 = load i32, i32* %10, align 4
  %88 = call i8* @le16_to_cpu(i32 %87)
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.dt9812_private*, %struct.dt9812_private** %5, align 8
  %91 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %93 = call i32 @dt9812_read_info(%struct.comedi_device* %92, i32 7, i32* %11, i32 4)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %2, align 4
  br label %134

102:                                              ; preds = %86
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %106 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load %struct.dt9812_private*, %struct.dt9812_private** %5, align 8
  %111 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @dev_info(i32 %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %108, i8* %109, i64 %112, i32 %113)
  %115 = load %struct.dt9812_private*, %struct.dt9812_private** %5, align 8
  %116 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DT9812_DEVID_DT9812_10, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %102
  %121 = load %struct.dt9812_private*, %struct.dt9812_private** %5, align 8
  %122 = getelementptr inbounds %struct.dt9812_private, %struct.dt9812_private* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DT9812_DEVID_DT9812_2PT5, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %120, %102
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %126, %96, %80, %67, %54, %42
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @dt9812_read_info(%struct.comedi_device*, i32, i32*, i32) #1

declare dso_local i32 @usb_reset_configuration(%struct.usb_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
