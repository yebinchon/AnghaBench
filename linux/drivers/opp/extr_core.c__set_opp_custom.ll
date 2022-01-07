; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__set_opp_custom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__set_opp_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32, i32 (%struct.dev_pm_set_opp_data*)*, i32, i32, %struct.dev_pm_set_opp_data.0* }
%struct.dev_pm_set_opp_data = type opaque
%struct.dev_pm_set_opp_data.0 = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.device*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.device = type { i32 }
%struct.dev_pm_opp_supply = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opp_table*, %struct.device*, i64, i64, %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply*)* @_set_opp_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_set_opp_custom(%struct.opp_table* %0, %struct.device* %1, i64 %2, i64 %3, %struct.dev_pm_opp_supply* %4, %struct.dev_pm_opp_supply* %5) #0 {
  %7 = alloca %struct.opp_table*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dev_pm_opp_supply*, align 8
  %12 = alloca %struct.dev_pm_opp_supply*, align 8
  %13 = alloca %struct.dev_pm_set_opp_data.0*, align 8
  %14 = alloca i32, align 4
  store %struct.opp_table* %0, %struct.opp_table** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.dev_pm_opp_supply* %4, %struct.dev_pm_opp_supply** %11, align 8
  store %struct.dev_pm_opp_supply* %5, %struct.dev_pm_opp_supply** %12, align 8
  %15 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %16 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %15, i32 0, i32 4
  %17 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %16, align 8
  store %struct.dev_pm_set_opp_data.0* %17, %struct.dev_pm_set_opp_data.0** %13, align 8
  %18 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %19 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %13, align 8
  %22 = getelementptr inbounds %struct.dev_pm_set_opp_data.0, %struct.dev_pm_set_opp_data.0* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %24 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %13, align 8
  %27 = getelementptr inbounds %struct.dev_pm_set_opp_data.0, %struct.dev_pm_set_opp_data.0* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %29 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %13, align 8
  %32 = getelementptr inbounds %struct.dev_pm_set_opp_data.0, %struct.dev_pm_set_opp_data.0* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %13, align 8
  %35 = getelementptr inbounds %struct.dev_pm_set_opp_data.0, %struct.dev_pm_set_opp_data.0* %34, i32 0, i32 3
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %13, align 8
  %38 = getelementptr inbounds %struct.dev_pm_set_opp_data.0, %struct.dev_pm_set_opp_data.0* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %41 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %14, align 4
  %46 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %11, align 8
  %47 = icmp ne %struct.dev_pm_opp_supply* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %6
  %49 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %13, align 8
  %50 = getelementptr inbounds %struct.dev_pm_set_opp_data.0, %struct.dev_pm_set_opp_data.0* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @memset(i32 %52, i32 0, i32 %53)
  br label %63

55:                                               ; preds = %6
  %56 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %13, align 8
  %57 = getelementptr inbounds %struct.dev_pm_set_opp_data.0, %struct.dev_pm_set_opp_data.0* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %11, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @memcpy(i32 %59, %struct.dev_pm_opp_supply* %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %48
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %13, align 8
  %66 = getelementptr inbounds %struct.dev_pm_set_opp_data.0, %struct.dev_pm_set_opp_data.0* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %13, align 8
  %69 = getelementptr inbounds %struct.dev_pm_set_opp_data.0, %struct.dev_pm_set_opp_data.0* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %12, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @memcpy(i32 %71, %struct.dev_pm_opp_supply* %72, i32 %73)
  %75 = load %struct.opp_table*, %struct.opp_table** %7, align 8
  %76 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %75, i32 0, i32 1
  %77 = load i32 (%struct.dev_pm_set_opp_data*)*, i32 (%struct.dev_pm_set_opp_data*)** %76, align 8
  %78 = load %struct.dev_pm_set_opp_data.0*, %struct.dev_pm_set_opp_data.0** %13, align 8
  %79 = bitcast %struct.dev_pm_set_opp_data.0* %78 to %struct.dev_pm_set_opp_data*
  %80 = call i32 %77(%struct.dev_pm_set_opp_data* %79)
  ret i32 %80
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.dev_pm_opp_supply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
