; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_lights = type { i32, i32, %struct.gb_lights* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_lights*)* @gb_lights_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_lights_release(%struct.gb_lights* %0) #0 {
  %2 = alloca %struct.gb_lights*, align 8
  %3 = alloca i32, align 4
  store %struct.gb_lights* %0, %struct.gb_lights** %2, align 8
  %4 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %5 = icmp ne %struct.gb_lights* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %48

7:                                                ; preds = %1
  %8 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %9 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %12 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %11, i32 0, i32 2
  %13 = load %struct.gb_lights*, %struct.gb_lights** %12, align 8
  %14 = icmp ne %struct.gb_lights* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  br label %39

16:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %20 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %25 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %24, i32 0, i32 2
  %26 = load %struct.gb_lights*, %struct.gb_lights** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %26, i64 %28
  %30 = call i32 @gb_lights_light_release(%struct.gb_lights* %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %36 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %35, i32 0, i32 2
  %37 = load %struct.gb_lights*, %struct.gb_lights** %36, align 8
  %38 = call i32 @kfree(%struct.gb_lights* %37)
  br label %39

39:                                               ; preds = %34, %15
  %40 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %41 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %44 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %43, i32 0, i32 1
  %45 = call i32 @mutex_destroy(i32* %44)
  %46 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %47 = call i32 @kfree(%struct.gb_lights* %46)
  br label %48

48:                                               ; preds = %39, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_lights_light_release(%struct.gb_lights*) #1

declare dso_local i32 @kfree(%struct.gb_lights*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
