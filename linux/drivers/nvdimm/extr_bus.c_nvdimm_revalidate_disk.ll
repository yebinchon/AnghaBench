; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_revalidate_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_revalidate_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.device = type { i32 }
%struct.nd_region = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }

@.str = private unnamed_addr constant [36 x i8] c"%s read-only, marking %s read-only\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_revalidate_disk(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_region*, align 8
  %6 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = call %struct.TYPE_2__* @disk_to_dev(%struct.gendisk* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nd_region* @to_nd_region(i32 %13)
  store %struct.nd_region* %14, %struct.nd_region** %5, align 8
  %15 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %16 = call i32 @get_disk_ro(%struct.gendisk* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %21 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  br label %37

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %29 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %28, i32 0, i32 1
  %30 = call i32 @dev_name(i32* %29)
  %31 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %32 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_info(%struct.device* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %36 = call i32 @set_disk_ro(%struct.gendisk* %35, i32 1)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %26, %25
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_2__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i32 @get_disk_ro(%struct.gendisk*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @set_disk_ro(%struct.gendisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
