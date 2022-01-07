; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_log_get_old.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_log_get_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i32* }
%struct.log_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*, %struct.log_group*)* @btt_log_get_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btt_log_get_old(%struct.arena_info* %0, %struct.log_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arena_info*, align 8
  %5 = alloca %struct.log_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.arena_info* %0, %struct.arena_info** %4, align 8
  store %struct.log_group* %1, %struct.log_group** %5, align 8
  %9 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %10 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %15 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.log_group*, %struct.log_group** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @log_seq(%struct.log_group* %19, i32 %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = call i32 @cpu_to_le32(i32 1)
  %25 = load %struct.log_group*, %struct.log_group** %5, align 8
  %26 = getelementptr inbounds %struct.log_group, %struct.log_group* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %24, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %89

32:                                               ; preds = %2
  %33 = load %struct.log_group*, %struct.log_group** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @log_seq(%struct.log_group* %33, i32 %34)
  %36 = load %struct.log_group*, %struct.log_group** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @log_seq(%struct.log_group* %36, i32 %37)
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %89

43:                                               ; preds = %32
  %44 = load %struct.log_group*, %struct.log_group** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @log_seq(%struct.log_group* %44, i32 %45)
  %47 = load %struct.log_group*, %struct.log_group** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @log_seq(%struct.log_group* %47, i32 %48)
  %50 = add nsw i32 %46, %49
  %51 = icmp sgt i32 %50, 5
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %89

55:                                               ; preds = %43
  %56 = load %struct.log_group*, %struct.log_group** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @log_seq(%struct.log_group* %56, i32 %57)
  %59 = load %struct.log_group*, %struct.log_group** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @log_seq(%struct.log_group* %59, i32 %60)
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %55
  %64 = load %struct.log_group*, %struct.log_group** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @log_seq(%struct.log_group* %64, i32 %65)
  %67 = load %struct.log_group*, %struct.log_group** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @log_seq(%struct.log_group* %67, i32 %68)
  %70 = sub nsw i32 %66, %69
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %74

73:                                               ; preds = %63
  store i32 1, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %87

75:                                               ; preds = %55
  %76 = load %struct.log_group*, %struct.log_group** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @log_seq(%struct.log_group* %76, i32 %77)
  %79 = load %struct.log_group*, %struct.log_group** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @log_seq(%struct.log_group* %79, i32 %80)
  %82 = sub nsw i32 %78, %81
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 1, i32* %8, align 4
  br label %86

85:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %74
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %52, %40, %23
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @log_seq(%struct.log_group*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
