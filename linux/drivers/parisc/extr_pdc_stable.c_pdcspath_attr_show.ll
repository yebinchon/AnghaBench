; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcspath_attr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcspath_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.pdcspath_entry = type { i32 }
%struct.pdcspath_attribute = type { i32 (%struct.pdcspath_entry*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @pdcspath_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdcspath_attr_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pdcspath_entry*, align 8
  %8 = alloca %struct.pdcspath_attribute*, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.kobject*, %struct.kobject** %4, align 8
  %11 = call %struct.pdcspath_entry* @to_pdcspath_entry(%struct.kobject* %10)
  store %struct.pdcspath_entry* %11, %struct.pdcspath_entry** %7, align 8
  %12 = load %struct.attribute*, %struct.attribute** %5, align 8
  %13 = call %struct.pdcspath_attribute* @to_pdcspath_attribute(%struct.attribute* %12)
  store %struct.pdcspath_attribute* %13, %struct.pdcspath_attribute** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.pdcspath_attribute*, %struct.pdcspath_attribute** %8, align 8
  %15 = getelementptr inbounds %struct.pdcspath_attribute, %struct.pdcspath_attribute* %14, i32 0, i32 0
  %16 = load i32 (%struct.pdcspath_entry*, i8*)*, i32 (%struct.pdcspath_entry*, i8*)** %15, align 8
  %17 = icmp ne i32 (%struct.pdcspath_entry*, i8*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.pdcspath_attribute*, %struct.pdcspath_attribute** %8, align 8
  %20 = getelementptr inbounds %struct.pdcspath_attribute, %struct.pdcspath_attribute* %19, i32 0, i32 0
  %21 = load i32 (%struct.pdcspath_entry*, i8*)*, i32 (%struct.pdcspath_entry*, i8*)** %20, align 8
  %22 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 %21(%struct.pdcspath_entry* %22, i8* %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %18, %3
  %26 = load i32, i32* %9, align 4
  ret i32 %26
}

declare dso_local %struct.pdcspath_entry* @to_pdcspath_entry(%struct.kobject*) #1

declare dso_local %struct.pdcspath_attribute* @to_pdcspath_attribute(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
