; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_pgid_analyze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_pgid_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.pgid }
%struct.pgid = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ccw_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pgid* }

@SNID_STATE2_RESVD_ELSE = common dso_local global i64 0, align 8
@channel_subsystems = common dso_local global %struct.TYPE_10__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, %struct.pgid**, i32*, i32*, i32*)* @pgid_analyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgid_analyze(%struct.ccw_device* %0, %struct.pgid** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca %struct.pgid**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pgid*, align 8
  %12 = alloca %struct.pgid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %6, align 8
  store %struct.pgid** %1, %struct.pgid*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %16 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.pgid*, %struct.pgid** %20, align 8
  %22 = getelementptr inbounds %struct.pgid, %struct.pgid* %21, i64 0
  store %struct.pgid* %22, %struct.pgid** %11, align 8
  store %struct.pgid* null, %struct.pgid** %12, align 8
  %23 = load i32*, i32** %8, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %10, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %14, align 4
  store i32 128, i32* %13, align 4
  br label %26

26:                                               ; preds = %74, %5
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %81

29:                                               ; preds = %26
  %30 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %74

39:                                               ; preds = %29
  %40 = load %struct.pgid*, %struct.pgid** %11, align 8
  %41 = getelementptr inbounds %struct.pgid, %struct.pgid* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SNID_STATE2_RESVD_ELSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %39
  %53 = load %struct.pgid*, %struct.pgid** %11, align 8
  %54 = call i64 @pgid_is_reset(%struct.pgid* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %74

61:                                               ; preds = %52
  %62 = load %struct.pgid*, %struct.pgid** %12, align 8
  %63 = icmp ne %struct.pgid* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load %struct.pgid*, %struct.pgid** %11, align 8
  store %struct.pgid* %65, %struct.pgid** %12, align 8
  br label %74

66:                                               ; preds = %61
  %67 = load %struct.pgid*, %struct.pgid** %11, align 8
  %68 = load %struct.pgid*, %struct.pgid** %12, align 8
  %69 = call i64 @pgid_cmp(%struct.pgid* %67, %struct.pgid* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32*, i32** %8, align 8
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73, %64, %56, %38
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  %77 = load %struct.pgid*, %struct.pgid** %11, align 8
  %78 = getelementptr inbounds %struct.pgid, %struct.pgid* %77, i32 1
  store %struct.pgid* %78, %struct.pgid** %11, align 8
  %79 = load i32, i32* %13, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %26

81:                                               ; preds = %26
  %82 = load %struct.pgid*, %struct.pgid** %12, align 8
  %83 = icmp ne %struct.pgid* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @channel_subsystems, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %85, i64 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store %struct.pgid* %88, %struct.pgid** %12, align 8
  br label %89

89:                                               ; preds = %84, %81
  %90 = load %struct.pgid*, %struct.pgid** %12, align 8
  %91 = load %struct.pgid**, %struct.pgid*** %7, align 8
  store %struct.pgid* %90, %struct.pgid** %91, align 8
  ret void
}

declare dso_local i64 @pgid_is_reset(%struct.pgid*) #1

declare dso_local i64 @pgid_cmp(%struct.pgid*, %struct.pgid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
