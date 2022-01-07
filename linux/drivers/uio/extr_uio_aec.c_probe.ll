; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_aec.c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_aec.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.uio_info = type { i8*, i8*, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"aectc\00", align 1
@UIO_PORT_GPIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"0.0.1\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@aectc_irq = common dso_local global i32 0, align 4
@INT_ENABLE = common dso_local global i32 0, align 4
@INT_ENABLE_ADDR = common dso_local global i64 0, align 8
@INT_MASK_ALL = common dso_local global i32 0, align 4
@INT_MASK_ADDR = common dso_local global i64 0, align 8
@INTA_DRVR_ADDR = common dso_local global i64 0, align 8
@INTA_ENABLED_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"aectc: interrupts not enabled\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.uio_info*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.uio_info* @kzalloc(i32 48, i32 %8)
  store %struct.uio_info* %9, %struct.uio_info** %6, align 8
  %10 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %11 = icmp ne %struct.uio_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %139

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i64 @pci_enable_device(%struct.pci_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %134

20:                                               ; preds = %15
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i64 @pci_request_regions(%struct.pci_dev* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %131

25:                                               ; preds = %20
  %26 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %27 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_resource_start(%struct.pci_dev* %28, i32 0)
  %30 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %31 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %30, i32 0, i32 6
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %29, i32* %34, align 4
  %35 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %36 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %35, i32 0, i32 6
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %25
  br label %128

43:                                               ; preds = %25
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i64 @pci_iomap(%struct.pci_dev* %44, i32 0, i32 0)
  %46 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %47 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %49 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %128

53:                                               ; preds = %43
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call i32 @pci_resource_len(%struct.pci_dev* %54, i32 0)
  %56 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %57 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %56, i32 0, i32 6
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* @UIO_PORT_GPIO, align 4
  %62 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %63 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %62, i32 0, i32 6
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 4
  %67 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %68 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %67, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %68, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %73 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @IRQF_SHARED, align 4
  %75 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %76 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @aectc_irq, align 4
  %78 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %79 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %82 = call i32 @print_board_data(%struct.pci_dev* %80, %struct.uio_info* %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %86 = call i32 @uio_register_device(i32* %84, %struct.uio_info* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %53
  br label %122

90:                                               ; preds = %53
  %91 = load i32, i32* @INT_ENABLE, align 4
  %92 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %93 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @INT_ENABLE_ADDR, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @iowrite32(i32 %91, i64 %96)
  %98 = load i32, i32* @INT_MASK_ALL, align 4
  %99 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %100 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @INT_MASK_ADDR, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @iowrite8(i32 %98, i64 %103)
  %105 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %106 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @INTA_DRVR_ADDR, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @ioread8(i64 %109)
  %111 = load i32, i32* @INTA_ENABLED_FLAG, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %90
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 0
  %117 = call i32 @dev_err(i32* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %90
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %121 = call i32 @pci_set_drvdata(%struct.pci_dev* %119, %struct.uio_info* %120)
  store i32 0, i32* %3, align 4
  br label %139

122:                                              ; preds = %89
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %125 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @pci_iounmap(%struct.pci_dev* %123, i64 %126)
  br label %128

128:                                              ; preds = %122, %52, %42
  %129 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %130 = call i32 @pci_release_regions(%struct.pci_dev* %129)
  br label %131

131:                                              ; preds = %128, %24
  %132 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %133 = call i32 @pci_disable_device(%struct.pci_dev* %132)
  br label %134

134:                                              ; preds = %131, %19
  %135 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %136 = call i32 @kfree(%struct.uio_info* %135)
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %134, %118, %12
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.uio_info* @kzalloc(i32, i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @print_board_data(%struct.pci_dev*, %struct.uio_info*) #1

declare dso_local i32 @uio_register_device(i32*, %struct.uio_info*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.uio_info*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.uio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
