; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i8*, i32*, i32, i32*, i32)* @xgene_phy_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_phy_get_param(%struct.platform_device* %0, i8* %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @of_property_read_u32_array(i32 %17, i8* %18, i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* %12, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, %29
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %24

39:                                               ; preds = %24
  br label %59

40:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %13, align 4
  %48 = srem i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %41

59:                                               ; preds = %39, %41
  ret void
}

declare dso_local i32 @of_property_read_u32_array(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
