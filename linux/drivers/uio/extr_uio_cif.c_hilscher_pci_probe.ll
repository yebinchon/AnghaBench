; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_cif.c_hilscher_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_cif.c_hilscher_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.uio_info = type { i8*, i8*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hilscher\00", align 1
@UIO_MEM_PHYS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"CIF_Profibus\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"CIF_Devicenet\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CIF_???\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"0.0.1\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@hilscher_handler = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @hilscher_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hilscher_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.uio_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uio_info* @kzalloc(i32 40, i32 %7)
  store %struct.uio_info* %8, %struct.uio_info** %6, align 8
  %9 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %10 = icmp ne %struct.uio_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %145

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i64 @pci_enable_device(%struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %140

19:                                               ; preds = %14
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i64 @pci_request_regions(%struct.pci_dev* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %137

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i8* @pci_resource_start(%struct.pci_dev* %25, i32 0)
  %27 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %28 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i8* %26, i8** %31, align 8
  %32 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %33 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  br label %134

40:                                               ; preds = %24
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i32 @pci_ioremap_bar(%struct.pci_dev* %41, i32 0)
  %43 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %44 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 8
  %48 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %49 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %40
  br label %134

56:                                               ; preds = %40
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i8* @pci_resource_len(%struct.pci_dev* %57, i32 0)
  %59 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %60 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i8* %58, i8** %63, align 8
  %64 = load i8*, i8** @UIO_MEM_PHYS, align 8
  %65 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %66 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i8* %64, i8** %69, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i8* @pci_resource_start(%struct.pci_dev* %70, i32 2)
  %72 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %73 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  store i8* %71, i8** %76, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i8* @pci_resource_len(%struct.pci_dev* %77, i32 2)
  %79 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %80 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i8* %78, i8** %83, align 8
  %84 = load i8*, i8** @UIO_MEM_PHYS, align 8
  %85 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %86 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i8* %84, i8** %89, align 8
  %90 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %91 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %99 [
    i32 128, label %93
    i32 129, label %96
  ]

93:                                               ; preds = %56
  %94 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %95 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %95, align 8
  br label %102

96:                                               ; preds = %56
  %97 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %98 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %97, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %98, align 8
  br label %102

99:                                               ; preds = %56
  %100 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %101 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %100, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %101, align 8
  br label %102

102:                                              ; preds = %99, %96, %93
  %103 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %104 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %103, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %104, align 8
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %109 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @IRQF_SHARED, align 4
  %111 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %112 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @hilscher_handler, align 4
  %114 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %115 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %119 = call i64 @uio_register_device(i32* %117, %struct.uio_info* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %102
  br label %126

122:                                              ; preds = %102
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %125 = call i32 @pci_set_drvdata(%struct.pci_dev* %123, %struct.uio_info* %124)
  store i32 0, i32* %3, align 4
  br label %145

126:                                              ; preds = %121
  %127 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %128 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @iounmap(i32 %132)
  br label %134

134:                                              ; preds = %126, %55, %39
  %135 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %136 = call i32 @pci_release_regions(%struct.pci_dev* %135)
  br label %137

137:                                              ; preds = %134, %23
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = call i32 @pci_disable_device(%struct.pci_dev* %138)
  br label %140

140:                                              ; preds = %137, %18
  %141 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %142 = call i32 @kfree(%struct.uio_info* %141)
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %140, %122, %11
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.uio_info* @kzalloc(i32, i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @uio_register_device(i32*, %struct.uio_info*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.uio_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.uio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
