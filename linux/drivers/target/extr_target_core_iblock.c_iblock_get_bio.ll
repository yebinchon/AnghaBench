; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_get_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_get_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__, i32*, %struct.se_cmd* }
%struct.TYPE_2__ = type { i32 }
%struct.se_cmd = type { i32 }
%struct.iblock_dev = type { i32, i32 }

@BIO_MAX_PAGES = common dso_local global i64 0, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate memory for bio\0A\00", align 1
@iblock_bio_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.se_cmd*, i32, i64, i32, i32)* @iblock_get_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @iblock_get_bio(%struct.se_cmd* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.se_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iblock_dev*, align 8
  %13 = alloca %struct.bio*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.iblock_dev* @IBLOCK_DEV(i32 %16)
  store %struct.iblock_dev* %17, %struct.iblock_dev** %12, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @BIO_MAX_PAGES, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64, i64* @BIO_MAX_PAGES, align 8
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %21, %5
  %24 = load i32, i32* @GFP_NOIO, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.iblock_dev*, %struct.iblock_dev** %12, align 8
  %27 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %26, i32 0, i32 1
  %28 = call %struct.bio* @bio_alloc_bioset(i32 %24, i64 %25, i32* %27)
  store %struct.bio* %28, %struct.bio** %13, align 8
  %29 = load %struct.bio*, %struct.bio** %13, align 8
  %30 = icmp ne %struct.bio* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.bio* null, %struct.bio** %6, align 8
  br label %53

33:                                               ; preds = %23
  %34 = load %struct.bio*, %struct.bio** %13, align 8
  %35 = load %struct.iblock_dev*, %struct.iblock_dev** %12, align 8
  %36 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bio_set_dev(%struct.bio* %34, i32 %37)
  %39 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %40 = load %struct.bio*, %struct.bio** %13, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  store %struct.se_cmd* %39, %struct.se_cmd** %41, align 8
  %42 = load %struct.bio*, %struct.bio** %13, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 1
  store i32* @iblock_bio_done, i32** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.bio*, %struct.bio** %13, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.bio*, %struct.bio** %13, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @bio_set_op_attrs(%struct.bio* %48, i32 %49, i32 %50)
  %52 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %52, %struct.bio** %6, align 8
  br label %53

53:                                               ; preds = %33, %31
  %54 = load %struct.bio*, %struct.bio** %6, align 8
  ret %struct.bio* %54
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(i32) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i64, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
