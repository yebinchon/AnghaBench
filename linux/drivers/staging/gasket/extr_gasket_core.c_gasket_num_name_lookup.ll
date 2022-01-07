; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_num_name_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_num_name_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_num_name = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gasket_num_name_lookup(i64 %0, %struct.gasket_num_name* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.gasket_num_name*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.gasket_num_name* %1, %struct.gasket_num_name** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %22, %2
  %7 = load %struct.gasket_num_name*, %struct.gasket_num_name** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = getelementptr inbounds %struct.gasket_num_name, %struct.gasket_num_name* %7, i64 %8
  %10 = getelementptr inbounds %struct.gasket_num_name, %struct.gasket_num_name* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.gasket_num_name*, %struct.gasket_num_name** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.gasket_num_name, %struct.gasket_num_name* %15, i64 %16
  %18 = getelementptr inbounds %struct.gasket_num_name, %struct.gasket_num_name* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %25

22:                                               ; preds = %13
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %6

25:                                               ; preds = %21, %6
  %26 = load %struct.gasket_num_name*, %struct.gasket_num_name** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.gasket_num_name, %struct.gasket_num_name* %26, i64 %27
  %29 = getelementptr inbounds %struct.gasket_num_name, %struct.gasket_num_name* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  ret i8* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
