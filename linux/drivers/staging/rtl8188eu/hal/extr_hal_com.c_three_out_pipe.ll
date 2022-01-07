; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal_com.c_three_out_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal_com.c_three_out_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.dvobj_priv = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @three_out_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @three_out_pipe(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvobj_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %6)
  store %struct.dvobj_priv* %7, %struct.dvobj_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %83

10:                                               ; preds = %2
  %11 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %12 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %17 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %21 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %26 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %24, i32* %28, align 4
  %29 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %30 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %35 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %33, i32* %37, align 4
  %38 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %39 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %44 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 %42, i32* %46, align 4
  %47 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %48 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %53 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %51, i32* %55, align 4
  %56 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %57 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %62 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  store i32 %60, i32* %64, align 4
  %65 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %66 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %71 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  store i32 %69, i32* %73, align 4
  %74 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %75 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %80 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  store i32 %78, i32* %82, align 4
  br label %156

83:                                               ; preds = %2
  %84 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %85 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %90 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %92, align 4
  %93 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %94 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %99 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %97, i32* %101, align 4
  %102 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %103 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %108 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  store i32 %106, i32* %110, align 4
  %111 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %112 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %117 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  store i32 %115, i32* %119, align 4
  %120 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %121 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %126 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  store i32 %124, i32* %128, align 4
  %129 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %130 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %135 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 5
  store i32 %133, i32* %137, align 4
  %138 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %139 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %144 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 6
  store i32 %142, i32* %146, align 4
  %147 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %148 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %153 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 7
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %83, %10
  ret void
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
