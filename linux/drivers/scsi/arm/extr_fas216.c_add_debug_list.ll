; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_add_debug_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_add_debug_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ph_list = common dso_local global %struct.TYPE_2__* null, align 8
@ph_ptr = common dso_local global i64 0, align 8
@PH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @add_debug_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_debug_list(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ph_list, align 8
  %11 = load i64, i64* @ph_ptr, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ph_list, align 8
  %16 = load i64, i64* @ph_ptr, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ph_list, align 8
  %21 = load i64, i64* @ph_ptr, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ph_list, align 8
  %26 = load i64, i64* @ph_ptr, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %24, i32* %28, align 4
  %29 = load i64, i64* @ph_ptr, align 8
  %30 = add i64 %29, 1
  %31 = load i32, i32* @PH_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = and i64 %30, %33
  store i64 %34, i64* @ph_ptr, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
