; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"visorbus\00", align 1
@visorbus_debugfs_dir = common dso_local global i32 0, align 4
@clientbus_driverinfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"clientbus\00", align 1
@visorbus_type = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4
@chipset_driverinfo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"chipset\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"visorchipset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @visorbus_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %3, i32* @visorbus_debugfs_dir, align 4
  %4 = call i32 @bus_device_info_init(i32* @clientbus_driverinfo, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @bus_register(i32* @visorbus_type)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %12

10:                                               ; preds = %0
  store i32 1, i32* @initialized, align 4
  %11 = call i32 @bus_device_info_init(i32* @chipset_driverinfo, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @bus_device_info_init(i32*, i8*, i8*) #1

declare dso_local i32 @bus_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
