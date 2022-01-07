; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_map_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_map_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i32 }

@MAP_ENT_NORMAL = common dso_local global i32 0, align 4
@MAP_ERR_SHIFT = common dso_local global i32 0, align 4
@MAP_TRIM_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid use of Z and E flags\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*, i32, i32, i32, i32, i64)* @btt_map_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btt_map_write(%struct.arena_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.arena_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.arena_info* %0, %struct.arena_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @ent_lba(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = shl i32 %18, 1
  %20 = load i32, i32* %12, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  switch i32 %22, label %37 [
    i32 0, label %23
    i32 1, label %27
    i32 2, label %32
  ]

23:                                               ; preds = %6
  %24 = load i32, i32* @MAP_ENT_NORMAL, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %43

27:                                               ; preds = %6
  %28 = load i32, i32* @MAP_ERR_SHIFT, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %43

32:                                               ; preds = %6
  %33 = load i32, i32* @MAP_TRIM_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  br label %43

37:                                               ; preds = %6
  %38 = load %struct.arena_info*, %struct.arena_info** %8, align 8
  %39 = call i32 @to_dev(%struct.arena_info* %38)
  %40 = call i32 @dev_err_ratelimited(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %51

43:                                               ; preds = %32, %27, %23
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load %struct.arena_info*, %struct.arena_info** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @__btt_map_write(%struct.arena_info* %46, i32 %47, i32 %48, i64 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %43, %37
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @ent_lba(i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @to_dev(%struct.arena_info*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @__btt_map_write(%struct.arena_info*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
