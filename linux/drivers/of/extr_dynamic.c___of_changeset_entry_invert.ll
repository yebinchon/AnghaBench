; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_changeset_entry_invert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_changeset_entry_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_changeset_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.of_changeset_entry*, %struct.of_changeset_entry*)* @__of_changeset_entry_invert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__of_changeset_entry_invert(%struct.of_changeset_entry* %0, %struct.of_changeset_entry* %1) #0 {
  %3 = alloca %struct.of_changeset_entry*, align 8
  %4 = alloca %struct.of_changeset_entry*, align 8
  store %struct.of_changeset_entry* %0, %struct.of_changeset_entry** %3, align 8
  store %struct.of_changeset_entry* %1, %struct.of_changeset_entry** %4, align 8
  %5 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %4, align 8
  %6 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %7 = call i32 @memcpy(%struct.of_changeset_entry* %5, %struct.of_changeset_entry* %6, i32 12)
  %8 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %9 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %47 [
    i32 131, label %11
    i32 130, label %14
    i32 132, label %17
    i32 129, label %20
    i32 128, label %23
  ]

11:                                               ; preds = %2
  %12 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %4, align 8
  %13 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %12, i32 0, i32 0
  store i32 130, i32* %13, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %4, align 8
  %16 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %15, i32 0, i32 0
  store i32 131, i32* %16, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %4, align 8
  %19 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %18, i32 0, i32 0
  store i32 129, i32* %19, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %4, align 8
  %22 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %21, i32 0, i32 0
  store i32 132, i32* %22, align 4
  br label %47

23:                                               ; preds = %2
  %24 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %25 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %4, align 8
  %28 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %30 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %4, align 8
  %33 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %4, align 8
  %35 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %23
  %39 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %4, align 8
  %40 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %39, i32 0, i32 0
  store i32 129, i32* %40, align 4
  %41 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %3, align 8
  %42 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %4, align 8
  %45 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %23
  br label %47

47:                                               ; preds = %2, %46, %20, %17, %14, %11
  ret void
}

declare dso_local i32 @memcpy(%struct.of_changeset_entry*, %struct.of_changeset_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
