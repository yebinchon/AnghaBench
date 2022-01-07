; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_build_device_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_build_device_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rd_dev = type { i64, i32, i32, i32, %struct.TYPE_2__*, %struct.rd_dev_sg_table* }
%struct.TYPE_2__ = type { i32 }
%struct.rd_dev_sg_table = type { i32 }

@RD_MAX_ALLOCATION_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Illegal page count: %u for Ramdisk device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RDF_NULLIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"CORE_RD[%u] - Built Ramdisk Device ID: %u space of %u pages in %u tables\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rd_dev*)* @rd_build_device_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_build_device_space(%struct.rd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rd_dev*, align 8
  %4 = alloca %struct.rd_dev_sg_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rd_dev* %0, %struct.rd_dev** %3, align 8
  %9 = load i32, i32* @RD_MAX_ALLOCATION_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = udiv i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %14 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %19 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %81

24:                                               ; preds = %1
  %25 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RDF_NULLIO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %81

32:                                               ; preds = %24
  %33 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %34 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sdiv i32 %37, %38
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.rd_dev_sg_table* @kcalloc(i32 %41, i32 4, i32 %42)
  store %struct.rd_dev_sg_table* %43, %struct.rd_dev_sg_table** %4, align 8
  %44 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %4, align 8
  %45 = icmp ne %struct.rd_dev_sg_table* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %81

49:                                               ; preds = %32
  %50 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %4, align 8
  %51 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %52 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %51, i32 0, i32 5
  store %struct.rd_dev_sg_table* %50, %struct.rd_dev_sg_table** %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %55 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %57 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @rd_allocate_sgl_table(%struct.rd_dev* %56, %struct.rd_dev_sg_table* %57, i32 %58, i32 0)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %81

64:                                               ; preds = %49
  %65 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %66 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %71 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %74 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.rd_dev*, %struct.rd_dev** %3, align 8
  %78 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72, i32 %76, i32 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %64, %62, %46, %31, %17
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local %struct.rd_dev_sg_table* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @rd_allocate_sgl_table(%struct.rd_dev*, %struct.rd_dev_sg_table*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
