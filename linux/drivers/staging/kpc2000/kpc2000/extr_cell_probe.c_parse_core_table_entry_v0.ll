; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_cell_probe.c_parse_core_table_entry_v0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_cell_probe.c_parse_core_table_entry_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_table_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.core_table_entry*, i32)* @parse_core_table_entry_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_core_table_entry_v0(%struct.core_table_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.core_table_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.core_table_entry* %0, %struct.core_table_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = and i64 %6, -4503599627370496
  %8 = lshr i64 %7, 52
  %9 = trunc i64 %8 to i32
  %10 = load %struct.core_table_entry*, %struct.core_table_entry** %3, align 8
  %11 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 4294901760
  %15 = lshr i64 %14, 16
  %16 = mul i64 %15, 4096
  %17 = trunc i64 %16 to i32
  %18 = load %struct.core_table_entry*, %struct.core_table_entry** %3, align 8
  %19 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = and i64 %21, 281470681743360
  %23 = lshr i64 %22, 32
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.core_table_entry*, %struct.core_table_entry** %3, align 8
  %27 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 2251799813685248
  %31 = lshr i64 %30, 51
  %32 = trunc i64 %31 to i32
  %33 = load %struct.core_table_entry*, %struct.core_table_entry** %3, align 8
  %34 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = and i64 %36, 1970324836974592
  %38 = lshr i64 %37, 48
  %39 = trunc i64 %38 to i32
  %40 = load %struct.core_table_entry*, %struct.core_table_entry** %3, align 8
  %41 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = and i64 %43, 32768
  %45 = lshr i64 %44, 15
  %46 = trunc i64 %45 to i32
  %47 = load %struct.core_table_entry*, %struct.core_table_entry** %3, align 8
  %48 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = and i64 %50, 28672
  %52 = lshr i64 %51, 12
  %53 = trunc i64 %52 to i32
  %54 = load %struct.core_table_entry*, %struct.core_table_entry** %3, align 8
  %55 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = and i64 %57, 3072
  %59 = lshr i64 %58, 10
  %60 = trunc i64 %59 to i32
  %61 = load %struct.core_table_entry*, %struct.core_table_entry** %3, align 8
  %62 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %64, 1016
  %66 = lshr i64 %65, 3
  %67 = trunc i64 %66 to i32
  %68 = load %struct.core_table_entry*, %struct.core_table_entry** %3, align 8
  %69 = getelementptr inbounds %struct.core_table_entry, %struct.core_table_entry* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
