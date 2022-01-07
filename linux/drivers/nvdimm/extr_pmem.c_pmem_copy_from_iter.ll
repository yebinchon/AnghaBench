; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_pmem_copy_from_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_pmem_copy_from_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_device = type { i32 }
%struct.iov_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dax_device*, i32, i8*, i64, %struct.iov_iter*)* @pmem_copy_from_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmem_copy_from_iter(%struct.dax_device* %0, i32 %1, i8* %2, i64 %3, %struct.iov_iter* %4) #0 {
  %6 = alloca %struct.dax_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iov_iter*, align 8
  store %struct.dax_device* %0, %struct.dax_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.iov_iter* %4, %struct.iov_iter** %10, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %14 = call i64 @_copy_from_iter_flushcache(i8* %11, i64 %12, %struct.iov_iter* %13)
  ret i64 %14
}

declare dso_local i64 @_copy_from_iter_flushcache(i8*, i64, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
