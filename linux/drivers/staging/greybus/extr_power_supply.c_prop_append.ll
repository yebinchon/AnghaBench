; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_prop_append.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_prop_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_power_supply*, i32)* @prop_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prop_append(%struct.gb_power_supply* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_power_supply*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %7 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 8
  %10 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %11 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %14 = call i32 @total_props(%struct.gb_power_supply* %13)
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @krealloc(i32* %12, i32 %17, i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %36

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %26 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %29 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %32 = call i32 @total_props(%struct.gb_power_supply* %31)
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32 %27, i32* %35, align 4
  br label %36

36:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32* @krealloc(i32*, i32, i32) #1

declare dso_local i32 @total_props(%struct.gb_power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
