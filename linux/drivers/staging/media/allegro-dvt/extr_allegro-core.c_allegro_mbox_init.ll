; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mbox_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_mbox_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32 }
%struct.allegro_mbox = type { i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, %struct.allegro_mbox*, i32, i64)* @allegro_mbox_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_mbox_init(%struct.allegro_dev* %0, %struct.allegro_mbox* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.allegro_dev*, align 8
  %7 = alloca %struct.allegro_mbox*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %6, align 8
  store %struct.allegro_mbox* %1, %struct.allegro_mbox** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %11 = icmp ne %struct.allegro_mbox* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %47

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %18 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add i32 %19, 4
  %21 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %22 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add i32 %23, 8
  %25 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %26 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %29 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  %30 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %31 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %30, i32 0, i32 4
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %34 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %37 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @regmap_write(i32 %35, i32 %38, i32 0)
  %40 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %41 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.allegro_mbox*, %struct.allegro_mbox** %7, align 8
  %44 = getelementptr inbounds %struct.allegro_mbox, %struct.allegro_mbox* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regmap_write(i32 %42, i32 %45, i32 0)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %15, %12
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
