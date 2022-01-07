; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/extr_dev_core.c___fieldbus_dev_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/extr_dev_core.c___fieldbus_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fieldbus_dev = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@fieldbus_ida = common dso_local global i32 0, align 4
@MAX_FIELDBUSES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@fieldbus_devt = common dso_local global i32 0, align 4
@fieldbus_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"fieldbus_dev%d unable to add device %d:%d\0A\00", align 1
@fieldbus_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"fieldbus_dev%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fieldbus_dev*)* @__fieldbus_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fieldbus_dev_register(%struct.fieldbus_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fieldbus_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fieldbus_dev* %0, %struct.fieldbus_dev** %3, align 8
  %6 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %7 = icmp ne %struct.fieldbus_dev* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %105

11:                                               ; preds = %1
  %12 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %13 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %18 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %23 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %16, %11
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %105

29:                                               ; preds = %21
  %30 = load i32, i32* @MAX_FIELDBUSES, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @ida_simple_get(i32* @fieldbus_ida, i32 0, i32 %30, i32 %31)
  %33 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %34 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %36 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %41 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %2, align 4
  br label %105

43:                                               ; preds = %29
  %44 = load i32, i32* @fieldbus_devt, align 4
  %45 = call i32 @MAJOR(i32 %44)
  %46 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %47 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @MKDEV(i32 %45, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %51 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %50, i32 0, i32 4
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %54 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %53, i32 0, i32 1
  %55 = call i32 @cdev_init(i32* %54, i32* @fieldbus_fops)
  %56 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %57 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @cdev_add(i32* %57, i32 %58, i32 1)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %43
  %63 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %64 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @fieldbus_devt, align 4
  %67 = call i32 @MAJOR(i32 %66)
  %68 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %69 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %67, i32 %70)
  br label %99

72:                                               ; preds = %43
  %73 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %74 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %78 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %79 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @device_create(i32* @fieldbus_class, i32 %75, i32 %76, %struct.fieldbus_dev* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %83 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %85 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %72
  %90 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %91 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %5, align 4
  br label %95

94:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %105

95:                                               ; preds = %89
  %96 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %97 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %96, i32 0, i32 1
  %98 = call i32 @cdev_del(i32* %97)
  br label %99

99:                                               ; preds = %95, %62
  %100 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %3, align 8
  %101 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ida_simple_remove(i32* @fieldbus_ida, i32 %102)
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %94, %39, %26, %8
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_add(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @device_create(i32*, i32, i32, %struct.fieldbus_dev*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
