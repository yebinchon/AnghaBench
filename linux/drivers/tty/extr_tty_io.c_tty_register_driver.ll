; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32, i32, i32, i32, i32, i64 }
%struct.device = type { i32 }

@TTY_DRIVER_DYNAMIC_ALLOC = common dso_local global i32 0, align 4
@tty_mutex = common dso_local global i32 0, align 4
@tty_drivers = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@TTY_DRIVER_INSTALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_register_driver(%struct.tty_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  %8 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %9 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %1
  %13 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %14 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %17 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %20 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @alloc_chrdev_region(i32* %6, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @MAJOR(i32 %26)
  %28 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %29 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %28, i32 0, i32 5
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @MINOR(i32 %30)
  %32 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %33 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %25, %12
  br label %51

35:                                               ; preds = %1
  %36 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %37 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %40 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @MKDEV(i64 %38, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %45 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %48 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @register_chrdev_region(i32 %43, i32 %46, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %35, %34
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %140

55:                                               ; preds = %51
  %56 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %57 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TTY_DRIVER_DYNAMIC_ALLOC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %66 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @tty_cdev_add(%struct.tty_driver* %63, i32 %64, i32 0, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %134

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %55
  %74 = call i32 @mutex_lock(i32* @tty_mutex)
  %75 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %76 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %75, i32 0, i32 2
  %77 = call i32 @list_add(i32* %76, i32* @tty_drivers)
  %78 = call i32 @mutex_unlock(i32* @tty_mutex)
  %79 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %80 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %107, label %85

85:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %103, %85
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %89 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call %struct.device* @tty_register_device(%struct.tty_driver* %93, i32 %94, i32* null)
  store %struct.device* %95, %struct.device** %7, align 8
  %96 = load %struct.device*, %struct.device** %7, align 8
  %97 = call i64 @IS_ERR(%struct.device* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = call i32 @PTR_ERR(%struct.device* %100)
  store i32 %101, i32* %4, align 4
  br label %115

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %86

106:                                              ; preds = %86
  br label %107

107:                                              ; preds = %106, %73
  %108 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %109 = call i32 @proc_tty_register_driver(%struct.tty_driver* %108)
  %110 = load i32, i32* @TTY_DRIVER_INSTALLED, align 4
  %111 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %112 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  store i32 0, i32* %2, align 4
  br label %142

115:                                              ; preds = %99
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %125, %115
  %119 = load i32, i32* %5, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @tty_unregister_device(%struct.tty_driver* %122, i32 %123)
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %5, align 4
  br label %118

128:                                              ; preds = %118
  %129 = call i32 @mutex_lock(i32* @tty_mutex)
  %130 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %131 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %130, i32 0, i32 2
  %132 = call i32 @list_del(i32* %131)
  %133 = call i32 @mutex_unlock(i32* @tty_mutex)
  br label %134

134:                                              ; preds = %128, %71
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %137 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @unregister_chrdev_region(i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %134, %54
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %107
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i32) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @MKDEV(i64, i32) #1

declare dso_local i32 @register_chrdev_region(i32, i32, i32) #1

declare dso_local i32 @tty_cdev_add(%struct.tty_driver*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.device* @tty_register_device(%struct.tty_driver*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @proc_tty_register_driver(%struct.tty_driver*) #1

declare dso_local i32 @tty_unregister_device(%struct.tty_driver*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
