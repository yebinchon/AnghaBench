; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_path = type { i32, %struct.tb_path*, i32, i64, i32, i64 }
%struct.tb_path_hop = type { i32, %struct.tb_path_hop*, i32, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_path_free(%struct.tb_path* %0) #0 {
  %2 = alloca %struct.tb_path*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_path_hop*, align 8
  store %struct.tb_path* %0, %struct.tb_path** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %45, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %8 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %5
  %12 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %13 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %12, i32 0, i32 1
  %14 = load %struct.tb_path*, %struct.tb_path** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %14, i64 %16
  %18 = bitcast %struct.tb_path* %17 to %struct.tb_path_hop*
  store %struct.tb_path_hop* %18, %struct.tb_path_hop** %4, align 8
  %19 = load %struct.tb_path_hop*, %struct.tb_path_hop** %4, align 8
  %20 = getelementptr inbounds %struct.tb_path_hop, %struct.tb_path_hop* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.tb_path_hop*, %struct.tb_path_hop** %4, align 8
  %25 = getelementptr inbounds %struct.tb_path_hop, %struct.tb_path_hop* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tb_path_hop*, %struct.tb_path_hop** %4, align 8
  %28 = getelementptr inbounds %struct.tb_path_hop, %struct.tb_path_hop* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @tb_port_release_in_hopid(i64 %26, i32 %29)
  br label %31

31:                                               ; preds = %23, %11
  %32 = load %struct.tb_path_hop*, %struct.tb_path_hop** %4, align 8
  %33 = getelementptr inbounds %struct.tb_path_hop, %struct.tb_path_hop* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.tb_path_hop*, %struct.tb_path_hop** %4, align 8
  %38 = getelementptr inbounds %struct.tb_path_hop, %struct.tb_path_hop* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tb_path_hop*, %struct.tb_path_hop** %4, align 8
  %41 = getelementptr inbounds %struct.tb_path_hop, %struct.tb_path_hop* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @tb_port_release_out_hopid(i64 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %5

48:                                               ; preds = %5
  %49 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %50 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %49, i32 0, i32 1
  %51 = load %struct.tb_path*, %struct.tb_path** %50, align 8
  %52 = bitcast %struct.tb_path* %51 to %struct.tb_path_hop*
  %53 = call i32 @kfree(%struct.tb_path_hop* %52)
  %54 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %55 = bitcast %struct.tb_path* %54 to %struct.tb_path_hop*
  %56 = call i32 @kfree(%struct.tb_path_hop* %55)
  ret void
}

declare dso_local i32 @tb_port_release_in_hopid(i64, i32) #1

declare dso_local i32 @tb_port_release_out_hopid(i64, i32) #1

declare dso_local i32 @kfree(%struct.tb_path_hop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
