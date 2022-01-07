; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-sas.c_twl_initialize_device_extension.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-sas.c_twl_initialize_device_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, i8*, i8*, i32*, i32**, i32 }

@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Command packet memory allocation failed\00", align 1
@TW_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Generic memory allocation failed\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Sense buffer allocation failed\00", align 1
@TW_Q_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Event info memory allocation failed\00", align 1
@TW_S_INITIAL = common dso_local global i32 0, align 4
@TW_Q_START = common dso_local global i8* null, align 8
@TW_IOCTL_CHRDEV_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @twl_initialize_device_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_initialize_device_extension(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = call i64 @twl_allocate_memory(%struct.TYPE_4__* %5, i32 4, i32 0)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TW_DRIVER, align 4
  %13 = call i32 @TW_PRINTK(i32 %11, i32 %12, i32 9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %113

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = load i32, i32* @TW_SECTOR_SIZE, align 4
  %17 = call i64 @twl_allocate_memory(%struct.TYPE_4__* %15, i32 %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TW_DRIVER, align 4
  %24 = call i32 @TW_PRINTK(i32 %22, i32 %23, i32 10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %113

25:                                               ; preds = %14
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = call i64 @twl_allocate_memory(%struct.TYPE_4__* %26, i32 4, i32 2)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TW_DRIVER, align 4
  %34 = call i32 @TW_PRINTK(i32 %32, i32 %33, i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %113

35:                                               ; preds = %25
  %36 = load i32, i32* @TW_Q_LENGTH, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @kcalloc(i32 %36, i32 4, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 8
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  store i32* %38, i32** %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 8
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %35
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TW_DRIVER, align 4
  %54 = call i32 @TW_PRINTK(i32 %52, i32 %53, i32 12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %113

55:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %92, %55
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @TW_Q_LENGTH, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 8
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 8
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  store i32* %71, i32** %77, align 8
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load i32, i32* @TW_S_INITIAL, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 7
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %60
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %56

95:                                               ; preds = %56
  %96 = load i8*, i8** @TW_Q_START, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @TW_Q_START, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 1, i32* %103, align 8
  %104 = load i32, i32* @TW_IOCTL_CHRDEV_FREE, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = call i32 @mutex_init(i32* %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = call i32 @init_waitqueue_head(i32* %111)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %95, %49, %29, %19, %8
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @twl_allocate_memory(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @TW_PRINTK(i32, i32, i32, i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
