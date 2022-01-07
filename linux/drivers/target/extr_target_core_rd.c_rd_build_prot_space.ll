; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_build_prot_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_build_prot_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rd_dev = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.rd_dev_sg_table* }
%struct.TYPE_2__ = type { i32 }
%struct.rd_dev_sg_table = type { i32 }

@RD_MAX_ALLOCATION_SIZE = common dso_local global i32 0, align 4
@RDF_NULLIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"CORE_RD[%u] - Built Ramdisk Device ID: %u prot space of %u pages in %u tables\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rd_dev*, i32, i32)* @rd_build_prot_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_build_prot_space(%struct.rd_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rd_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rd_dev_sg_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rd_dev* %0, %struct.rd_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @RD_MAX_ALLOCATION_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = load %struct.rd_dev*, %struct.rd_dev** %5, align 8
  %18 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RDF_NULLIO, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.rd_dev*, %struct.rd_dev** %5, align 8
  %26 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %29, %30
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sdiv i32 %33, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.rd_dev_sg_table* @kcalloc(i32 %37, i32 4, i32 %38)
  store %struct.rd_dev_sg_table* %39, %struct.rd_dev_sg_table** %8, align 8
  %40 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %8, align 8
  %41 = icmp ne %struct.rd_dev_sg_table* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %24
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %74

45:                                               ; preds = %24
  %46 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %8, align 8
  %47 = load %struct.rd_dev*, %struct.rd_dev** %5, align 8
  %48 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %47, i32 0, i32 5
  store %struct.rd_dev_sg_table* %46, %struct.rd_dev_sg_table** %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.rd_dev*, %struct.rd_dev** %5, align 8
  %51 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.rd_dev*, %struct.rd_dev** %5, align 8
  %53 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @rd_allocate_sgl_table(%struct.rd_dev* %52, %struct.rd_dev_sg_table* %53, i32 %54, i32 255)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %74

60:                                               ; preds = %45
  %61 = load %struct.rd_dev*, %struct.rd_dev** %5, align 8
  %62 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rd_dev*, %struct.rd_dev** %5, align 8
  %67 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.rd_dev*, %struct.rd_dev** %5, align 8
  %71 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68, i32 %69, i32 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %60, %58, %42, %23
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.rd_dev_sg_table* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @rd_allocate_sgl_table(%struct.rd_dev*, %struct.rd_dev_sg_table*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
