; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_get_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_get_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32 }

@sticore_initialized = common dso_local global i32 0, align 4
@default_sti = common dso_local global %struct.sti_struct* null, align 8
@num_sti_roms = common dso_local global i32 0, align 4
@sti_roms = common dso_local global %struct.sti_struct** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sti_struct* @sti_get_rom(i32 %0) #0 {
  %2 = alloca %struct.sti_struct*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @sticore_initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @sti_init_roms()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load %struct.sti_struct*, %struct.sti_struct** @default_sti, align 8
  store %struct.sti_struct* %12, %struct.sti_struct** %2, align 8
  br label %25

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @num_sti_roms, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.sti_struct* null, %struct.sti_struct** %2, align 8
  br label %25

18:                                               ; preds = %13
  %19 = load %struct.sti_struct**, %struct.sti_struct*** @sti_roms, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sub i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sti_struct*, %struct.sti_struct** %19, i64 %22
  %24 = load %struct.sti_struct*, %struct.sti_struct** %23, align 8
  store %struct.sti_struct* %24, %struct.sti_struct** %2, align 8
  br label %25

25:                                               ; preds = %18, %17, %11
  %26 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  ret %struct.sti_struct* %26
}

declare dso_local i32 @sti_init_roms(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
