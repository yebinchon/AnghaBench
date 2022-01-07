; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_free_alloc_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_free_alloc_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i32, i32*, i32 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_alloc_bitmap(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.fs_info_t* %7, %struct.fs_info_t** %4, align 8
  %8 = load %struct.fs_info_t*, %struct.fs_info_t** %4, align 8
  %9 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @brelse(i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.fs_info_t*, %struct.fs_info_t** %4, align 8
  %15 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.fs_info_t*, %struct.fs_info_t** %4, align 8
  %20 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__brelse(i32 %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.fs_info_t*, %struct.fs_info_t** %4, align 8
  %32 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.fs_info_t*, %struct.fs_info_t** %4, align 8
  %36 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @__brelse(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
