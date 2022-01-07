; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_f_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_f_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_dir = type { i32, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adfs_dir*)* @adfs_f_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adfs_f_free(%struct.adfs_dir* %0) #0 {
  %2 = alloca %struct.adfs_dir*, align 8
  %3 = alloca i32, align 4
  store %struct.adfs_dir* %0, %struct.adfs_dir** %2, align 8
  %4 = load %struct.adfs_dir*, %struct.adfs_dir** %2, align 8
  %5 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load %struct.adfs_dir*, %struct.adfs_dir** %2, align 8
  %13 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %12, i32 0, i32 2
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @brelse(i32* %18)
  %20 = load %struct.adfs_dir*, %struct.adfs_dir** %2, align 8
  %21 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %3, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.adfs_dir*, %struct.adfs_dir** %2, align 8
  %31 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.adfs_dir*, %struct.adfs_dir** %2, align 8
  %33 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
