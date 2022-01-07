; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_est.c_uwb_est_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_est.c_uwb_est_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64, %struct.uwb_est_entry* }
%struct.uwb_est_entry = type { i32 }

@uwb_est_lock = common dso_local global i32 0, align 4
@uwb_est_used = common dso_local global i32 0, align 4
@uwb_est_size = common dso_local global i32 0, align 4
@uwb_est = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_est_register(i32 %0, i32 %1, i64 %2, i64 %3, %struct.uwb_est_entry* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.uwb_est_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.uwb_est_entry* %4, %struct.uwb_est_entry** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* %13, align 8
  %17 = call i32 @write_lock_irqsave(i32* @uwb_est_lock, i64 %16)
  %18 = load i32, i32* @uwb_est_used, align 4
  %19 = load i32, i32* @uwb_est_size, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = call i32 (...) @uwb_est_grow()
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %118

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %6
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %61, %27
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @uwb_est_used, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %34 = load i32, i32* %14, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %52 = load i32, i32* %14, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %64

60:                                               ; preds = %50, %41, %32
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %28

64:                                               ; preds = %59, %28
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @uwb_est_used, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %70 = load i32, i32* %14, align 4
  %71 = add i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %75 = load i32, i32* %14, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = load i32, i32* @uwb_est_used, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sub i32 %78, %79
  %81 = call i32 @memmove(%struct.TYPE_4__* %73, %struct.TYPE_4__* %77, i32 %80)
  br label %82

82:                                               ; preds = %68, %64
  %83 = load i32, i32* %7, align 4
  %84 = shl i32 %83, 8
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %88 = load i32, i32* %14, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %94 = load i32, i32* %14, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i64 %92, i64* %97, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %100 = load i32, i32* %14, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i64 %98, i64* %103, align 8
  %104 = load %struct.uwb_est_entry*, %struct.uwb_est_entry** %11, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %106 = load i32, i32* %14, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 4
  store %struct.uwb_est_entry* %104, %struct.uwb_est_entry** %109, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uwb_est, align 8
  %112 = load i32, i32* %14, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  store i64 %110, i64* %115, align 8
  %116 = load i32, i32* @uwb_est_used, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* @uwb_est_used, align 4
  br label %118

118:                                              ; preds = %82, %25
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @write_unlock_irqrestore(i32* @uwb_est_lock, i64 %119)
  %121 = load i32, i32* %15, align 4
  ret i32 %121
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uwb_est_grow(...) #1

declare dso_local i32 @memmove(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
