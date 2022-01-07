; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_struct = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hvc_struct*)* @hvc_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_push(%struct.hvc_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hvc_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.hvc_struct* %0, %struct.hvc_struct** %3, align 8
  %5 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %6 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %8, align 8
  %10 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %11 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %14 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %17 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %9(i32 %12, i32 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %22
  %31 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %32 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  store i32 0, i32* %2, align 4
  br label %65

33:                                               ; preds = %25
  %34 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %35 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %42

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %39 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %33
  %43 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %44 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %49 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %52 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %57 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @memmove(i32 %50, i32 %55, i32 %58)
  br label %63

60:                                               ; preds = %42
  %61 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %62 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %47
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %30
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @memmove(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
