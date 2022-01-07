; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_alloc_mem_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_alloc_mem_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"RX resource allocation failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"TX resource allocation failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_alloc_mem_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_alloc_mem_resources(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %6 = call i64 @ql_alloc_shadow_space(%struct.ql_adapter* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %36, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i64 @ql_alloc_rx_resources(%struct.ql_adapter* %19, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %30 = load i32, i32* @ifup, align 4
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @netif_err(%struct.ql_adapter* %29, i32 %30, i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %68

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %12

39:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %64, %39
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i64 @ql_alloc_tx_resources(%struct.ql_adapter* %47, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %58 = load i32, i32* @ifup, align 4
  %59 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @netif_err(%struct.ql_adapter* %57, i32 %58, i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %68

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %40

67:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %73

68:                                               ; preds = %56, %28
  %69 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %70 = call i32 @ql_free_mem_resources(%struct.ql_adapter* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %67, %8
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @ql_alloc_shadow_space(%struct.ql_adapter*) #1

declare dso_local i64 @ql_alloc_rx_resources(%struct.ql_adapter*, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i64 @ql_alloc_tx_resources(%struct.ql_adapter*, i32*) #1

declare dso_local i32 @ql_free_mem_resources(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
