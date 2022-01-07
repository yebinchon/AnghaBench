; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_mem_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_mem_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"couldn't allocate target memory map\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"couldn't retrieve firmware memory map\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_hw_init_mem_config(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %5 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %6 = call i32 @wl1251_acx_mem_cfg(%struct.wl1251* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kzalloc(i32 4, i32 %12)
  %14 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %15 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %17 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %11
  %21 = call i32 @wl1251_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %11
  %25 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %26 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %27 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @wl1251_acx_mem_map(%struct.wl1251* %25, i32* %28, i32 4)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = call i32 @wl1251_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %35 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kfree(i32* %36)
  %38 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %39 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %32, %20, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @wl1251_acx_mem_cfg(%struct.wl1251*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @wl1251_acx_mem_map(%struct.wl1251*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
