; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_write_data_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_write_data_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_primitive_info = type { i64, i32, i32, i32 }
%struct.rapl_domain = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.reg_action*)* }
%struct.reg_action = type { i32, i32, i32 }

@rpi = common dso_local global %struct.rapl_primitive_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rapl_domain*, i32, i64)* @rapl_write_data_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_write_data_raw(%struct.rapl_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rapl_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rapl_primitive_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.reg_action, align 4
  %11 = alloca i32, align 4
  store %struct.rapl_domain* %0, %struct.rapl_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** @rpi, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %12, i64 %14
  store %struct.rapl_primitive_info* %15, %struct.rapl_primitive_info** %7, align 8
  %16 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %17 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %22 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %7, align 8
  %23 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @rapl_unit_xlate(%struct.rapl_domain* %21, i32 %24, i64 %25, i32 1)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %7, align 8
  %28 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %7, align 8
  %33 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = call i32 @memset(%struct.reg_action* %10, i32 0, i32 12)
  %38 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %39 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %7, align 8
  %42 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %10, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.rapl_primitive_info*, %struct.rapl_primitive_info** %7, align 8
  %48 = getelementptr inbounds %struct.rapl_primitive_info, %struct.rapl_primitive_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %10, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %10, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %54 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (i32, %struct.reg_action*)*, i32 (i32, %struct.reg_action*)** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 %59(i32 %60, %struct.reg_action* %10)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @rapl_unit_xlate(%struct.rapl_domain*, i32, i64, i32) #1

declare dso_local i32 @memset(%struct.reg_action*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
