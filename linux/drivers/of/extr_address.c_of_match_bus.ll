; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_match_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_match_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_bus = type { i64 (%struct.device_node*)* }
%struct.device_node = type opaque
%struct.device_node.0 = type { i32 }

@of_busses = common dso_local global %struct.of_bus* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.of_bus* (%struct.device_node.0*)* @of_match_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.of_bus* @of_match_bus(%struct.device_node.0* %0) #0 {
  %2 = alloca %struct.of_bus*, align 8
  %3 = alloca %struct.device_node.0*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node.0* %0, %struct.device_node.0** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.of_bus*, %struct.of_bus** @of_busses, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.of_bus* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %5
  %11 = load %struct.of_bus*, %struct.of_bus** @of_busses, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %11, i64 %13
  %15 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %14, i32 0, i32 0
  %16 = load i64 (%struct.device_node*)*, i64 (%struct.device_node*)** %15, align 8
  %17 = icmp ne i64 (%struct.device_node*)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %10
  %19 = load %struct.of_bus*, %struct.of_bus** @of_busses, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %19, i64 %21
  %23 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %22, i32 0, i32 0
  %24 = load i64 (%struct.device_node*)*, i64 (%struct.device_node*)** %23, align 8
  %25 = load %struct.device_node.0*, %struct.device_node.0** %3, align 8
  %26 = bitcast %struct.device_node.0* %25 to %struct.device_node*
  %27 = call i64 %24(%struct.device_node* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18, %10
  %30 = load %struct.of_bus*, %struct.of_bus** @of_busses, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %30, i64 %32
  store %struct.of_bus* %33, %struct.of_bus** %2, align 8
  br label %40

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %5

38:                                               ; preds = %5
  %39 = call i32 (...) @BUG()
  store %struct.of_bus* null, %struct.of_bus** %2, align 8
  br label %40

40:                                               ; preds = %38, %29
  %41 = load %struct.of_bus*, %struct.of_bus** %2, align 8
  ret %struct.of_bus* %41
}

declare dso_local i32 @ARRAY_SIZE(%struct.of_bus*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
