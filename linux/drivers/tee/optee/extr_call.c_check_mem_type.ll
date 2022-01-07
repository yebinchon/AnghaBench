; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_check_mem_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_call.c_check_mem_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @check_mem_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mem_type(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %5, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = call i32 @down_read(i32* %11)
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @find_vma(%struct.mm_struct* %13, i64 %14)
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = mul i64 %17, %18
  %20 = add i64 %16, %19
  %21 = call i32 @__check_mem_type(i32 %15, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 0
  %24 = call i32 @up_read(i32* %23)
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__check_mem_type(i32, i64) #1

declare dso_local i32 @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
