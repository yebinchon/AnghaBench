; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_scan_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_scan_done(%struct.csio_lnode* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.csio_lnode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.csio_lnode* %0, %struct.csio_lnode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %66

17:                                               ; preds = %5
  %18 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %19 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %25 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %29 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  %32 = load i64, i64* %11, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %26
  %35 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %36 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %41 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %44 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %60

45:                                               ; preds = %34
  %46 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %47 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %50 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %66

54:                                               ; preds = %45
  %55 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %56 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %59 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %39
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %63 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %26
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %53, %16
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
