; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_routing_index_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_routing_index_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@SEM_RT_IDX_MASK = common dso_local global i32 0, align 4
@RT_IDX_RS = common dso_local global i32 0, align 4
@RT_IDX_TYPE_SHIFT = common dso_local global i32 0, align 4
@RT_IDX_IDX_SHIFT = common dso_local global i32 0, align 4
@RT_IDX = common dso_local global i32 0, align 4
@RT_IDX_MR = common dso_local global i32 0, align 4
@RT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32*)* @ql_get_routing_index_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_routing_index_registers(%struct.ql_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %14 = load i32, i32* @SEM_RT_IDX_MASK, align 4
  %15 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %89

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %81, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %84

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 8, i32* %9, align 4
  br label %29

28:                                               ; preds = %24
  store i32 16, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %27
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %77, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %30
  %35 = load i32, i32* @RT_IDX_RS, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RT_IDX_TYPE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @RT_IDX_IDX_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %45 = load i32, i32* @RT_IDX, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @ql_write32(%struct.ql_adapter* %44, i32 %45, i32 %46)
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %53, %34
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @RT_IDX_MR, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %55 = load i32, i32* @RT_IDX, align 4
  %56 = call i32 @ql_read32(%struct.ql_adapter* %54, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %48

57:                                               ; preds = %48
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %59 = load i32, i32* @RT_DATA, align 4
  %60 = call i32 @ql_read32(%struct.ql_adapter* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %5, align 8
  br label %77

77:                                               ; preds = %57
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %30

80:                                               ; preds = %30
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %21

84:                                               ; preds = %21
  %85 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %86 = load i32, i32* @SEM_RT_IDX_MASK, align 4
  %87 = call i32 @ql_sem_unlock(%struct.ql_adapter* %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
