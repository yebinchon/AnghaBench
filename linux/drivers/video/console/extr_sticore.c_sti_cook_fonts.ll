; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_cook_fonts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_cook_fonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_cooked_rom = type { %struct.sti_cooked_font* }
%struct.sti_cooked_font = type { %struct.sti_cooked_font*, %struct.sti_rom_font* }
%struct.sti_rom_font = type { i32 }
%struct.sti_rom = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_cooked_rom*, %struct.sti_rom*)* @sti_cook_fonts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_cook_fonts(%struct.sti_cooked_rom* %0, %struct.sti_rom* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sti_cooked_rom*, align 8
  %5 = alloca %struct.sti_rom*, align 8
  %6 = alloca %struct.sti_rom_font*, align 8
  %7 = alloca %struct.sti_rom_font*, align 8
  %8 = alloca %struct.sti_cooked_font*, align 8
  store %struct.sti_cooked_rom* %0, %struct.sti_cooked_rom** %4, align 8
  store %struct.sti_rom* %1, %struct.sti_rom** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 16, i32 %9)
  %11 = bitcast i8* %10 to %struct.sti_cooked_font*
  store %struct.sti_cooked_font* %11, %struct.sti_cooked_font** %8, align 8
  %12 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %13 = icmp ne %struct.sti_cooked_font* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %17 = load %struct.sti_cooked_rom*, %struct.sti_cooked_rom** %4, align 8
  %18 = getelementptr inbounds %struct.sti_cooked_rom, %struct.sti_cooked_rom* %17, i32 0, i32 0
  store %struct.sti_cooked_font* %16, %struct.sti_cooked_font** %18, align 8
  %19 = load %struct.sti_rom*, %struct.sti_rom** %5, align 8
  %20 = bitcast %struct.sti_rom* %19 to i8*
  %21 = load %struct.sti_rom*, %struct.sti_rom** %5, align 8
  %22 = getelementptr inbounds %struct.sti_rom, %struct.sti_rom* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %20, i64 %24
  %26 = bitcast i8* %25 to %struct.sti_rom_font*
  store %struct.sti_rom_font* %26, %struct.sti_rom_font** %6, align 8
  %27 = load %struct.sti_rom_font*, %struct.sti_rom_font** %6, align 8
  store %struct.sti_rom_font* %27, %struct.sti_rom_font** %7, align 8
  %28 = load %struct.sti_rom_font*, %struct.sti_rom_font** %6, align 8
  %29 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %30 = getelementptr inbounds %struct.sti_cooked_font, %struct.sti_cooked_font* %29, i32 0, i32 1
  store %struct.sti_rom_font* %28, %struct.sti_rom_font** %30, align 8
  br label %31

31:                                               ; preds = %55, %15
  %32 = load %struct.sti_rom_font*, %struct.sti_rom_font** %6, align 8
  %33 = getelementptr inbounds %struct.sti_rom_font, %struct.sti_rom_font* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = load %struct.sti_rom_font*, %struct.sti_rom_font** %7, align 8
  %38 = bitcast %struct.sti_rom_font* %37 to i8*
  %39 = load %struct.sti_rom_font*, %struct.sti_rom_font** %6, align 8
  %40 = getelementptr inbounds %struct.sti_rom_font, %struct.sti_rom_font* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %38, i64 %42
  %44 = bitcast i8* %43 to %struct.sti_rom_font*
  store %struct.sti_rom_font* %44, %struct.sti_rom_font** %6, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kzalloc(i32 16, i32 %45)
  %47 = bitcast i8* %46 to %struct.sti_cooked_font*
  %48 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %49 = getelementptr inbounds %struct.sti_cooked_font, %struct.sti_cooked_font* %48, i32 0, i32 0
  store %struct.sti_cooked_font* %47, %struct.sti_cooked_font** %49, align 8
  %50 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %51 = getelementptr inbounds %struct.sti_cooked_font, %struct.sti_cooked_font* %50, i32 0, i32 0
  %52 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %51, align 8
  %53 = icmp ne %struct.sti_cooked_font* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %65

55:                                               ; preds = %36
  %56 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %57 = getelementptr inbounds %struct.sti_cooked_font, %struct.sti_cooked_font* %56, i32 0, i32 0
  %58 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %57, align 8
  store %struct.sti_cooked_font* %58, %struct.sti_cooked_font** %8, align 8
  %59 = load %struct.sti_rom_font*, %struct.sti_rom_font** %6, align 8
  %60 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %61 = getelementptr inbounds %struct.sti_cooked_font, %struct.sti_cooked_font* %60, i32 0, i32 1
  store %struct.sti_rom_font* %59, %struct.sti_rom_font** %61, align 8
  br label %31

62:                                               ; preds = %31
  %63 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %8, align 8
  %64 = getelementptr inbounds %struct.sti_cooked_font, %struct.sti_cooked_font* %63, i32 0, i32 0
  store %struct.sti_cooked_font* null, %struct.sti_cooked_font** %64, align 8
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %54, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i8* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
