; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_internal_desc = type { %struct.gasket_driver_desc*, i32, i32, i32 }
%struct.gasket_driver_desc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Loading %s driver version %s\0A\00", align 1
@g_mutex = common dso_local global i32 0, align 4
@GASKET_FRAMEWORK_DESC_MAX = common dso_local global i32 0, align 4
@g_descs = common dso_local global %struct.gasket_internal_desc* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"%s driver already loaded/registered\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"too many drivers loaded, max %d\0A\00", align 1
@GASKET_DEV_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Cannot register %s class [ret=%ld]\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"cannot register %s char driver [ret=%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_register_device(%struct.gasket_driver_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gasket_driver_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gasket_internal_desc*, align 8
  store %struct.gasket_driver_desc* %0, %struct.gasket_driver_desc** %3, align 8
  store i32 -1, i32* %6, align 4
  %8 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %9 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %12 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = call i32 @mutex_lock(i32* @g_mutex)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %38, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GASKET_FRAMEWORK_DESC_MAX, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %21, i64 %23
  %25 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %24, i32 0, i32 0
  %26 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %25, align 8
  %27 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %28 = icmp eq %struct.gasket_driver_desc* %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %31 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = call i32 @mutex_unlock(i32* @g_mutex)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %154

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %16

41:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @GASKET_FRAMEWORK_DESC_MAX, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %47, i64 %49
  %51 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %50, i32 0, i32 0
  %52 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %51, align 8
  %53 = icmp ne %struct.gasket_driver_desc* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %46
  %55 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %56 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %56, i64 %58
  %60 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %59, i32 0, i32 0
  store %struct.gasket_driver_desc* %55, %struct.gasket_driver_desc** %60, align 8
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %42

66:                                               ; preds = %54, %42
  %67 = call i32 @mutex_unlock(i32* @g_mutex)
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* @GASKET_FRAMEWORK_DESC_MAX, align 4
  %72 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %154

75:                                               ; preds = %66
  %76 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %76, i64 %78
  store %struct.gasket_internal_desc* %79, %struct.gasket_internal_desc** %7, align 8
  %80 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %81 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %80, i32 0, i32 3
  %82 = call i32 @mutex_init(i32* %81)
  %83 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %84 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GASKET_DEV_MAX, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 8, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memset(i32 %85, i32 0, i32 %89)
  %91 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %92 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %95 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @class_create(i32 %93, i32 %96)
  %98 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %99 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %101 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %75
  %106 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %107 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %110 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @PTR_ERR(i32 %111)
  %113 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %112)
  %114 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %115 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @PTR_ERR(i32 %116)
  store i32 %117, i32* %5, align 4
  br label %145

118:                                              ; preds = %75
  %119 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %120 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %123 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @MKDEV(i32 %121, i32 %124)
  %126 = load i32, i32* @GASKET_DEV_MAX, align 4
  %127 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %128 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @register_chrdev_region(i32 %125, i32 %126, i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %118
  %134 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %3, align 8
  %135 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %136, i32 %137)
  br label %140

139:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %154

140:                                              ; preds = %133
  %141 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %7, align 8
  %142 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @class_destroy(i32 %143)
  br label %145

145:                                              ; preds = %140, %105
  %146 = call i32 @mutex_lock(i32* @g_mutex)
  %147 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** @g_descs, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %147, i64 %149
  %151 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %150, i32 0, i32 0
  store %struct.gasket_driver_desc* null, %struct.gasket_driver_desc** %151, align 8
  %152 = call i32 @mutex_unlock(i32* @g_mutex)
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %145, %139, %70, %29
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @class_create(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @register_chrdev_region(i32, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @class_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
