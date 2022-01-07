; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticon.c_sticon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticon.c_sticon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32 }
%struct.vc_data = type { i32, i32, i32 }

@sticon_sti = common dso_local global %struct.sti_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @sticon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sticon_init(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sti_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sti_struct*, %struct.sti_struct** @sticon_sti, align 8
  store %struct.sti_struct* %8, %struct.sti_struct** %5, align 8
  %9 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %10 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %11 = call i32 @sti_onscreen_y(%struct.sti_struct* %10)
  %12 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %13 = call i32 @sti_onscreen_x(%struct.sti_struct* %12)
  %14 = call i32 @sti_set(%struct.sti_struct* %9, i32 0, i32 0, i32 %11, i32 %13, i32 0)
  %15 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %16 = call i32 @sti_onscreen_x(%struct.sti_struct* %15)
  %17 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %18 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %22 = call i32 @sti_onscreen_y(%struct.sti_struct* %21)
  %23 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %24 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %43

38:                                               ; preds = %2
  %39 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @vc_resize(%struct.vc_data* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @sti_set(%struct.sti_struct*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sti_onscreen_y(%struct.sti_struct*) #1

declare dso_local i32 @sti_onscreen_x(%struct.sti_struct*) #1

declare dso_local i32 @vc_resize(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
