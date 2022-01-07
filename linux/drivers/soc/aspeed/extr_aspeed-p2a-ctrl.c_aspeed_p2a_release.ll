; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-p2a-ctrl.c_aspeed_p2a_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-p2a-ctrl.c_aspeed_p2a_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.aspeed_p2a_user* }
%struct.aspeed_p2a_user = type { i64, i64*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@P2A_REGION_COUNT = common dso_local global i32 0, align 4
@SCU2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @aspeed_p2a_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_p2a_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aspeed_p2a_user*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %10, align 8
  store %struct.aspeed_p2a_user* %11, %struct.aspeed_p2a_user** %8, align 8
  %12 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %13 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %18 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %21 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, %19
  store i64 %25, i64* %23, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %75, %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @P2A_REGION_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %32 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %39 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, %37
  store i64 %47, i64* %45, align 8
  %48 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %49 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %30
  store i32 1, i32* %7, align 4
  br label %74

59:                                               ; preds = %30
  %60 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %61 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %59, %58
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %26

78:                                               ; preds = %26
  %79 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %80 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SCU2C, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @regmap_update_bits(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %78
  %91 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %92 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %99 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i32 @aspeed_p2a_disable_bridge(%struct.TYPE_6__* %100)
  br label %102

102:                                              ; preds = %97, %90, %78
  %103 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %104 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %103, i32 0, i32 2
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %109 = call i32 @kfree(%struct.aspeed_p2a_user* %108)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @aspeed_p2a_disable_bridge(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.aspeed_p2a_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
