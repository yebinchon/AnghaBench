; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_drop_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_drop_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i64)* @btrfs_drop_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_drop_pages(%struct.page** %0, i64 %1) #0 {
  %3 = alloca %struct.page**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.page** %0, %struct.page*** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %26, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load %struct.page**, %struct.page*** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.page*, %struct.page** %11, i64 %12
  %14 = load %struct.page*, %struct.page** %13, align 8
  %15 = call i32 @ClearPageChecked(%struct.page* %14)
  %16 = load %struct.page**, %struct.page*** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.page*, %struct.page** %16, i64 %17
  %19 = load %struct.page*, %struct.page** %18, align 8
  %20 = call i32 @unlock_page(%struct.page* %19)
  %21 = load %struct.page**, %struct.page*** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.page*, %struct.page** %21, i64 %22
  %24 = load %struct.page*, %struct.page** %23, align 8
  %25 = call i32 @put_page(%struct.page* %24)
  br label %26

26:                                               ; preds = %10
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %6

29:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
