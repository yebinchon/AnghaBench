; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_core.c_ntb_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_core.c_ntb_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { %struct.TYPE_5__, i32, i32*, i32*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ntb_bus = common dso_local global i32 0, align 4
@ntb_dev_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_register_device(%struct.ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_dev*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %3, align 8
  %4 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %5 = icmp ne %struct.ntb_dev* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %69

9:                                                ; preds = %1
  %10 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %69

17:                                               ; preds = %9
  %18 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %19 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %69

25:                                               ; preds = %17
  %26 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %27 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntb_dev_ops_is_valid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %69

34:                                               ; preds = %25
  %35 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %36 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %35, i32 0, i32 5
  %37 = call i32 @init_completion(i32* %36)
  %38 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %39 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32* @ntb_bus, i32** %40, align 8
  %41 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %42 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %46 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32* %44, i32** %47, align 8
  %48 = load i32, i32* @ntb_dev_release, align 4
  %49 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %50 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %53 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %52, i32 0, i32 0
  %54 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %55 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @pci_name(%struct.TYPE_4__* %56)
  %58 = call i32 @dev_set_name(%struct.TYPE_5__* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %60 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %62 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %64 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %63, i32 0, i32 1
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %67 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %66, i32 0, i32 0
  %68 = call i32 @device_register(%struct.TYPE_5__* %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %34, %31, %22, %14, %6
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @ntb_dev_ops_is_valid(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
