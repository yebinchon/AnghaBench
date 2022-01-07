; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_remove_coupling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_remove_coupling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.coupling_desc }
%struct.coupling_desc = type { i32, %struct.regulator_dev**, i32, %struct.regulator_coupler* }
%struct.regulator_coupler = type { i32 (%struct.regulator_coupler*, %struct.regulator_dev*)* }

@.str = private unnamed_addr constant [35 x i8] c"failed to detach from coupler: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulator_dev*)* @regulator_remove_coupling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regulator_remove_coupling(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.regulator_coupler*, align 8
  %4 = alloca %struct.coupling_desc*, align 8
  %5 = alloca %struct.coupling_desc*, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %14, i32 0, i32 3
  %16 = load %struct.regulator_coupler*, %struct.regulator_coupler** %15, align 8
  store %struct.regulator_coupler* %16, %struct.regulator_coupler** %3, align 8
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %18 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %17, i32 0, i32 0
  store %struct.coupling_desc* %18, %struct.coupling_desc** %5, align 8
  %19 = load %struct.coupling_desc*, %struct.coupling_desc** %5, align 8
  %20 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %22

22:                                               ; preds = %88, %1
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %91

26:                                               ; preds = %22
  %27 = load %struct.coupling_desc*, %struct.coupling_desc** %5, align 8
  %28 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %27, i32 0, i32 1
  %29 = load %struct.regulator_dev**, %struct.regulator_dev*** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %29, i64 %31
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %32, align 8
  store %struct.regulator_dev* %33, %struct.regulator_dev** %7, align 8
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %35 = icmp ne %struct.regulator_dev* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %88

37:                                               ; preds = %26
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %39 = call i32 @regulator_lock(%struct.regulator_dev* %38)
  %40 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %41 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %40, i32 0, i32 0
  store %struct.coupling_desc* %41, %struct.coupling_desc** %4, align 8
  %42 = load %struct.coupling_desc*, %struct.coupling_desc** %4, align 8
  %43 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %72, %37
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load %struct.coupling_desc*, %struct.coupling_desc** %4, align 8
  %51 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %50, i32 0, i32 1
  %52 = load %struct.regulator_dev**, %struct.regulator_dev*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %52, i64 %54
  %56 = load %struct.regulator_dev*, %struct.regulator_dev** %55, align 8
  store %struct.regulator_dev* %56, %struct.regulator_dev** %6, align 8
  %57 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %58 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %59 = icmp eq %struct.regulator_dev* %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %49
  %61 = load %struct.coupling_desc*, %struct.coupling_desc** %4, align 8
  %62 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %61, i32 0, i32 1
  %63 = load %struct.regulator_dev**, %struct.regulator_dev*** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %63, i64 %65
  store %struct.regulator_dev* null, %struct.regulator_dev** %66, align 8
  %67 = load %struct.coupling_desc*, %struct.coupling_desc** %4, align 8
  %68 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  br label %75

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %45

75:                                               ; preds = %60, %45
  %76 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %77 = call i32 @regulator_unlock(%struct.regulator_dev* %76)
  %78 = load %struct.coupling_desc*, %struct.coupling_desc** %5, align 8
  %79 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %78, i32 0, i32 1
  %80 = load %struct.regulator_dev**, %struct.regulator_dev*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %80, i64 %82
  store %struct.regulator_dev* null, %struct.regulator_dev** %83, align 8
  %84 = load %struct.coupling_desc*, %struct.coupling_desc** %5, align 8
  %85 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %75, %36
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %22

91:                                               ; preds = %22
  %92 = load %struct.regulator_coupler*, %struct.regulator_coupler** %3, align 8
  %93 = icmp ne %struct.regulator_coupler* %92, null
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  %95 = load %struct.regulator_coupler*, %struct.regulator_coupler** %3, align 8
  %96 = getelementptr inbounds %struct.regulator_coupler, %struct.regulator_coupler* %95, i32 0, i32 0
  %97 = load i32 (%struct.regulator_coupler*, %struct.regulator_dev*)*, i32 (%struct.regulator_coupler*, %struct.regulator_dev*)** %96, align 8
  %98 = icmp ne i32 (%struct.regulator_coupler*, %struct.regulator_dev*)* %97, null
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = load %struct.regulator_coupler*, %struct.regulator_coupler** %3, align 8
  %101 = getelementptr inbounds %struct.regulator_coupler, %struct.regulator_coupler* %100, i32 0, i32 0
  %102 = load i32 (%struct.regulator_coupler*, %struct.regulator_dev*)*, i32 (%struct.regulator_coupler*, %struct.regulator_dev*)** %101, align 8
  %103 = load %struct.regulator_coupler*, %struct.regulator_coupler** %3, align 8
  %104 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %105 = call i32 %102(%struct.regulator_coupler* %103, %struct.regulator_dev* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @rdev_err(%struct.regulator_dev* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %99
  br label %113

113:                                              ; preds = %112, %94, %91
  %114 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %115 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %115, i32 0, i32 1
  %117 = load %struct.regulator_dev**, %struct.regulator_dev*** %116, align 8
  %118 = call i32 @kfree(%struct.regulator_dev** %117)
  %119 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %120 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.coupling_desc, %struct.coupling_desc* %120, i32 0, i32 1
  store %struct.regulator_dev** null, %struct.regulator_dev*** %121, align 8
  ret void
}

declare dso_local i32 @regulator_lock(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_unlock(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.regulator_dev**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
