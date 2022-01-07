; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_free_l2p_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_free_l2p_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.xd_info }
%struct.xd_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xd_free_l2p_tbl(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca %struct.xd_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %6 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %5, i32 0, i32 0
  store %struct.xd_info* %6, %struct.xd_info** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.xd_info*, %struct.xd_info** %3, align 8
  %8 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %61

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %51, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.xd_info*, %struct.xd_info** %3, align 8
  %15 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %12
  %19 = load %struct.xd_info*, %struct.xd_info** %3, align 8
  %20 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @vfree(%struct.TYPE_2__* %26)
  %28 = load %struct.xd_info*, %struct.xd_info** %3, align 8
  %29 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.xd_info*, %struct.xd_info** %3, align 8
  %36 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @vfree(%struct.TYPE_2__* %42)
  %44 = load %struct.xd_info*, %struct.xd_info** %3, align 8
  %45 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %50, align 8
  br label %51

51:                                               ; preds = %18
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %12

54:                                               ; preds = %12
  %55 = load %struct.xd_info*, %struct.xd_info** %3, align 8
  %56 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i32 @vfree(%struct.TYPE_2__* %57)
  %59 = load %struct.xd_info*, %struct.xd_info** %3, align 8
  %60 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %59, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %60, align 8
  br label %61

61:                                               ; preds = %54, %1
  ret void
}

declare dso_local i32 @vfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
