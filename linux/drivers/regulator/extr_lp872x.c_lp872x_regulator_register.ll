; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_regulator_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_regulator_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32 }
%struct.lp872x = type { i32, i64, i32, i32 }
%struct.regulator_config = type { i32, %struct.lp872x*, i32, i32 }
%struct.regulator_dev = type { i32 }

@LP8720 = common dso_local global i64 0, align 8
@lp8720_regulator_desc = common dso_local global %struct.regulator_desc* null, align 8
@lp8725_regulator_desc = common dso_local global %struct.regulator_desc* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"regulator register err\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp872x*)* @lp872x_regulator_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp872x_regulator_register(%struct.lp872x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp872x*, align 8
  %4 = alloca %struct.regulator_desc*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.lp872x* %0, %struct.lp872x** %3, align 8
  %8 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %65, %1
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %12 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %9
  %16 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %17 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LP8720, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.regulator_desc*, %struct.regulator_desc** @lp8720_regulator_desc, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %22, i64 %24
  br label %31

26:                                               ; preds = %15
  %27 = load %struct.regulator_desc*, %struct.regulator_desc** @lp8725_regulator_desc, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %27, i64 %29
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi %struct.regulator_desc* [ %25, %21 ], [ %30, %26 ]
  store %struct.regulator_desc* %32, %struct.regulator_desc** %4, align 8
  %33 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %34 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %38 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %41 = call i32 @lp872x_find_regulator_init_data(i32 %39, %struct.lp872x* %40)
  %42 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %44 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store %struct.lp872x* %43, %struct.lp872x** %44, align 8
  %45 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %46 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %50 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %53 = call %struct.regulator_dev* @devm_regulator_register(i32 %51, %struct.regulator_desc* %52, %struct.regulator_config* %5)
  store %struct.regulator_dev* %53, %struct.regulator_dev** %6, align 8
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %55 = call i64 @IS_ERR(%struct.regulator_dev* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %31
  %58 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %59 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %63 = call i32 @PTR_ERR(%struct.regulator_dev* %62)
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %31
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %9

68:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lp872x_find_regulator_init_data(i32, %struct.lp872x*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32, %struct.regulator_desc*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
