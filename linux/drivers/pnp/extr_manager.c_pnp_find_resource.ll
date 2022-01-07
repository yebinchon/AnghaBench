; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_manager.c_pnp_find_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_manager.c_pnp_find_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i8 }
%struct.pnp_dev = type { i32 }

@IORESOURCE_BITS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.pnp_dev*, i8, i64, i32)* @pnp_find_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @pnp_find_resource(%struct.pnp_dev* %0, i8 zeroext %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store i8 %1, i8* %6, align 1
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %10, i64 %11, i32 %12)
  store %struct.resource* %13, %struct.resource** %9, align 8
  %14 = load %struct.resource*, %struct.resource** %9, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = load i8, i8* @IORESOURCE_BITS, align 1
  %18 = zext i8 %17 to i32
  %19 = xor i32 %18, -1
  %20 = load %struct.resource*, %struct.resource** %9, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, %19
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %21, align 1
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @IORESOURCE_BITS, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = load %struct.resource*, %struct.resource** %9, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %30
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  br label %37

37:                                               ; preds = %16, %4
  %38 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %38
}

declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
