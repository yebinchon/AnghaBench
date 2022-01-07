; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c___tb_path_deactivate_hops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c___tb_path_deactivate_hops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_path = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"hop deactivation failed for hop %d, index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_path*, i32)* @__tb_path_deactivate_hops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tb_path_deactivate_hops(%struct.tb_path* %0, i32 %1) #0 {
  %3 = alloca %struct.tb_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_path* %0, %struct.tb_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %62, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %11 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %8
  %15 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %16 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %24 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %32 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @__tb_path_deactivate_hop(i32 %22, i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %14
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %44 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %53 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @tb_port_warn(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %59)
  br label %61

61:                                               ; preds = %42, %37, %14
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %8

65:                                               ; preds = %8
  ret void
}

declare dso_local i32 @__tb_path_deactivate_hop(i32, i32, i32) #1

declare dso_local i32 @tb_port_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
