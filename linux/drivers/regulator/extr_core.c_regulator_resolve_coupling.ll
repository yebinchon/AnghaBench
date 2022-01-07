; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_resolve_coupling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_resolve_coupling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.coupling_desc }
%struct.coupling_desc = type { i32, i32, %struct.regulator_dev**, %struct.regulator_coupler* }
%struct.regulator_coupler = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"coupler mismatch with %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulator_dev*)* @regulator_resolve_coupling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regulator_resolve_coupling(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.regulator_coupler*, align 8
  %4 = alloca %struct.coupling_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %9, i32 0, i32 3
  %11 = load %struct.regulator_coupler*, %struct.regulator_coupler** %10, align 8
  store %struct.regulator_coupler* %11, %struct.regulator_coupler** %3, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %12, i32 0, i32 0
  store %struct.coupling_desc* %13, %struct.coupling_desc** %4, align 8
  %14 = load %struct.coupling_desc*, %struct.coupling_desc** %4, align 8
  %15 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %68, %1
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %17
  %22 = load %struct.coupling_desc*, %struct.coupling_desc** %4, align 8
  %23 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %22, i32 0, i32 2
  %24 = load %struct.regulator_dev**, %struct.regulator_dev*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %24, i64 %26
  %28 = load %struct.regulator_dev*, %struct.regulator_dev** %27, align 8
  %29 = icmp ne %struct.regulator_dev* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %68

31:                                               ; preds = %21
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call %struct.regulator_dev* @of_parse_coupled_regulator(%struct.regulator_dev* %32, i32 %34)
  store %struct.regulator_dev* %35, %struct.regulator_dev** %6, align 8
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %37 = icmp ne %struct.regulator_dev* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %68

39:                                               ; preds = %31
  %40 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %41 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %41, i32 0, i32 3
  %43 = load %struct.regulator_coupler*, %struct.regulator_coupler** %42, align 8
  %44 = load %struct.regulator_coupler*, %struct.regulator_coupler** %3, align 8
  %45 = icmp ne %struct.regulator_coupler* %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %49 = call i32 @rdev_get_name(%struct.regulator_dev* %48)
  %50 = call i32 @rdev_err(%struct.regulator_dev* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %71

51:                                               ; preds = %39
  %52 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %53 = call i32 @regulator_lock(%struct.regulator_dev* %52)
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %55 = load %struct.coupling_desc*, %struct.coupling_desc** %4, align 8
  %56 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %55, i32 0, i32 2
  %57 = load %struct.regulator_dev**, %struct.regulator_dev*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %57, i64 %59
  store %struct.regulator_dev* %54, %struct.regulator_dev** %60, align 8
  %61 = load %struct.coupling_desc*, %struct.coupling_desc** %4, align 8
  %62 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %66 = call i32 @regulator_unlock(%struct.regulator_dev* %65)
  %67 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  call void @regulator_resolve_coupling(%struct.regulator_dev* %67)
  br label %68

68:                                               ; preds = %51, %38, %30
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %17

71:                                               ; preds = %46, %17
  ret void
}

declare dso_local %struct.regulator_dev* @of_parse_coupled_regulator(%struct.regulator_dev*, i32) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*, i32) #1

declare dso_local i32 @rdev_get_name(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_lock(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_unlock(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
