; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_init_se_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_init_se_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i8*, i32, i32, %struct.se_session*, %struct.target_core_fabric_ops*, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.target_core_fabric_ops = type { i32 }
%struct.se_session = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_init_se_cmd(%struct.se_cmd* %0, %struct.target_core_fabric_ops* %1, %struct.se_session* %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.se_cmd*, align 8
  %9 = alloca %struct.target_core_fabric_ops*, align 8
  %10 = alloca %struct.se_session*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %8, align 8
  store %struct.target_core_fabric_ops* %1, %struct.target_core_fabric_ops** %9, align 8
  store %struct.se_session* %2, %struct.se_session** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %15 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 16
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 15
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 14
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 13
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %27, i32 0, i32 12
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 11
  store i32* null, i32** %31, align 8
  %32 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 10
  store i32* null, i32** %33, align 8
  %34 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %34, i32 0, i32 9
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %37, i32 0, i32 8
  %39 = call i32 @INIT_WORK(i32* %38, i32* null)
  %40 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 7
  %42 = call i32 @kref_init(i32* %41)
  %43 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %9, align 8
  %44 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 6
  store %struct.target_core_fabric_ops* %43, %struct.target_core_fabric_ops** %45, align 8
  %46 = load %struct.se_session*, %struct.se_session** %10, align 8
  %47 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %48 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %47, i32 0, i32 5
  store %struct.se_session* %46, %struct.se_session** %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %54 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %57 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %60 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %62 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %61, i32 0, i32 3
  store i32 0, i32* %62, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
