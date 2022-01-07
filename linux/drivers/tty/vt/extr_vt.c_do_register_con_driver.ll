; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_register_con_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_register_con_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con_driver = type { i32, i8*, i32, i32, i32, i32*, %struct.consw* }
%struct.consw = type { i8* (...)*, %struct.module* }
%struct.module = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MAX_NR_CON_DRIVER = common dso_local global i32 0, align 4
@registered_con_driver = common dso_local global %struct.con_driver* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CON_DRIVER_FLAG_ZOMBIE = common dso_local global i32 0, align 4
@CON_DRIVER_FLAG_MODULE = common dso_local global i32 0, align 4
@CON_DRIVER_FLAG_INIT = common dso_local global i32 0, align 4
@vtconsole_class = common dso_local global i32 0, align 4
@con_dev_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vtcon%i\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to create device for %s; errno = %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.consw*, i32, i32)* @do_register_con_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_register_con_driver(%struct.consw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.consw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.module*, align 8
  %9 = alloca %struct.con_driver*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.consw* %0, %struct.consw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.consw*, %struct.consw** %5, align 8
  %14 = getelementptr inbounds %struct.consw, %struct.consw* %13, i32 0, i32 1
  %15 = load %struct.module*, %struct.module** %14, align 8
  store %struct.module* %15, %struct.module** %8, align 8
  %16 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %17 = load %struct.module*, %struct.module** %8, align 8
  %18 = call i32 @try_module_get(%struct.module* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %145

23:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %42, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @MAX_NR_CON_DRIVER, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.con_driver*, %struct.con_driver** @registered_con_driver, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %29, i64 %31
  store %struct.con_driver* %32, %struct.con_driver** %9, align 8
  %33 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %34 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %33, i32 0, i32 6
  %35 = load %struct.consw*, %struct.consw** %34, align 8
  %36 = load %struct.consw*, %struct.consw** %5, align 8
  %37 = icmp eq %struct.consw* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %141

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %24

45:                                               ; preds = %24
  %46 = load %struct.consw*, %struct.consw** %5, align 8
  %47 = getelementptr inbounds %struct.consw, %struct.consw* %46, i32 0, i32 0
  %48 = load i8* (...)*, i8* (...)** %47, align 8
  %49 = call i8* (...) %48()
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %141

55:                                               ; preds = %45
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %100, %55
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MAX_NR_CON_DRIVER, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %103

62:                                               ; preds = %58
  %63 = load %struct.con_driver*, %struct.con_driver** @registered_con_driver, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %63, i64 %65
  store %struct.con_driver* %66, %struct.con_driver** %9, align 8
  %67 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %68 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %67, i32 0, i32 6
  %69 = load %struct.consw*, %struct.consw** %68, align 8
  %70 = icmp eq %struct.consw* %69, null
  br i1 %70, label %71, label %99

71:                                               ; preds = %62
  %72 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %73 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CON_DRIVER_FLAG_ZOMBIE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %71
  %79 = load %struct.consw*, %struct.consw** %5, align 8
  %80 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %81 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %80, i32 0, i32 6
  store %struct.consw* %79, %struct.consw** %81, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %84 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %87 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @CON_DRIVER_FLAG_MODULE, align 4
  %89 = load i32, i32* @CON_DRIVER_FLAG_INIT, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %92 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %95 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %98 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  store i32 0, i32* %12, align 4
  br label %103

99:                                               ; preds = %71, %62
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %58

103:                                              ; preds = %78, %58
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %141

107:                                              ; preds = %103
  %108 = load i32, i32* @vtconsole_class, align 4
  %109 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %110 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @MKDEV(i32 0, i32 %111)
  %113 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %114 = load i32, i32* @con_dev_groups, align 4
  %115 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %116 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32* @device_create_with_groups(i32 %108, i32* null, i32 %112, %struct.con_driver* %113, i32 %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %120 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %119, i32 0, i32 5
  store i32* %118, i32** %120, align 8
  %121 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %122 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @IS_ERR(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %107
  %127 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %128 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %131 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @PTR_ERR(i32* %132)
  %134 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %129, i32 %133)
  %135 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %136 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %135, i32 0, i32 5
  store i32* null, i32** %136, align 8
  br label %140

137:                                              ; preds = %107
  %138 = load %struct.con_driver*, %struct.con_driver** %9, align 8
  %139 = call i32 @vtconsole_init_device(%struct.con_driver* %138)
  br label %140

140:                                              ; preds = %137, %126
  br label %141

141:                                              ; preds = %140, %106, %52, %38
  %142 = load %struct.module*, %struct.module** %8, align 8
  %143 = call i32 @module_put(%struct.module* %142)
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %141, %20
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32* @device_create_with_groups(i32, i32*, i32, %struct.con_driver*, i32, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @vtconsole_init_device(%struct.con_driver*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
