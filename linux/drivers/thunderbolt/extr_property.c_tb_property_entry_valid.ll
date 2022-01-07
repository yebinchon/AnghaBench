; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_property.c_tb_property_entry_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_property.c_tb_property_entry_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_property_entry = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_property_entry*, i64)* @tb_property_entry_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_property_entry_valid(%struct.tb_property_entry* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_property_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.tb_property_entry* %0, %struct.tb_property_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.tb_property_entry*, %struct.tb_property_entry** %4, align 8
  %7 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %35 [
    i32 130, label %9
    i32 131, label %9
    i32 129, label %9
    i32 128, label %28
  ]

9:                                                ; preds = %2, %2, %2
  %10 = load %struct.tb_property_entry*, %struct.tb_property_entry** %4, align 8
  %11 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %36

16:                                               ; preds = %9
  %17 = load %struct.tb_property_entry*, %struct.tb_property_entry** %4, align 8
  %18 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tb_property_entry*, %struct.tb_property_entry** %4, align 8
  %21 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %36

27:                                               ; preds = %16
  br label %35

28:                                               ; preds = %2
  %29 = load %struct.tb_property_entry*, %struct.tb_property_entry** %4, align 8
  %30 = getelementptr inbounds %struct.tb_property_entry, %struct.tb_property_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %36

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %2, %34, %27
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %26, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
