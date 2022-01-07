; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_master_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_master_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device*, %struct.ca91cx42_driver* }
%struct.device = type { i32 }
%struct.ca91cx42_driver = type { i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"RMW Address not 4-byte aligned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SCYC_CTL = common dso_local global i64 0, align 8
@SCYC_EN = common dso_local global i64 0, align 8
@SCYC_CMP = common dso_local global i64 0, align 8
@SCYC_SWP = common dso_local global i64 0, align 8
@SCYC_ADDR = common dso_local global i64 0, align 8
@CA91CX42_SCYC_CTL_CYC_RMW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i32, i32, i32, i64)* @ca91cx42_master_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_master_rmw(%struct.vme_master_resource* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.vme_master_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ca91cx42_driver*, align 8
  %14 = alloca %struct.device*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %16 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %18, align 8
  store %struct.ca91cx42_driver* %19, %struct.ca91cx42_driver** %13, align 8
  %20 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %21 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %14, align 8
  %25 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %26 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %29 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %32 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = and i64 %36, 3
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %5
  %40 = load %struct.device*, %struct.device** %14, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %101

44:                                               ; preds = %5
  %45 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %46 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SCYC_CTL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @iowrite32(i64 0, i64 %49)
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %54 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SCYC_EN, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @iowrite32(i64 %52, i64 %57)
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %62 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SCYC_CMP, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @iowrite32(i64 %60, i64 %65)
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %70 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SCYC_SWP, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @iowrite32(i64 %68, i64 %73)
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %77 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SCYC_ADDR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @iowrite32(i64 %75, i64 %80)
  %82 = load i64, i64* @CA91CX42_SCYC_CTL_CYC_RMW, align 8
  %83 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %84 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SCYC_CTL, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @iowrite32(i64 %82, i64 %87)
  %89 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %90 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %91, %92
  %94 = call i32 @ioread32(i64 %93)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %96 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SCYC_CTL, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @iowrite32(i64 0, i64 %99)
  br label %101

101:                                              ; preds = %44, %39
  %102 = load %struct.vme_master_resource*, %struct.vme_master_resource** %6, align 8
  %103 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %13, align 8
  %106 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
