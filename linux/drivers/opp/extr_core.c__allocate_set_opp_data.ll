; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__allocate_set_opp_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__allocate_set_opp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32, %struct.dev_pm_set_opp_data*, i32 }
%struct.dev_pm_set_opp_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opp_table*)* @_allocate_set_opp_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_allocate_set_opp_data(%struct.opp_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.opp_table*, align 8
  %4 = alloca %struct.dev_pm_set_opp_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.opp_table* %0, %struct.opp_table** %3, align 8
  %7 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  %8 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  %11 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %1
  store i32 16, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.dev_pm_set_opp_data* @kzalloc(i32 %29, i32 %30)
  store %struct.dev_pm_set_opp_data* %31, %struct.dev_pm_set_opp_data** %4, align 8
  %32 = load %struct.dev_pm_set_opp_data*, %struct.dev_pm_set_opp_data** %4, align 8
  %33 = icmp ne %struct.dev_pm_set_opp_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %57

37:                                               ; preds = %21
  %38 = load %struct.dev_pm_set_opp_data*, %struct.dev_pm_set_opp_data** %4, align 8
  %39 = getelementptr inbounds %struct.dev_pm_set_opp_data, %struct.dev_pm_set_opp_data* %38, i64 1
  %40 = bitcast %struct.dev_pm_set_opp_data* %39 to i8*
  %41 = load %struct.dev_pm_set_opp_data*, %struct.dev_pm_set_opp_data** %4, align 8
  %42 = getelementptr inbounds %struct.dev_pm_set_opp_data, %struct.dev_pm_set_opp_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load %struct.dev_pm_set_opp_data*, %struct.dev_pm_set_opp_data** %4, align 8
  %45 = getelementptr inbounds %struct.dev_pm_set_opp_data, %struct.dev_pm_set_opp_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %47, i64 %49
  %51 = load %struct.dev_pm_set_opp_data*, %struct.dev_pm_set_opp_data** %4, align 8
  %52 = getelementptr inbounds %struct.dev_pm_set_opp_data, %struct.dev_pm_set_opp_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.dev_pm_set_opp_data*, %struct.dev_pm_set_opp_data** %4, align 8
  %55 = load %struct.opp_table*, %struct.opp_table** %3, align 8
  %56 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %55, i32 0, i32 1
  store %struct.dev_pm_set_opp_data* %54, %struct.dev_pm_set_opp_data** %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %37, %34, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.dev_pm_set_opp_data* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
