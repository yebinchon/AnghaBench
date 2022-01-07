; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_set_addr_20.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_set_addr_20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_addrf = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.nvme_nvm_id20_addrf = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_addrf*, %struct.nvme_nvm_id20_addrf*)* @nvme_nvm_set_addr_20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_nvm_set_addr_20(%struct.nvm_addrf* %0, %struct.nvme_nvm_id20_addrf* %1) #0 {
  %3 = alloca %struct.nvm_addrf*, align 8
  %4 = alloca %struct.nvme_nvm_id20_addrf*, align 8
  store %struct.nvm_addrf* %0, %struct.nvm_addrf** %3, align 8
  store %struct.nvme_nvm_id20_addrf* %1, %struct.nvme_nvm_id20_addrf** %4, align 8
  %5 = load %struct.nvme_nvm_id20_addrf*, %struct.nvme_nvm_id20_addrf** %4, align 8
  %6 = getelementptr inbounds %struct.nvme_nvm_id20_addrf, %struct.nvme_nvm_id20_addrf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %9 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.nvme_nvm_id20_addrf*, %struct.nvme_nvm_id20_addrf** %4, align 8
  %11 = getelementptr inbounds %struct.nvme_nvm_id20_addrf, %struct.nvme_nvm_id20_addrf* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %14 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load %struct.nvme_nvm_id20_addrf*, %struct.nvme_nvm_id20_addrf** %4, align 8
  %16 = getelementptr inbounds %struct.nvme_nvm_id20_addrf, %struct.nvme_nvm_id20_addrf* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %19 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.nvme_nvm_id20_addrf*, %struct.nvme_nvm_id20_addrf** %4, align 8
  %21 = getelementptr inbounds %struct.nvme_nvm_id20_addrf, %struct.nvme_nvm_id20_addrf* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %24 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %26 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %28 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %31 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %30, i32 0, i32 5
  store i64 %29, i64* %31, align 8
  %32 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %33 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %36 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  %39 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %40 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %39, i32 0, i32 6
  store i64 %38, i64* %40, align 8
  %41 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %42 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %45 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %49 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %48, i32 0, i32 7
  store i64 %47, i64* %49, align 8
  %50 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %51 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = shl i64 1, %52
  %54 = sub i64 %53, 1
  %55 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %56 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = shl i64 %54, %57
  %59 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %60 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %59, i32 0, i32 8
  store i64 %58, i64* %60, align 8
  %61 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %62 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = shl i64 1, %63
  %65 = sub i64 %64, 1
  %66 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %67 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = shl i64 %65, %68
  %70 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %71 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %70, i32 0, i32 9
  store i64 %69, i64* %71, align 8
  %72 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %73 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = shl i64 1, %74
  %76 = sub i64 %75, 1
  %77 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %78 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = shl i64 %76, %79
  %81 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %82 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %81, i32 0, i32 10
  store i64 %80, i64* %82, align 8
  %83 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %84 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = shl i64 1, %85
  %87 = sub i64 %86, 1
  %88 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %89 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = shl i64 %87, %90
  %92 = load %struct.nvm_addrf*, %struct.nvm_addrf** %3, align 8
  %93 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %92, i32 0, i32 11
  store i64 %91, i64* %93, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
