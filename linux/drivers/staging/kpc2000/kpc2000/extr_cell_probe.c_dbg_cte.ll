; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_cell_probe.c_dbg_cte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_cell_probe.c_dbg_cte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kp2000_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.core_table_entry = type { i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [94 x i8] c"CTE: type:%3d  offset:%3d (%3d)  length:%3d (%3d)  s2c:%d  c2s:%d  irq_count:%d  base_irq:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kp2000_device*, %struct.core_table_entry*)* @dbg_cte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_cte(%struct.kp2000_device* %0, %struct.core_table_entry* %1) #0 {
  %3 = alloca %struct.kp2000_device*, align 8
  %4 = alloca %struct.core_table_entry*, align 8
  store %struct.kp2000_device* %0, %struct.kp2000_device** %3, align 8
  store %struct.core_table_entry* %1, %struct.core_table_entry** %4, align 8
  %5 = load %struct.kp2000_device*, %struct.kp2000_device** %3, align 8
  %6 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %10 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %13 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %16 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 4096
  %19 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %20 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %23 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 8
  %26 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %27 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %32 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ -1, %34 ]
  %37 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %38 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %43 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ -1, %45 ]
  %48 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %49 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.core_table_entry*, %struct.core_table_entry** %4, align 8
  %52 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %18, i32 %21, i32 %25, i32 %36, i32 %47, i32 %50, i32 %53)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
