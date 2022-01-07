; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_create_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_create_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_lights = type { i32, i32, i32, %struct.gb_connection* }
%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Fail to configure lights device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_lights*)* @gb_lights_create_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_create_all(%struct.gb_lights* %0) #0 {
  %2 = alloca %struct.gb_lights*, align 8
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gb_lights* %0, %struct.gb_lights** %2, align 8
  %6 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %7 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %6, i32 0, i32 3
  %8 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  store %struct.gb_connection* %8, %struct.gb_connection** %3, align 8
  %9 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %10 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %13 = call i32 @gb_lights_get_count(%struct.gb_lights* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %56

17:                                               ; preds = %1
  %18 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %19 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kcalloc(i32 %20, i32 4, i32 %21)
  %23 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %24 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %26 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %36 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @gb_lights_light_config(%struct.gb_lights* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %47 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %56

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %45, %29, %16
  %57 = load %struct.gb_lights*, %struct.gb_lights** %2, align 8
  %58 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_lights_get_count(%struct.gb_lights*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @gb_lights_light_config(%struct.gb_lights*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
