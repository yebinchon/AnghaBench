; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_writequeue_entry_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_writequeue_entry_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.writequeue_entry = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.writequeue_entry*, i32)* @writequeue_entry_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writequeue_entry_complete(%struct.writequeue_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.writequeue_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.writequeue_entry* %0, %struct.writequeue_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %7 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %13 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %17 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %22 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %27 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %26, i32 0, i32 3
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %30 = call i32 @free_entry(%struct.writequeue_entry* %29)
  br label %31

31:                                               ; preds = %25, %20, %2
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_entry(%struct.writequeue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
