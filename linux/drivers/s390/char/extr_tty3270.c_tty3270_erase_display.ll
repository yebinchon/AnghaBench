; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_erase_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_erase_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*, i32)* @tty3270_erase_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_erase_display(%struct.tty3270* %0, i32 %1) #0 {
  %3 = alloca %struct.tty3270*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tty3270* %0, %struct.tty3270** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %10 = call i32 @tty3270_erase_line(%struct.tty3270* %9, i32 0)
  %11 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %12 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %34, %8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %18 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 2
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %25 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @tty3270_convert_line(%struct.tty3270* %31, i32 %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %15

37:                                               ; preds = %15
  br label %94

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %45 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %50 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @tty3270_convert_line(%struct.tty3270* %56, i32 %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %64 = call i32 @tty3270_erase_line(%struct.tty3270* %63, i32 1)
  br label %93

65:                                               ; preds = %38
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %92

68:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %72 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 2
  %76 = icmp slt i32 %70, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %69
  %78 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %79 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @tty3270_convert_line(%struct.tty3270* %85, i32 %86)
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %69

91:                                               ; preds = %69
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92, %62
  br label %94

94:                                               ; preds = %93, %37
  %95 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %96 = call i32 @tty3270_rebuild_update(%struct.tty3270* %95)
  ret void
}

declare dso_local i32 @tty3270_erase_line(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_convert_line(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_rebuild_update(%struct.tty3270*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
