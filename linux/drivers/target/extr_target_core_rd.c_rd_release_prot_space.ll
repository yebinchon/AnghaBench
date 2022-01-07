; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_release_prot_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_release_prot_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rd_dev = type { i64, i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [106 x i8] c"CORE_RD[%u] - Released protection space for Ramdisk Device ID: %u, pages %u in %u tables total bytes %lu\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rd_dev*)* @rd_release_prot_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rd_release_prot_space(%struct.rd_dev* %0) #0 {
  %2 = alloca %struct.rd_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.rd_dev* %0, %struct.rd_dev** %2, align 8
  %4 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %43

14:                                               ; preds = %8
  %15 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %16 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %17 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %20 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @rd_release_sgl_table(%struct.rd_dev* %15, i32* %18, i64 %21)
  store i64 %22, i64* %3, align 8
  %23 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %24 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %29 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %33 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = mul i64 %35, %36
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i64 %31, i32 %34, i64 %37)
  %39 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %40 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.rd_dev*, %struct.rd_dev** %2, align 8
  %42 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @rd_release_sgl_table(%struct.rd_dev*, i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
