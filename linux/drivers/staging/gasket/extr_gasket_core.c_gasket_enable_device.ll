; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_enable_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32, i64, i32, i32, i32*, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { i32, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [45 x i8] c"Critical failure to allocate interrupts: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Initializing page table %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Couldn't init page table %d: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Error getting hardware revision: %d\0A\00", align 1
@GASKET_STATUS_DEAD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Device reported as unhealthy.\0A\00", align 1
@gasket_file_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_enable_device(%struct.gasket_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gasket_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gasket_driver_desc*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %3, align 8
  %7 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %8 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %7, i32 0, i32 7
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %10, align 8
  store %struct.gasket_driver_desc* %11, %struct.gasket_driver_desc** %6, align 8
  %12 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %13 = call i32 @gasket_interrupt_init(%struct.gasket_dev* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %18 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %23 = call i32 @gasket_interrupt_cleanup(%struct.gasket_dev* %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %131

25:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %83, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %29 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %26
  %33 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %34 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %39 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %45 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %48 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %52 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %58 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %61 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @gasket_page_table_init(i32* %43, i32* %50, i32* %56, i32 %59, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %32
  %67 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %68 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %131

74:                                               ; preds = %32
  %75 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %76 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @gasket_page_table_reset(i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %26

86:                                               ; preds = %26
  %87 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %88 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %89 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @check_and_invoke_callback(%struct.gasket_dev* %87, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %96 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i32, i8*, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %131

101:                                              ; preds = %86
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %104 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %106 = call i64 @gasket_get_hw_status(%struct.gasket_dev* %105)
  %107 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %108 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %110 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @GASKET_STATUS_DEAD, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %101
  %115 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %116 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114, %101
  %120 = load %struct.gasket_dev*, %struct.gasket_dev** %3, align 8
  %121 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %120, i32 0, i32 2
  %122 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %123 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @gasket_add_cdev(i32* %121, i32* @gasket_file_ops, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %131

130:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %128, %94, %66, %16
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @gasket_interrupt_init(%struct.gasket_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @gasket_interrupt_cleanup(%struct.gasket_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @gasket_page_table_init(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @gasket_page_table_reset(i32) #1

declare dso_local i32 @check_and_invoke_callback(%struct.gasket_dev*, i32) #1

declare dso_local i64 @gasket_get_hw_status(%struct.gasket_dev*) #1

declare dso_local i32 @gasket_add_cdev(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
