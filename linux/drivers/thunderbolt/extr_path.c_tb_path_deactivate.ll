; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_path = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"trying to deactivate an inactive path\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"deactivating %s path from %llx:%x to %llx:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_path_deactivate(%struct.tb_path* %0) #0 {
  %2 = alloca %struct.tb_path*, align 8
  store %struct.tb_path* %0, %struct.tb_path** %2, align 8
  %3 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %4 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %9 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @tb_WARN(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %70

12:                                               ; preds = %1
  %13 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %14 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %17 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %20 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @tb_route(i32 %26)
  %28 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %29 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %37 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %40 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @tb_route(i32 %48)
  %50 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %51 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %54 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @tb_dbg(i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %27, i32 %35, i32 %49, i32 %62)
  %64 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %65 = call i32 @__tb_path_deactivate_hops(%struct.tb_path* %64, i32 0)
  %66 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %67 = call i32 @__tb_path_deallocate_nfc(%struct.tb_path* %66, i32 0)
  %68 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %69 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @tb_WARN(i32, i8*) #1

declare dso_local i32 @tb_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tb_route(i32) #1

declare dso_local i32 @__tb_path_deactivate_hops(%struct.tb_path*, i32) #1

declare dso_local i32 @__tb_path_deallocate_nfc(%struct.tb_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
