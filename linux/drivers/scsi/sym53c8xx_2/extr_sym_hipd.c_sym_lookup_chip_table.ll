; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_lookup_chip_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_lookup_chip_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_chip = type { i64, i64 }

@sym_num_devs = common dso_local global i32 0, align 4
@sym_dev_table = common dso_local global %struct.sym_chip* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sym_chip* @sym_lookup_chip_table(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.sym_chip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sym_chip*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @sym_num_devs, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load %struct.sym_chip*, %struct.sym_chip** @sym_dev_table, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sym_chip, %struct.sym_chip* %13, i64 %15
  store %struct.sym_chip* %16, %struct.sym_chip** %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.sym_chip*, %struct.sym_chip** %6, align 8
  %19 = getelementptr inbounds %struct.sym_chip, %struct.sym_chip* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %32

23:                                               ; preds = %12
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.sym_chip*, %struct.sym_chip** %6, align 8
  %26 = getelementptr inbounds %struct.sym_chip, %struct.sym_chip* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %32

30:                                               ; preds = %23
  %31 = load %struct.sym_chip*, %struct.sym_chip** %6, align 8
  store %struct.sym_chip* %31, %struct.sym_chip** %3, align 8
  br label %36

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %8

35:                                               ; preds = %8
  store %struct.sym_chip* null, %struct.sym_chip** %3, align 8
  br label %36

36:                                               ; preds = %35, %30
  %37 = load %struct.sym_chip*, %struct.sym_chip** %3, align 8
  ret %struct.sym_chip* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
