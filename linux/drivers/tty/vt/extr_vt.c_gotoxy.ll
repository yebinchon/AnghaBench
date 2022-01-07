; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_gotoxy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_gotoxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32)* @gotoxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gotoxy(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  br label %32

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %31

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %20
  br label %32

32:                                               ; preds = %31, %11
  %33 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  %41 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %48

44:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  %45 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %55 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  br label %70

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %52
  %71 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %75 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %78 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %76, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %73, %81
  %83 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %82, %87
  %89 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %90 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %89, i32 0, i32 9
  store i64 %88, i64* %90, align 8
  %91 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %92 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %91, i32 0, i32 7
  store i64 0, i64* %92, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
