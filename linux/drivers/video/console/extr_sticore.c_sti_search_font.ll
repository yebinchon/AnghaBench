; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_search_font.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_search_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_cooked_rom = type { %struct.sti_cooked_font* }
%struct.sti_cooked_font = type { %struct.TYPE_2__*, %struct.sti_cooked_font* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_cooked_rom*, i32, i32)* @sti_search_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_search_font(%struct.sti_cooked_rom* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sti_cooked_rom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sti_cooked_font*, align 8
  %9 = alloca i32, align 4
  store %struct.sti_cooked_rom* %0, %struct.sti_cooked_rom** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.sti_cooked_rom*, %struct.sti_cooked_rom** %5, align 8
  %11 = getelementptr inbounds %struct.sti_cooked_rom, %struct.sti_cooked_rom* %10, i32 0, i32 0
  %12 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %11, align 8
  store %struct.sti_cooked_font* %12, %struct.sti_cooked_font** %8, align 8
  br label %13

13:                                               ; preds = %35, %3
  %14 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %15 = icmp ne %struct.sti_cooked_font* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %18 = getelementptr inbounds %struct.sti_cooked_font, %struct.sti_cooked_font* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %26 = getelementptr inbounds %struct.sti_cooked_font, %struct.sti_cooked_font* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %42

34:                                               ; preds = %24, %16
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %37 = getelementptr inbounds %struct.sti_cooked_font, %struct.sti_cooked_font* %36, i32 0, i32 1
  %38 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %37, align 8
  store %struct.sti_cooked_font* %38, %struct.sti_cooked_font** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %13

41:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
