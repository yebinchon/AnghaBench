; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_fw.c_sym_fw_setup_bus_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_fw.c_sym_fw_setup_bus_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i64, i32, i64, i32, i64, i32 }
%struct.sym_fw = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, %struct.sym_fw*)* @sym_fw_setup_bus_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_fw_setup_bus_addresses(%struct.sym_hcb* %0, %struct.sym_fw* %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_fw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store %struct.sym_fw* %1, %struct.sym_fw** %4, align 8
  %8 = load %struct.sym_fw*, %struct.sym_fw** %4, align 8
  %9 = getelementptr inbounds %struct.sym_fw, %struct.sym_fw* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  store i64* %11, i64** %6, align 8
  %12 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %13 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %12, i32 0, i32 5
  %14 = bitcast i32* %13 to i64*
  store i64* %14, i64** %5, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %33, %2
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %21 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %22, %27
  %29 = load i64*, i64** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 %28, i64* %32, align 8
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load %struct.sym_fw*, %struct.sym_fw** %4, align 8
  %38 = getelementptr inbounds %struct.sym_fw, %struct.sym_fw* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64* %40, i64** %6, align 8
  %41 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %42 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %41, i32 0, i32 3
  %43 = bitcast i32* %42 to i64*
  store i64* %43, i64** %5, align 8
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %62, %36
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %50 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %51, %56
  %58 = load i64*, i64** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %57, i64* %61, align 8
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %44

65:                                               ; preds = %44
  %66 = load %struct.sym_fw*, %struct.sym_fw** %4, align 8
  %67 = getelementptr inbounds %struct.sym_fw, %struct.sym_fw* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i64*
  store i64* %69, i64** %6, align 8
  %70 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %71 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %70, i32 0, i32 1
  %72 = bitcast i32* %71 to i64*
  store i64* %72, i64** %5, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %91, %65
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %79 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %80, %85
  %87 = load i64*, i64** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %86, i64* %90, align 8
  br label %91

91:                                               ; preds = %77
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %73

94:                                               ; preds = %73
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
