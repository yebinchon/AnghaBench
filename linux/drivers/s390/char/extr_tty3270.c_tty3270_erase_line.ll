; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_erase_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_erase_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, i32, %struct.tty3270_line* }
%struct.tty3270_line = type { i32, %struct.tty3270_cell* }
%struct.tty3270_cell = type { i8, i32, i32 }

@TAX_RESET = common dso_local global i32 0, align 4
@TAC_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*, i32)* @tty3270_erase_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_erase_line(%struct.tty3270* %0, i32 %1) #0 {
  %3 = alloca %struct.tty3270*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty3270_line*, align 8
  %6 = alloca %struct.tty3270_cell*, align 8
  %7 = alloca i32, align 4
  store %struct.tty3270* %0, %struct.tty3270** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %9 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %8, i32 0, i32 2
  %10 = load %struct.tty3270_line*, %struct.tty3270_line** %9, align 8
  %11 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %12 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %10, i64 %14
  store %struct.tty3270_line* %15, %struct.tty3270_line** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %20 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %23 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %76

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %31 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %36 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %35, i32 0, i32 1
  %37 = load %struct.tty3270_cell*, %struct.tty3270_cell** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %37, i64 %39
  store %struct.tty3270_cell* %40, %struct.tty3270_cell** %6, align 8
  %41 = load %struct.tty3270_cell*, %struct.tty3270_cell** %6, align 8
  %42 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %41, i32 0, i32 0
  store i8 32, i8* %42, align 4
  %43 = load i32, i32* @TAX_RESET, align 4
  %44 = load %struct.tty3270_cell*, %struct.tty3270_cell** %6, align 8
  %45 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @TAC_RESET, align 4
  %47 = load %struct.tty3270_cell*, %struct.tty3270_cell** %6, align 8
  %48 = getelementptr inbounds %struct.tty3270_cell, %struct.tty3270_cell* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %54 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %57 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %62 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %66 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %52
  br label %75

68:                                               ; preds = %24
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.tty3270_line*, %struct.tty3270_line** %5, align 8
  %73 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %67
  br label %76

76:                                               ; preds = %75, %18
  %77 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %78 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %79 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @tty3270_convert_line(%struct.tty3270* %77, i32 %80)
  ret void
}

declare dso_local i32 @tty3270_convert_line(%struct.tty3270*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
