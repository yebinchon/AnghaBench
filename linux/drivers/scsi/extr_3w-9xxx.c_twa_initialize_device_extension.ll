; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_initialize_device_extension.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_initialize_device_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32*, i32**, i32 }

@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Command packet memory allocation failed\00", align 1
@TW_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Generic memory allocation failed\00", align 1
@TW_Q_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Event info memory allocation failed\00", align 1
@TW_S_INITIAL = common dso_local global i32 0, align 4
@TW_Q_START = common dso_local global i8* null, align 8
@TW_IOCTL_CHRDEV_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @twa_initialize_device_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_initialize_device_extension(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = call i64 @twa_allocate_memory(%struct.TYPE_4__* %5, i32 4, i32 0)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TW_DRIVER, align 4
  %13 = call i32 @TW_PRINTK(i32 %11, i32 %12, i32 22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %109

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = load i32, i32* @TW_SECTOR_SIZE, align 4
  %17 = call i64 @twa_allocate_memory(%struct.TYPE_4__* %15, i32 %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TW_DRIVER, align 4
  %24 = call i32 @TW_PRINTK(i32 %22, i32 %23, i32 23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %109

25:                                               ; preds = %14
  %26 = load i32, i32* @TW_Q_LENGTH, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kcalloc(i32 %26, i32 4, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 10
  %31 = load i32**, i32*** %30, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  store i32* %28, i32** %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 10
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %25
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TW_DRIVER, align 4
  %44 = call i32 @TW_PRINTK(i32 %42, i32 %43, i32 24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %109

45:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %82, %45
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @TW_Q_LENGTH, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 10
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 10
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* %61, i32** %67, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load i32, i32* @TW_S_INITIAL, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 9
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %50
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %46

85:                                               ; preds = %46
  %86 = load i8*, i8** @TW_Q_START, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 8
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** @TW_Q_START, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 7
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @TW_Q_START, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 6
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** @TW_Q_START, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* @TW_IOCTL_CHRDEV_FREE, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = call i32 @mutex_init(i32* %104)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = call i32 @init_waitqueue_head(i32* %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %85, %39, %19, %8
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @twa_allocate_memory(%struct.TYPE_4__*, i32, i32) #1

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
