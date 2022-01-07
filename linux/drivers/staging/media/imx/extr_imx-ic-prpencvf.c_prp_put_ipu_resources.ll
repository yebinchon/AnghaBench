; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_put_ipu_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_put_ipu_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prp_priv*)* @prp_put_ipu_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prp_put_ipu_resources(%struct.prp_priv* %0) #0 {
  %2 = alloca %struct.prp_priv*, align 8
  store %struct.prp_priv* %0, %struct.prp_priv** %2, align 8
  %3 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %4 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %9 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ipu_ic_put(i32* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %14 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %16 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %21 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @ipu_idmac_put(i32* %22)
  br label %24

24:                                               ; preds = %19, %12
  %25 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %26 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %28 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %33 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ipu_idmac_put(i32* %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %38 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %40 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %45 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @ipu_idmac_put(i32* %46)
  br label %48

48:                                               ; preds = %43, %36
  %49 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %50 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  ret void
}

declare dso_local i32 @ipu_ic_put(i32*) #1

declare dso_local i32 @ipu_idmac_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
