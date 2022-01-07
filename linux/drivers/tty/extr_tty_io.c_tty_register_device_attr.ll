; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_register_device_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_register_device_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32, i64, i32, %struct.ktermios**, i32, i32, i32 }
%struct.ktermios = type { i32 }
%struct.device = type { i32, %struct.attribute_group**, i32, %struct.device*, i32, i64 }
%struct.attribute_group = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"%s: Attempt to register invalid tty line number (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_PTY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tty_class = common dso_local global i32 0, align 4
@tty_device_create_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TTY_DRIVER_DYNAMIC_ALLOC = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @tty_register_device_attr(%struct.tty_driver* %0, i32 %1, %struct.device* %2, i8* %3, %struct.attribute_group** %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tty_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.attribute_group**, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca %struct.ktermios*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.device* %2, %struct.device** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.attribute_group** %4, %struct.attribute_group*** %11, align 8
  %17 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %18 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %21 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @MKDEV(i32 %19, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  store i64 %26, i64* %13, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %29 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp uge i32 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %5
  %33 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %34 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.device* @ERR_PTR(i32 %39)
  store %struct.device* %40, %struct.device** %6, align 8
  br label %146

41:                                               ; preds = %5
  %42 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %43 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TTY_DRIVER_TYPE_PTY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %51 = call i32 @pty_line_name(%struct.tty_driver* %48, i32 %49, i8* %50)
  br label %57

52:                                               ; preds = %41
  %53 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %56 = call i32 @tty_line_name(%struct.tty_driver* %53, i32 %54, i8* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.device* @kzalloc(i32 48, i32 %58)
  store %struct.device* %59, %struct.device** %15, align 8
  %60 = load %struct.device*, %struct.device** %15, align 8
  %61 = icmp ne %struct.device* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.device* @ERR_PTR(i32 %64)
  store %struct.device* %65, %struct.device** %6, align 8
  br label %146

66:                                               ; preds = %57
  %67 = load i64, i64* %13, align 8
  %68 = load %struct.device*, %struct.device** %15, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 5
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @tty_class, align 4
  %71 = load %struct.device*, %struct.device** %15, align 8
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.device*, %struct.device** %9, align 8
  %74 = load %struct.device*, %struct.device** %15, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 3
  store %struct.device* %73, %struct.device** %75, align 8
  %76 = load i32, i32* @tty_device_create_release, align 4
  %77 = load %struct.device*, %struct.device** %15, align 8
  %78 = getelementptr inbounds %struct.device, %struct.device* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.device*, %struct.device** %15, align 8
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %81 = call i32 @dev_set_name(%struct.device* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = load %struct.attribute_group**, %struct.attribute_group*** %11, align 8
  %83 = load %struct.device*, %struct.device** %15, align 8
  %84 = getelementptr inbounds %struct.device, %struct.device* %83, i32 0, i32 1
  store %struct.attribute_group** %82, %struct.attribute_group*** %84, align 8
  %85 = load %struct.device*, %struct.device** %15, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @dev_set_drvdata(%struct.device* %85, i8* %86)
  %88 = load %struct.device*, %struct.device** %15, align 8
  %89 = call i32 @dev_set_uevent_suppress(%struct.device* %88, i32 1)
  %90 = load %struct.device*, %struct.device** %15, align 8
  %91 = call i32 @device_register(%struct.device* %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %66
  br label %141

95:                                               ; preds = %66
  %96 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %97 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @TTY_DRIVER_DYNAMIC_ALLOC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %95
  %103 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %104 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %103, i32 0, i32 3
  %105 = load %struct.ktermios**, %struct.ktermios*** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ktermios*, %struct.ktermios** %105, i64 %107
  %109 = load %struct.ktermios*, %struct.ktermios** %108, align 8
  store %struct.ktermios* %109, %struct.ktermios** %14, align 8
  %110 = load %struct.ktermios*, %struct.ktermios** %14, align 8
  %111 = icmp ne %struct.ktermios* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %102
  %113 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %114 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %113, i32 0, i32 3
  %115 = load %struct.ktermios**, %struct.ktermios*** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ktermios*, %struct.ktermios** %115, i64 %117
  store %struct.ktermios* null, %struct.ktermios** %118, align 8
  %119 = load %struct.ktermios*, %struct.ktermios** %14, align 8
  %120 = call i32 @kfree(%struct.ktermios* %119)
  br label %121

121:                                              ; preds = %112, %102
  %122 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @tty_cdev_add(%struct.tty_driver* %122, i64 %123, i32 %124, i32 1)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %138

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %95
  %131 = load %struct.device*, %struct.device** %15, align 8
  %132 = call i32 @dev_set_uevent_suppress(%struct.device* %131, i32 0)
  %133 = load %struct.device*, %struct.device** %15, align 8
  %134 = getelementptr inbounds %struct.device, %struct.device* %133, i32 0, i32 0
  %135 = load i32, i32* @KOBJ_ADD, align 4
  %136 = call i32 @kobject_uevent(i32* %134, i32 %135)
  %137 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %137, %struct.device** %6, align 8
  br label %146

138:                                              ; preds = %128
  %139 = load %struct.device*, %struct.device** %15, align 8
  %140 = call i32 @device_del(%struct.device* %139)
  br label %141

141:                                              ; preds = %138, %94
  %142 = load %struct.device*, %struct.device** %15, align 8
  %143 = call i32 @put_device(%struct.device* %142)
  %144 = load i32, i32* %16, align 4
  %145 = call %struct.device* @ERR_PTR(i32 %144)
  store %struct.device* %145, %struct.device** %6, align 8
  br label %146

146:                                              ; preds = %141, %130, %62, %32
  %147 = load %struct.device*, %struct.device** %6, align 8
  ret %struct.device* %147
}

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local i32 @pty_line_name(%struct.tty_driver*, i32, i8*) #1

declare dso_local i32 @tty_line_name(%struct.tty_driver*, i32, i8*) #1

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i8*) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.device*, i32) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @kfree(%struct.ktermios*) #1

declare dso_local i32 @tty_cdev_add(%struct.tty_driver*, i64, i32, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @device_del(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
