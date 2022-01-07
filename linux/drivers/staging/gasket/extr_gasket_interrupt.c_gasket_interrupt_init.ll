; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { %struct.TYPE_2__, i32, i32, %struct.gasket_interrupt_data* }
%struct.TYPE_2__ = type { i32 }
%struct.gasket_interrupt_data = type { i32, %struct.gasket_interrupt_data*, i8*, i64, i32, i32, i32, i32, i32, i32 }
%struct.gasket_driver_desc = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Couldn't initialize interrupts: %d\0A\00", align 1
@interrupt_sysfs_attrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_interrupt_init(%struct.gasket_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gasket_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_interrupt_data*, align 8
  %6 = alloca %struct.gasket_driver_desc*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %3, align 8
  %7 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %8 = call %struct.gasket_driver_desc* @gasket_get_driver_desc(%struct.gasket_dev* %7)
  store %struct.gasket_driver_desc* %8, %struct.gasket_driver_desc** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gasket_interrupt_data* @kzalloc(i32 56, i32 %9)
  store %struct.gasket_interrupt_data* %10, %struct.gasket_interrupt_data** %5, align 8
  %11 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %12 = icmp ne %struct.gasket_interrupt_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %129

16:                                               ; preds = %1
  %17 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %18 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %18, i32 0, i32 3
  store %struct.gasket_interrupt_data* %17, %struct.gasket_interrupt_data** %19, align 8
  %20 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %21 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %24 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %26 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %29 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %31 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %34 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %36 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %39 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %41 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %44 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %46 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %49 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %51 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %54 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %56 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %58 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kcalloc(i32 %59, i32 56, i32 %60)
  %62 = bitcast i8* %61 to %struct.gasket_interrupt_data*
  %63 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %64 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %63, i32 0, i32 1
  store %struct.gasket_interrupt_data* %62, %struct.gasket_interrupt_data** %64, align 8
  %65 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %66 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %65, i32 0, i32 1
  %67 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %66, align 8
  %68 = icmp ne %struct.gasket_interrupt_data* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %16
  %70 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %71 = call i32 @kfree(%struct.gasket_interrupt_data* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %129

74:                                               ; preds = %16
  %75 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %76 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @kcalloc(i32 %77, i32 1, i32 %78)
  %80 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %81 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %83 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %74
  %87 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %88 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %87, i32 0, i32 1
  %89 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %88, align 8
  %90 = call i32 @kfree(%struct.gasket_interrupt_data* %89)
  %91 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %92 = call i32 @kfree(%struct.gasket_interrupt_data* %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %129

95:                                               ; preds = %74
  %96 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %97 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %108 [
    i32 128, label %99
  ]

99:                                               ; preds = %95
  %100 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %5, align 8
  %101 = call i32 @gasket_interrupt_msix_init(%struct.gasket_interrupt_data* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %111

105:                                              ; preds = %99
  %106 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %107 = call i32 @force_msix_interrupt_unmasking(%struct.gasket_dev* %106)
  br label %111

108:                                              ; preds = %95
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %105, %104
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %116 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @dev_warn(i32 %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %118)
  store i32 0, i32* %2, align 4
  br label %129

120:                                              ; preds = %111
  %121 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %122 = call i32 @gasket_interrupt_setup(%struct.gasket_dev* %121)
  %123 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %124 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @interrupt_sysfs_attrs, align 4
  %128 = call i32 @gasket_sysfs_create_entries(i32 %126, i32 %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %120, %114, %86, %69, %13
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.gasket_driver_desc* @gasket_get_driver_desc(%struct.gasket_dev*) #1

declare dso_local %struct.gasket_interrupt_data* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.gasket_interrupt_data*) #1

declare dso_local i32 @gasket_interrupt_msix_init(%struct.gasket_interrupt_data*) #1

declare dso_local i32 @force_msix_interrupt_unmasking(%struct.gasket_dev*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @gasket_interrupt_setup(%struct.gasket_dev*) #1

declare dso_local i32 @gasket_sysfs_create_entries(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
