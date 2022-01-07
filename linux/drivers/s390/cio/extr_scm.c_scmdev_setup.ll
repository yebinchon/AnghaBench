; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_scm.c_scmdev_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_scm.c_scmdev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_device = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sale = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"%016llx\00", align 1
@scm_root = common dso_local global i32 0, align 4
@scm_bus_type = common dso_local global i32 0, align 4
@scmdev_release = common dso_local global i32 0, align 4
@scmdev_attr_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_device*, %struct.sale*, i32, i32)* @scmdev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scmdev_setup(%struct.scm_device* %0, %struct.sale* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scm_device*, align 8
  %6 = alloca %struct.sale*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scm_device* %0, %struct.scm_device** %5, align 8
  store %struct.sale* %1, %struct.sale** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %10 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %9, i32 0, i32 2
  %11 = load %struct.sale*, %struct.sale** %6, align 8
  %12 = getelementptr inbounds %struct.sale, %struct.sale* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dev_set_name(%struct.TYPE_4__* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %17 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.sale*, %struct.sale** %6, align 8
  %19 = getelementptr inbounds %struct.sale, %struct.sale* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %22 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %21, i32 0, i32 4
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %27 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.sale*, %struct.sale** %6, align 8
  %29 = getelementptr inbounds %struct.sale, %struct.sale* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %32 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.sale*, %struct.sale** %6, align 8
  %35 = getelementptr inbounds %struct.sale, %struct.sale* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %38 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  store i32 %36, i32* %39, align 4
  %40 = load %struct.sale*, %struct.sale** %6, align 8
  %41 = getelementptr inbounds %struct.sale, %struct.sale* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %44 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = load %struct.sale*, %struct.sale** %6, align 8
  %47 = getelementptr inbounds %struct.sale, %struct.sale* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %50 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load %struct.sale*, %struct.sale** %6, align 8
  %53 = getelementptr inbounds %struct.sale, %struct.sale* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %56 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.sale*, %struct.sale** %6, align 8
  %59 = getelementptr inbounds %struct.sale, %struct.sale* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %62 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.sale*, %struct.sale** %6, align 8
  %65 = getelementptr inbounds %struct.sale, %struct.sale* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %68 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @scm_root, align 4
  %71 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %72 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 8
  %74 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %75 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32* @scm_bus_type, i32** %76, align 8
  %77 = load i32, i32* @scmdev_release, align 4
  %78 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %79 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @scmdev_attr_groups, align 4
  %82 = load %struct.scm_device*, %struct.scm_device** %5, align 8
  %83 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  ret void
}

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
