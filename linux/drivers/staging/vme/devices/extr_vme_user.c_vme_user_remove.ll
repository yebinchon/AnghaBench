; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vme/devices/extr_vme_user.c_vme_user_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vme/devices/extr_vme_user.c_vme_user_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.vme_dev = type { i32 }

@VME_DEVS = common dso_local global i32 0, align 4
@image = common dso_local global %struct.TYPE_2__* null, align 8
@vme_user_sysfs_class = common dso_local global i32 0, align 4
@VME_MAJOR = common dso_local global i32 0, align 4
@MASTER_MINOR = common dso_local global i32 0, align 4
@MASTER_MAX = common dso_local global i32 0, align 4
@SLAVE_MINOR = common dso_local global i32 0, align 4
@SLAVE_MAX = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i32 0, align 4
@vme_user_cdev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_dev*)* @vme_user_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vme_user_remove(%struct.vme_dev* %0) #0 {
  %2 = alloca %struct.vme_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.vme_dev* %0, %struct.vme_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @VME_DEVS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = call i32 @mutex_destroy(i32* %13)
  %15 = load i32, i32* @vme_user_sysfs_class, align 4
  %16 = load i32, i32* @VME_MAJOR, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @MKDEV(i32 %16, i32 %17)
  %19 = call i32 @device_destroy(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  %24 = load i32, i32* @vme_user_sysfs_class, align 4
  %25 = call i32 @class_destroy(i32 %24)
  %26 = load i32, i32* @MASTER_MINOR, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %47, %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MASTER_MAX, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kfree(i32 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vme_master_free(i32 %45)
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load i32, i32* @SLAVE_MINOR, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %98, %50
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SLAVE_MAX, align 4
  %55 = add nsw i32 %54, 1
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %101

57:                                               ; preds = %52
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VME_A32, align 4
  %65 = call i32 @vme_slave_set(i32 %63, i32 0, i32 0, i32 0, i32 0, i32 %64, i32 0)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @vme_free_consistent(i32 %71, i32 %77, i32 %83, i32 %89)
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @image, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @vme_slave_free(i32 %96)
  br label %98

98:                                               ; preds = %57
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %52

101:                                              ; preds = %52
  %102 = load i32, i32* @vme_user_cdev, align 4
  %103 = call i32 @cdev_del(i32 %102)
  %104 = load i32, i32* @VME_MAJOR, align 4
  %105 = call i32 @MKDEV(i32 %104, i32 0)
  %106 = load i32, i32* @VME_DEVS, align 4
  %107 = call i32 @unregister_chrdev_region(i32 %105, i32 %106)
  ret i32 0
}

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @class_destroy(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @vme_master_free(i32) #1

declare dso_local i32 @vme_slave_set(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vme_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @vme_slave_free(i32) #1

declare dso_local i32 @cdev_del(i32) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
