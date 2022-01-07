; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_light_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_light_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_light = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_light*)* @gb_lights_light_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_light_register(%struct.gb_light* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_light*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gb_light* %0, %struct.gb_light** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.gb_light*, %struct.gb_light** %3, align 8
  %9 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = load %struct.gb_light*, %struct.gb_light** %3, align 8
  %14 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = call i32 @gb_lights_channel_register(%struct.TYPE_2__* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %12
  %25 = load %struct.gb_light*, %struct.gb_light** %3, align 8
  %26 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_init(i32* %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load %struct.gb_light*, %struct.gb_light** %3, align 8
  %38 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.gb_light*, %struct.gb_light** %3, align 8
  %40 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.gb_light*, %struct.gb_light** %3, align 8
  %45 = call i32 @gb_lights_light_v4l2_register(%struct.gb_light* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.gb_light*, %struct.gb_light** %3, align 8
  %50 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %36
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %48, %22
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @gb_lights_channel_register(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gb_lights_light_v4l2_register(%struct.gb_light*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
