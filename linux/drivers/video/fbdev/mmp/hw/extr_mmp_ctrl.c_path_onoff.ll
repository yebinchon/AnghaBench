; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_path_onoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_path_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_path = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32)* }

@.str = private unnamed_addr constant [23 x i8] c"path %s is already %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_path*, i32)* @path_onoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_onoff(%struct.mmp_path* %0, i32 %1) #0 {
  %3 = alloca %struct.mmp_path*, align 8
  %4 = alloca i32, align 4
  store %struct.mmp_path* %0, %struct.mmp_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %6 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %12 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %15 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %18 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @stat_name(i32 %19)
  %21 = call i32 @dev_info(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  br label %79

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %27 = call i32 @path_enabledisable(%struct.mmp_path* %26, i32 1)
  %28 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %29 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %34 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_3__*, i32)* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %41 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %43, align 8
  %45 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %46 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 %44(%struct.TYPE_3__* %47, i32 1)
  br label %49

49:                                               ; preds = %39, %32, %25
  br label %75

50:                                               ; preds = %22
  %51 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %52 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %57 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.TYPE_3__*, i32)* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %64 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %66, align 8
  %68 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %69 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = call i32 %67(%struct.TYPE_3__* %70, i32 0)
  br label %72

72:                                               ; preds = %62, %55, %50
  %73 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %74 = call i32 @path_enabledisable(%struct.mmp_path* %73, i32 0)
  br label %75

75:                                               ; preds = %72, %49
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %78 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %10
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @stat_name(i32) #1

declare dso_local i32 @path_enabledisable(%struct.mmp_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
