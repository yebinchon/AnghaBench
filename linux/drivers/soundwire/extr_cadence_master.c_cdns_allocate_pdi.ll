; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_allocate_pdi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_allocate_pdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32 }
%struct.sdw_cdns_pdi = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_cdns*, %struct.sdw_cdns_pdi**, i32, i32)* @cdns_allocate_pdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_allocate_pdi(%struct.sdw_cdns* %0, %struct.sdw_cdns_pdi** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdw_cdns*, align 8
  %7 = alloca %struct.sdw_cdns_pdi**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdw_cdns_pdi*, align 8
  %11 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %6, align 8
  store %struct.sdw_cdns_pdi** %1, %struct.sdw_cdns_pdi*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

15:                                               ; preds = %4
  %16 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %17 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sdw_cdns_pdi* @devm_kcalloc(i32 %18, i32 %19, i32 8, i32 %20)
  store %struct.sdw_cdns_pdi* %21, %struct.sdw_cdns_pdi** %10, align 8
  %22 = load %struct.sdw_cdns_pdi*, %struct.sdw_cdns_pdi** %10, align 8
  %23 = icmp ne %struct.sdw_cdns_pdi* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %52

27:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.sdw_cdns_pdi*, %struct.sdw_cdns_pdi** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %36, i64 %38
  %40 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  %41 = load %struct.sdw_cdns_pdi*, %struct.sdw_cdns_pdi** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %41, i64 %43
  %45 = getelementptr inbounds %struct.sdw_cdns_pdi, %struct.sdw_cdns_pdi* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load %struct.sdw_cdns_pdi*, %struct.sdw_cdns_pdi** %10, align 8
  %51 = load %struct.sdw_cdns_pdi**, %struct.sdw_cdns_pdi*** %7, align 8
  store %struct.sdw_cdns_pdi* %50, %struct.sdw_cdns_pdi** %51, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %24, %14
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.sdw_cdns_pdi* @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
