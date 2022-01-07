; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_free_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_free_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_entry = type { i32*, i32*, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone_entry*)* @free_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_zone(%struct.zone_entry* %0) #0 {
  %2 = alloca %struct.zone_entry*, align 8
  store %struct.zone_entry* %0, %struct.zone_entry** %2, align 8
  %3 = load %struct.zone_entry*, %struct.zone_entry** %2, align 8
  %4 = icmp ne %struct.zone_entry* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.zone_entry*, %struct.zone_entry** %2, align 8
  %8 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.zone_entry*, %struct.zone_entry** %2, align 8
  %10 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.zone_entry*, %struct.zone_entry** %2, align 8
  %12 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.zone_entry*, %struct.zone_entry** %2, align 8
  %14 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.zone_entry*, %struct.zone_entry** %2, align 8
  %16 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @vfree(i32* %17)
  %19 = load %struct.zone_entry*, %struct.zone_entry** %2, align 8
  %20 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.zone_entry*, %struct.zone_entry** %2, align 8
  %22 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @vfree(i32* %23)
  %25 = load %struct.zone_entry*, %struct.zone_entry** %2, align 8
  %26 = getelementptr inbounds %struct.zone_entry, %struct.zone_entry* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
