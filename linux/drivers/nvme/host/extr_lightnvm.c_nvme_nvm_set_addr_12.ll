; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_set_addr_12.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_set_addr_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_addrf_12 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.nvme_nvm_id12_addrf = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_addrf_12*, %struct.nvme_nvm_id12_addrf*)* @nvme_nvm_set_addr_12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_nvm_set_addr_12(%struct.nvm_addrf_12* %0, %struct.nvme_nvm_id12_addrf* %1) #0 {
  %3 = alloca %struct.nvm_addrf_12*, align 8
  %4 = alloca %struct.nvme_nvm_id12_addrf*, align 8
  store %struct.nvm_addrf_12* %0, %struct.nvm_addrf_12** %3, align 8
  store %struct.nvme_nvm_id12_addrf* %1, %struct.nvme_nvm_id12_addrf** %4, align 8
  %5 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %6 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %9 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %11 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %14 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %16 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %19 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %21 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %24 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %29 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %28, i32 0, i32 4
  store i64 %27, i64* %29, align 8
  %30 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %31 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %34 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %33, i32 0, i32 5
  store i64 %32, i64* %34, align 8
  %35 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %36 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %39 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %38, i32 0, i32 6
  store i64 %37, i64* %39, align 8
  %40 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %41 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %44 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %43, i32 0, i32 7
  store i64 %42, i64* %44, align 8
  %45 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %46 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %49 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %48, i32 0, i32 8
  store i64 %47, i64* %49, align 8
  %50 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %51 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %54 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %53, i32 0, i32 9
  store i64 %52, i64* %54, align 8
  %55 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %56 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %55, i32 0, i32 10
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %59 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %58, i32 0, i32 10
  store i64 %57, i64* %59, align 8
  %60 = load %struct.nvme_nvm_id12_addrf*, %struct.nvme_nvm_id12_addrf** %4, align 8
  %61 = getelementptr inbounds %struct.nvme_nvm_id12_addrf, %struct.nvme_nvm_id12_addrf* %60, i32 0, i32 11
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %64 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %63, i32 0, i32 11
  store i64 %62, i64* %64, align 8
  %65 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %66 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = shl i64 1, %67
  %69 = sub i64 %68, 1
  %70 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %71 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = shl i64 %69, %72
  %74 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %75 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %74, i32 0, i32 12
  store i64 %73, i64* %75, align 8
  %76 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %77 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = shl i64 1, %78
  %80 = sub i64 %79, 1
  %81 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %82 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = shl i64 %80, %83
  %85 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %86 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %85, i32 0, i32 13
  store i64 %84, i64* %86, align 8
  %87 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %88 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = shl i64 1, %89
  %91 = sub i64 %90, 1
  %92 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %93 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = shl i64 %91, %94
  %96 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %97 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %96, i32 0, i32 14
  store i64 %95, i64* %97, align 8
  %98 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %99 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = shl i64 1, %100
  %102 = sub i64 %101, 1
  %103 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %104 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = shl i64 %102, %105
  %107 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %108 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %107, i32 0, i32 15
  store i64 %106, i64* %108, align 8
  %109 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %110 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = shl i64 1, %111
  %113 = sub i64 %112, 1
  %114 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %115 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %114, i32 0, i32 10
  %116 = load i64, i64* %115, align 8
  %117 = shl i64 %113, %116
  %118 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %119 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %118, i32 0, i32 16
  store i64 %117, i64* %119, align 8
  %120 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %121 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = shl i64 1, %122
  %124 = sub i64 %123, 1
  %125 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %126 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %125, i32 0, i32 11
  %127 = load i64, i64* %126, align 8
  %128 = shl i64 %124, %127
  %129 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %3, align 8
  %130 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %129, i32 0, i32 17
  store i64 %128, i64* %130, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
