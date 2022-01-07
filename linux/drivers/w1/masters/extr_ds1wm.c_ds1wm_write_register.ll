; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds1wm_data*, i32, i32)* @ds1wm_write_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1wm_write_register(%struct.ds1wm_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ds1wm_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %8 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %3
  %12 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %13 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %42 [
    i32 0, label %15
    i32 1, label %24
    i32 2, label %33
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %18 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 0
  %22 = add nsw i32 %19, %21
  %23 = call i32 @iowrite8(i32 %16, i32 %22)
  br label %42

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %27 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 %29, 1
  %31 = add nsw i32 %28, %30
  %32 = call i32 @iowrite16be(i32 %25, i32 %31)
  br label %42

33:                                               ; preds = %11
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %36 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, 2
  %40 = add nsw i32 %37, %39
  %41 = call i32 @iowrite32be(i32 %34, i32 %40)
  br label %42

42:                                               ; preds = %11, %33, %24, %15
  br label %75

43:                                               ; preds = %3
  %44 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %45 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %74 [
    i32 0, label %47
    i32 1, label %56
    i32 2, label %65
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %50 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 %52, 0
  %54 = add nsw i32 %51, %53
  %55 = call i32 @iowrite8(i32 %48, i32 %54)
  br label %74

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %59 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 %61, 1
  %63 = add nsw i32 %60, %62
  %64 = call i32 @iowrite16(i32 %57, i32 %63)
  br label %74

65:                                               ; preds = %43
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %68 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = shl i32 %70, 2
  %72 = add nsw i32 %69, %71
  %73 = call i32 @iowrite32(i32 %66, i32 %72)
  br label %74

74:                                               ; preds = %43, %65, %56, %47
  br label %75

75:                                               ; preds = %74, %42
  ret void
}

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @iowrite16be(i32, i32) #1

declare dso_local i32 @iowrite32be(i32, i32) #1

declare dso_local i32 @iowrite16(i32, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
