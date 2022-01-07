; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_process_err_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_aer_process_err_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_err_info = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aer_err_info*)* @aer_process_err_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aer_process_err_devices(%struct.aer_err_info* %0) #0 {
  %2 = alloca %struct.aer_err_info*, align 8
  %3 = alloca i32, align 4
  store %struct.aer_err_info* %0, %struct.aer_err_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %43, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %7 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %12 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %10, %4
  %20 = phi i1 [ false, %4 ], [ %18, %10 ]
  br i1 %20, label %21, label %46

21:                                               ; preds = %19
  %22 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %23 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %30 = call i64 @aer_get_device_error_info(i64 %28, %struct.aer_err_info* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %21
  %33 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %34 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %41 = call i32 @aer_print_error(i64 %39, %struct.aer_err_info* %40)
  br label %42

42:                                               ; preds = %32, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %4

46:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %86, %46
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %50 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %55 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %53, %47
  %63 = phi i1 [ false, %47 ], [ %61, %53 ]
  br i1 %63, label %64, label %89

64:                                               ; preds = %62
  %65 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %66 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %73 = call i64 @aer_get_device_error_info(i64 %71, %struct.aer_err_info* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %64
  %76 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %77 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.aer_err_info*, %struct.aer_err_info** %2, align 8
  %84 = call i32 @handle_error_source(i64 %82, %struct.aer_err_info* %83)
  br label %85

85:                                               ; preds = %75, %64
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %47

89:                                               ; preds = %62
  ret void
}

declare dso_local i64 @aer_get_device_error_info(i64, %struct.aer_err_info*) #1

declare dso_local i32 @aer_print_error(i64, %struct.aer_err_info*) #1

declare dso_local i32 @handle_error_source(i64, %struct.aer_err_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
