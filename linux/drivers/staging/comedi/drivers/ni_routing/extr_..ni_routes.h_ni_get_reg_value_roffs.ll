; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/ni_routing/extr_..ni_routes.h_ni_get_reg_value_roffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/ni_routing/extr_..ni_routes.h_ni_get_reg_value_roffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_route_tables = type { i32 }

@NI_NAMES_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ni_route_tables*, i32)* @ni_get_reg_value_roffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_get_reg_value_roffs(i32 %0, i32 %1, %struct.ni_route_tables* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_route_tables*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.ni_route_tables* %2, %struct.ni_route_tables** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NI_NAMES_BASE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ni_route_tables*, %struct.ni_route_tables** %8, align 8
  %20 = call i64 @route_register_is_valid(i32 %17, i32 %18, %struct.ni_route_tables* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %30

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ni_route_tables*, %struct.ni_route_tables** %8, align 8
  %29 = call i32 @ni_route_to_register(i32 %26, i32 %27, %struct.ni_route_tables* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %24, %22
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @route_register_is_valid(i32, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @ni_route_to_register(i32, i32, %struct.ni_route_tables*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
