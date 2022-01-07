; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_light_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_light_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_light = type { i32, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_light*)* @gb_lights_light_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_lights_light_release(%struct.gb_light* %0) #0 {
  %2 = alloca %struct.gb_light*, align 8
  %3 = alloca i32, align 4
  store %struct.gb_light* %0, %struct.gb_light** %2, align 8
  %4 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %5 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %7 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %12 = call i32 @gb_lights_light_v4l2_unregister(%struct.gb_light* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %15 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %30, %13
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %19 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %24 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @gb_lights_channel_release(i32* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %35 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %37 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %41 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %43 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kfree(i32* %44)
  %46 = load %struct.gb_light*, %struct.gb_light** %2, align 8
  %47 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  ret void
}

declare dso_local i32 @gb_lights_light_v4l2_unregister(%struct.gb_light*) #1

declare dso_local i32 @gb_lights_channel_release(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
