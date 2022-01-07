; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_write_8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_write_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @w1_write_8(%struct.w1_master* %0, i32 %1) #0 {
  %3 = alloca %struct.w1_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.w1_master* %0, %struct.w1_master** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %7 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = icmp ne i32 (i32, i32)* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %14 = call i32 @w1_pre_write(%struct.w1_master* %13)
  %15 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %16 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %21 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %19(i32 %24, i32 %25)
  br label %48

27:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %36 = call i32 @w1_pre_write(%struct.w1_master* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %39, %40
  %42 = and i32 %41, 1
  %43 = call i32 @w1_touch_bit(%struct.w1_master* %38, i32 %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %28

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %12
  %49 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %50 = call i32 @w1_post_write(%struct.w1_master* %49)
  ret void
}

declare dso_local i32 @w1_pre_write(%struct.w1_master*) #1

declare dso_local i32 @w1_touch_bit(%struct.w1_master*, i32) #1

declare dso_local i32 @w1_post_write(%struct.w1_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
