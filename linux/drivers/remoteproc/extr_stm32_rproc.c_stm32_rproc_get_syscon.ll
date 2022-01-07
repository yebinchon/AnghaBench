; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_get_syscon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_stm32_rproc.c_stm32_rproc_get_syscon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.stm32_syscon = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i8*, %struct.stm32_syscon*)* @stm32_rproc_get_syscon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rproc_get_syscon(%struct.device_node* %0, i8* %1, %struct.stm32_syscon* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_syscon*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.stm32_syscon* %2, %struct.stm32_syscon** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32* @syscon_regmap_lookup_by_phandle(%struct.device_node* %8, i8* %9)
  %11 = load %struct.stm32_syscon*, %struct.stm32_syscon** %6, align 8
  %12 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %11, i32 0, i32 2
  store i32* %10, i32** %12, align 8
  %13 = load %struct.stm32_syscon*, %struct.stm32_syscon** %6, align 8
  %14 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @IS_ERR(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.stm32_syscon*, %struct.stm32_syscon** %6, align 8
  %20 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @PTR_ERR(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.stm32_syscon*, %struct.stm32_syscon** %6, align 8
  %24 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  br label %40

25:                                               ; preds = %3
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.stm32_syscon*, %struct.stm32_syscon** %6, align 8
  %29 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %28, i32 0, i32 1
  %30 = call i32 @of_property_read_u32_index(%struct.device_node* %26, i8* %27, i32 1, i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %40

34:                                               ; preds = %25
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.stm32_syscon*, %struct.stm32_syscon** %6, align 8
  %38 = getelementptr inbounds %struct.stm32_syscon, %struct.stm32_syscon* %37, i32 0, i32 0
  %39 = call i32 @of_property_read_u32_index(%struct.device_node* %35, i8* %36, i32 2, i32* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %33, %18
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
