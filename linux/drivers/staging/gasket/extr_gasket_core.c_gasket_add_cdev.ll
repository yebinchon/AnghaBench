; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_add_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_add_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_cdev_info = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.module* }
%struct.file_operations = type { i32 }
%struct.module = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"cannot add char device [ret=%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_cdev_info*, %struct.file_operations*, %struct.module*)* @gasket_add_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_add_cdev(%struct.gasket_cdev_info* %0, %struct.file_operations* %1, %struct.module* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_cdev_info*, align 8
  %6 = alloca %struct.file_operations*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i32, align 4
  store %struct.gasket_cdev_info* %0, %struct.gasket_cdev_info** %5, align 8
  store %struct.file_operations* %1, %struct.file_operations** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %9 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %5, align 8
  %10 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %9, i32 0, i32 3
  %11 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %12 = call i32 @cdev_init(%struct.TYPE_5__* %10, %struct.file_operations* %11)
  %13 = load %struct.module*, %struct.module** %7, align 8
  %14 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %5, align 8
  %15 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.module* %13, %struct.module** %16, align 8
  %17 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %5, align 8
  %18 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %17, i32 0, i32 3
  %19 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %5, align 8
  %20 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @cdev_add(%struct.TYPE_5__* %18, i32 %21, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %5, align 8
  %27 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %5, align 8
  %36 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @cdev_init(%struct.TYPE_5__*, %struct.file_operations*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
