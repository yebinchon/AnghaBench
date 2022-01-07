; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.icm = type { i32 (%struct.tb*)*, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*)* @icm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_start(%struct.tb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.icm*, align 8
  %5 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %3, align 8
  %6 = load %struct.tb*, %struct.tb** %3, align 8
  %7 = call %struct.icm* @tb_priv(%struct.tb* %6)
  store %struct.icm* %7, %struct.icm** %4, align 8
  %8 = load %struct.icm*, %struct.icm** %4, align 8
  %9 = getelementptr inbounds %struct.icm, %struct.icm* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.tb*, %struct.tb** %3, align 8
  %14 = load %struct.tb*, %struct.tb** %3, align 8
  %15 = getelementptr inbounds %struct.tb, %struct.tb* %14, i32 0, i32 1
  %16 = call %struct.TYPE_7__* @tb_switch_alloc_safe_mode(%struct.tb* %13, i32* %15, i32 0)
  %17 = load %struct.tb*, %struct.tb** %3, align 8
  %18 = getelementptr inbounds %struct.tb, %struct.tb* %17, i32 0, i32 0
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %18, align 8
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.tb*, %struct.tb** %3, align 8
  %21 = load %struct.tb*, %struct.tb** %3, align 8
  %22 = getelementptr inbounds %struct.tb, %struct.tb* %21, i32 0, i32 1
  %23 = call %struct.TYPE_7__* @tb_switch_alloc(%struct.tb* %20, i32* %22, i32 0)
  %24 = load %struct.tb*, %struct.tb** %3, align 8
  %25 = getelementptr inbounds %struct.tb, %struct.tb* %24, i32 0, i32 0
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %25, align 8
  br label %26

26:                                               ; preds = %19, %12
  %27 = load %struct.tb*, %struct.tb** %3, align 8
  %28 = getelementptr inbounds %struct.tb, %struct.tb* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = call i64 @IS_ERR(%struct.TYPE_7__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.tb*, %struct.tb** %3, align 8
  %34 = getelementptr inbounds %struct.tb, %struct.tb* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.TYPE_7__* %35)
  store i32 %36, i32* %2, align 4
  br label %81

37:                                               ; preds = %26
  %38 = load %struct.icm*, %struct.icm** %4, align 8
  %39 = getelementptr inbounds %struct.icm, %struct.icm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.tb*, %struct.tb** %3, align 8
  %45 = getelementptr inbounds %struct.tb, %struct.tb* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.icm*, %struct.icm** %4, align 8
  %49 = getelementptr inbounds %struct.icm, %struct.icm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tb*, %struct.tb** %3, align 8
  %52 = getelementptr inbounds %struct.tb, %struct.tb* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load %struct.icm*, %struct.icm** %4, align 8
  %56 = getelementptr inbounds %struct.icm, %struct.icm* %55, i32 0, i32 0
  %57 = load i32 (%struct.tb*)*, i32 (%struct.tb*)** %56, align 8
  %58 = icmp ne i32 (%struct.tb*)* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %37
  %60 = load %struct.icm*, %struct.icm** %4, align 8
  %61 = getelementptr inbounds %struct.icm, %struct.icm* %60, i32 0, i32 0
  %62 = load i32 (%struct.tb*)*, i32 (%struct.tb*)** %61, align 8
  %63 = load %struct.tb*, %struct.tb** %3, align 8
  %64 = call i32 %62(%struct.tb* %63)
  br label %65

65:                                               ; preds = %59, %37
  %66 = load %struct.tb*, %struct.tb** %3, align 8
  %67 = getelementptr inbounds %struct.tb, %struct.tb* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = call i32 @tb_switch_add(%struct.TYPE_7__* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.tb*, %struct.tb** %3, align 8
  %74 = getelementptr inbounds %struct.tb, %struct.tb* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = call i32 @tb_switch_put(%struct.TYPE_7__* %75)
  %77 = load %struct.tb*, %struct.tb** %3, align 8
  %78 = getelementptr inbounds %struct.tb, %struct.tb* %77, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %78, align 8
  br label %79

79:                                               ; preds = %72, %65
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %32
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.icm* @tb_priv(%struct.tb*) #1

declare dso_local %struct.TYPE_7__* @tb_switch_alloc_safe_mode(%struct.tb*, i32*, i32) #1

declare dso_local %struct.TYPE_7__* @tb_switch_alloc(%struct.tb*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @tb_switch_add(%struct.TYPE_7__*) #1

declare dso_local i32 @tb_switch_put(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
