; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_tunnel_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_tunnel = type { i32, %struct.TYPE_2__**, i32 (%struct.tb_tunnel*, i32)* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"deactivating\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_tunnel_deactivate(%struct.tb_tunnel* %0) #0 {
  %2 = alloca %struct.tb_tunnel*, align 8
  %3 = alloca i32, align 4
  store %struct.tb_tunnel* %0, %struct.tb_tunnel** %2, align 8
  %4 = load %struct.tb_tunnel*, %struct.tb_tunnel** %2, align 8
  %5 = call i32 @tb_tunnel_dbg(%struct.tb_tunnel* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.tb_tunnel*, %struct.tb_tunnel** %2, align 8
  %7 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %6, i32 0, i32 2
  %8 = load i32 (%struct.tb_tunnel*, i32)*, i32 (%struct.tb_tunnel*, i32)** %7, align 8
  %9 = icmp ne i32 (%struct.tb_tunnel*, i32)* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.tb_tunnel*, %struct.tb_tunnel** %2, align 8
  %12 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %11, i32 0, i32 2
  %13 = load i32 (%struct.tb_tunnel*, i32)*, i32 (%struct.tb_tunnel*, i32)** %12, align 8
  %14 = load %struct.tb_tunnel*, %struct.tb_tunnel** %2, align 8
  %15 = call i32 %13(%struct.tb_tunnel* %14, i32 0)
  br label %16

16:                                               ; preds = %10, %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %53, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.tb_tunnel*, %struct.tb_tunnel** %2, align 8
  %20 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.tb_tunnel*, %struct.tb_tunnel** %2, align 8
  %25 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %23
  %33 = load %struct.tb_tunnel*, %struct.tb_tunnel** %2, align 8
  %34 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load %struct.tb_tunnel*, %struct.tb_tunnel** %2, align 8
  %45 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @tb_path_deactivate(%struct.TYPE_2__* %50)
  br label %52

52:                                               ; preds = %43, %32, %23
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %17

56:                                               ; preds = %17
  ret void
}

declare dso_local i32 @tb_tunnel_dbg(%struct.tb_tunnel*, i8*) #1

declare dso_local i32 @tb_path_deactivate(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
