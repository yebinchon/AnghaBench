; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_dir_changed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_dir_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i64)* @dir_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_changed(%struct.send_ctx* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @get_inode_info(i32 %11, i64 %12, i32* null, i64* %7, i32* null, i32* null, i32* null, i32* null)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @get_inode_info(i32 %21, i64 %22, i32* null, i64* %6, i32* null, i32* null, i32* null, i32* null)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %18
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %26, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @get_inode_info(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
