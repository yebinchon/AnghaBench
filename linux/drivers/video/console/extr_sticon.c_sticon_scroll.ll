; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticon.c_sticon_scroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticon.c_sticon_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32 }
%struct.vc_data = type { i32, i32 }

@sticon_sti = common dso_local global %struct.sti_struct* null, align 8
@vga_is_gfx = common dso_local global i64 0, align 8
@CM_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32, i32)* @sticon_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sticon_scroll(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sti_struct*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sti_struct*, %struct.sti_struct** @sticon_sti, align 8
  store %struct.sti_struct* %13, %struct.sti_struct** %12, align 8
  %14 = load i64, i64* @vga_is_gfx, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %75

17:                                               ; preds = %5
  %18 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %19 = load i32, i32* @CM_ERASE, align 4
  %20 = call i32 @sticon_cursor(%struct.vc_data* %18, i32 %19)
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %74 [
    i32 128, label %22
    i32 129, label %49
  ]

22:                                               ; preds = %17
  %23 = load %struct.sti_struct*, %struct.sti_struct** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub i32 %28, %29
  %31 = load i32, i32* %11, align 4
  %32 = sub i32 %30, %31
  %33 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sti_bmove(%struct.sti_struct* %23, i32 %26, i32 0, i32 %27, i32 0, i32 %32, i32 %35)
  %37 = load %struct.sti_struct*, %struct.sti_struct** %12, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sti_clear(%struct.sti_struct* %37, i32 %40, i32 0, i32 %41, i32 %44, i32 %47)
  br label %74

49:                                               ; preds = %17
  %50 = load %struct.sti_struct*, %struct.sti_struct** %12, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub i32 %55, %56
  %58 = load i32, i32* %11, align 4
  %59 = sub i32 %57, %58
  %60 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sti_bmove(%struct.sti_struct* %50, i32 %51, i32 0, i32 %54, i32 0, i32 %59, i32 %62)
  %64 = load %struct.sti_struct*, %struct.sti_struct** %12, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sti_clear(%struct.sti_struct* %64, i32 %65, i32 0, i32 %66, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %17, %49, %22
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %16
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @sticon_cursor(%struct.vc_data*, i32) #1

declare dso_local i32 @sti_bmove(%struct.sti_struct*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sti_clear(%struct.sti_struct*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
