; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_get_prot_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_get_prot_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rd_dev_sg_table = type { i64, i64 }
%struct.rd_dev = type { i64, %struct.rd_dev_sg_table* }

@RD_MAX_ALLOCATION_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to locate struct prot rd_dev_sg_table for page: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rd_dev_sg_table* (%struct.rd_dev*, i64)* @rd_get_prot_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rd_dev_sg_table* @rd_get_prot_table(%struct.rd_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rd_dev_sg_table*, align 8
  %4 = alloca %struct.rd_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rd_dev_sg_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rd_dev* %0, %struct.rd_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @RD_MAX_ALLOCATION_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = udiv i64 %10, 4
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %8, align 8
  %14 = udiv i64 %12, %13
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.rd_dev*, %struct.rd_dev** %4, align 8
  %17 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load %struct.rd_dev*, %struct.rd_dev** %4, align 8
  %22 = getelementptr inbounds %struct.rd_dev, %struct.rd_dev* %21, i32 0, i32 1
  %23 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %23, i64 %24
  store %struct.rd_dev_sg_table* %25, %struct.rd_dev_sg_table** %6, align 8
  %26 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %6, align 8
  %27 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %6, align 8
  %33 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %6, align 8
  store %struct.rd_dev_sg_table* %38, %struct.rd_dev_sg_table** %3, align 8
  br label %43

39:                                               ; preds = %31, %20
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %41)
  store %struct.rd_dev_sg_table* null, %struct.rd_dev_sg_table** %3, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %3, align 8
  ret %struct.rd_dev_sg_table* %44
}

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
