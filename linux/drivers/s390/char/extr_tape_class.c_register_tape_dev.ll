; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_class.c_register_tape_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_class.c_register_tape_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_class_device = type { i8*, i8*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.file_operations*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.file_operations = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TAPECLASS_NAME_LEN = common dso_local global i32 0, align 4
@tape_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tape_class_device* @register_tape_dev(%struct.device* %0, i32 %1, %struct.file_operations* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.tape_class_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file_operations*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tape_class_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.file_operations* %2, %struct.file_operations** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.tape_class_device* @kzalloc(i32 32, i32 %15)
  store %struct.tape_class_device* %16, %struct.tape_class_device** %12, align 8
  %17 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %18 = icmp ne %struct.tape_class_device* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.tape_class_device* @ERR_PTR(i32 %21)
  store %struct.tape_class_device* %22, %struct.tape_class_device** %6, align 8
  br label %148

23:                                               ; preds = %5
  %24 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %25 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @TAPECLASS_NAME_LEN, align 4
  %29 = call i32 @strlcpy(i8* %26, i8* %27, i32 %28)
  %30 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %31 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 47)
  store i8* %33, i8** %14, align 8
  br label %34

34:                                               ; preds = %39, %23
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8*, i8** %14, align 8
  store i8 33, i8* %38, align 1
  br label %39

39:                                               ; preds = %37
  %40 = load i8*, i8** %14, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 47)
  store i8* %41, i8** %14, align 8
  br label %34

42:                                               ; preds = %34
  %43 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %44 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* @TAPECLASS_NAME_LEN, align 4
  %48 = call i32 @strlcpy(i8* %45, i8* %46, i32 %47)
  %49 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %50 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 47)
  store i8* %52, i8** %14, align 8
  br label %53

53:                                               ; preds = %58, %42
  %54 = load i8*, i8** %14, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** %14, align 8
  store i8 33, i8* %57, align 1
  br label %58

58:                                               ; preds = %56
  %59 = load i8*, i8** %14, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 47)
  store i8* %60, i8** %14, align 8
  br label %53

61:                                               ; preds = %53
  %62 = call %struct.TYPE_7__* (...) @cdev_alloc()
  %63 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %64 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %63, i32 0, i32 2
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %64, align 8
  %65 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %66 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %143

72:                                               ; preds = %61
  %73 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %74 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %77 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i32 %75, i32* %79, align 8
  %80 = load %struct.file_operations*, %struct.file_operations** %9, align 8
  %81 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %82 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %81, i32 0, i32 2
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store %struct.file_operations* %80, %struct.file_operations** %84, align 8
  %85 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %86 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @cdev_add(%struct.TYPE_7__* %87, i32 %88, i32 1)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %72
  br label %138

93:                                               ; preds = %72
  %94 = load i32, i32* @tape_class, align 4
  %95 = load %struct.device*, %struct.device** %7, align 8
  %96 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %97 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %102 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call %struct.TYPE_6__* @device_create(i32 %94, %struct.device* %95, i32 %100, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %103)
  %105 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %106 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %105, i32 0, i32 3
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %106, align 8
  %107 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %108 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %107, i32 0, i32 3
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i32 @PTR_ERR_OR_ZERO(%struct.TYPE_6__* %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %93
  br label %138

114:                                              ; preds = %93
  %115 = load %struct.device*, %struct.device** %7, align 8
  %116 = getelementptr inbounds %struct.device, %struct.device* %115, i32 0, i32 0
  %117 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %118 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %117, i32 0, i32 3
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %122 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @sysfs_create_link(i32* %116, i32* %120, i8* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %130

128:                                              ; preds = %114
  %129 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  store %struct.tape_class_device* %129, %struct.tape_class_device** %6, align 8
  br label %148

130:                                              ; preds = %127
  %131 = load i32, i32* @tape_class, align 4
  %132 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %133 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @device_destroy(i32 %131, i32 %136)
  br label %138

138:                                              ; preds = %130, %113, %92
  %139 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %140 = getelementptr inbounds %struct.tape_class_device, %struct.tape_class_device* %139, i32 0, i32 2
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = call i32 @cdev_del(%struct.TYPE_7__* %141)
  br label %143

143:                                              ; preds = %138, %69
  %144 = load %struct.tape_class_device*, %struct.tape_class_device** %12, align 8
  %145 = call i32 @kfree(%struct.tape_class_device* %144)
  %146 = load i32, i32* %13, align 4
  %147 = call %struct.tape_class_device* @ERR_PTR(i32 %146)
  store %struct.tape_class_device* %147, %struct.tape_class_device** %6, align 8
  br label %148

148:                                              ; preds = %143, %128, %19
  %149 = load %struct.tape_class_device*, %struct.tape_class_device** %6, align 8
  ret %struct.tape_class_device* %149
}

declare dso_local %struct.tape_class_device* @kzalloc(i32, i32) #1

declare dso_local %struct.tape_class_device* @ERR_PTR(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_7__* @cdev_alloc(...) #1

declare dso_local i32 @cdev_add(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @device_create(i32, %struct.device*, i32, i32*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.TYPE_6__*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.tape_class_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
