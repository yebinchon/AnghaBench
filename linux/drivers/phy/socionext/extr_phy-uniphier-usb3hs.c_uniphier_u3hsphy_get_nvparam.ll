; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_get_nvparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_get_nvparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_u3hsphy_priv = type { i32 }
%struct.nvmem_cell = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_u3hsphy_priv*, i8*, i32*)* @uniphier_u3hsphy_get_nvparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_u3hsphy_get_nvparam(%struct.uniphier_u3hsphy_priv* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uniphier_u3hsphy_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nvmem_cell*, align 8
  %9 = alloca i32*, align 8
  store %struct.uniphier_u3hsphy_priv* %0, %struct.uniphier_u3hsphy_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %5, align 8
  %11 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32* @devm_nvmem_cell_get(i32 %12, i8* %13)
  %15 = bitcast i32* %14 to %struct.nvmem_cell*
  store %struct.nvmem_cell* %15, %struct.nvmem_cell** %8, align 8
  %16 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %17 = bitcast %struct.nvmem_cell* %16 to i32*
  %18 = call i64 @IS_ERR(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %22 = bitcast %struct.nvmem_cell* %21 to i32*
  %23 = call i32 @PTR_ERR(i32* %22)
  store i32 %23, i32* %4, align 4
  br label %40

24:                                               ; preds = %3
  %25 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %26 = bitcast %struct.nvmem_cell* %25 to i32*
  %27 = call i32* @nvmem_cell_read(i32* %26, i32* null)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @IS_ERR(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @PTR_ERR(i32* %32)
  store i32 %33, i32* %4, align 4
  br label %40

34:                                               ; preds = %24
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @kfree(i32* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %34, %31, %20
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32* @devm_nvmem_cell_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @nvmem_cell_read(i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
