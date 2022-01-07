; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_netx.c_netx_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_netx.c_netx_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.uio_info = type { i8*, i8*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"netx\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"netplc\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"netx_plx\00", align 1
@UIO_MEM_PHYS = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@netx_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"0.0.1\00", align 1
@DPM_HOST_INT_EN0 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Found %s card, registered UIO device.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @netx_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netx_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.uio_info*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.uio_info* @kzalloc(i32 40, i32 %8)
  store %struct.uio_info* %9, %struct.uio_info** %6, align 8
  %10 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %11 = icmp ne %struct.uio_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %148

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i64 @pci_enable_device(%struct.pci_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %143

20:                                               ; preds = %15
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i64 @pci_request_regions(%struct.pci_dev* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %140

25:                                               ; preds = %20
  %26 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %35 [
    i32 128, label %29
    i32 129, label %32
  ]

29:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  %30 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %31 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  br label %38

32:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  %33 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %34 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  br label %38

35:                                               ; preds = %25
  store i32 2, i32* %7, align 4
  %36 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %37 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %37, align 8
  br label %38

38:                                               ; preds = %35, %32, %29
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @pci_resource_start(%struct.pci_dev* %39, i32 %40)
  %42 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %43 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %41, i32* %46, align 8
  %47 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %48 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %38
  br label %137

55:                                               ; preds = %38
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @pci_resource_start(%struct.pci_dev* %56, i32 %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @pci_resource_len(%struct.pci_dev* %59, i32 %60)
  %62 = call i64 @ioremap(i32 %58, i32 %61)
  %63 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %64 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %62, i64* %67, align 8
  %68 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %69 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %55
  br label %137

76:                                               ; preds = %55
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @pci_resource_len(%struct.pci_dev* %77, i32 %78)
  %80 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %81 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* @UIO_MEM_PHYS, align 4
  %86 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %87 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %85, i32* %90, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %95 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @IRQF_SHARED, align 4
  %97 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %98 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @netx_handler, align 4
  %100 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %101 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %103 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %102, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %103, align 8
  %104 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %105 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DPM_HOST_INT_EN0, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @iowrite32(i32 0, i64 %111)
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %116 = call i64 @uio_register_device(i32* %114, %struct.uio_info* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %76
  br label %129

119:                                              ; preds = %76
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %122 = call i32 @pci_set_drvdata(%struct.pci_dev* %120, %struct.uio_info* %121)
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %126 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @dev_info(i32* %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  store i32 0, i32* %3, align 4
  br label %148

129:                                              ; preds = %118
  %130 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %131 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @iounmap(i64 %135)
  br label %137

137:                                              ; preds = %129, %75, %54
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = call i32 @pci_release_regions(%struct.pci_dev* %138)
  br label %140

140:                                              ; preds = %137, %24
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = call i32 @pci_disable_device(%struct.pci_dev* %141)
  br label %143

143:                                              ; preds = %140, %19
  %144 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %145 = call i32 @kfree(%struct.uio_info* %144)
  %146 = load i32, i32* @ENODEV, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %143, %119, %12
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.uio_info* @kzalloc(i32, i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @uio_register_device(i32*, %struct.uio_info*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.uio_info*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.uio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
