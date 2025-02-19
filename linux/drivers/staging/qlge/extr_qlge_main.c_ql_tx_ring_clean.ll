; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_tx_ring_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_tx_ring_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, %struct.tx_ring* }
%struct.tx_ring = type { i32, %struct.tx_ring_desc* }
%struct.tx_ring_desc = type { i32*, i32, i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Freeing lost SKB %p, from queue %d, index %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_tx_ring_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_tx_ring_clean(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca %struct.tx_ring*, align 8
  %4 = alloca %struct.tx_ring_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %71, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %7
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 2
  %16 = load %struct.tx_ring*, %struct.tx_ring** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %16, i64 %18
  store %struct.tx_ring* %19, %struct.tx_ring** %3, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %67, %13
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.tx_ring*, %struct.tx_ring** %3, align 8
  %23 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %20
  %27 = load %struct.tx_ring*, %struct.tx_ring** %3, align 8
  %28 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %27, i32 0, i32 1
  %29 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %29, i64 %31
  store %struct.tx_ring_desc* %32, %struct.tx_ring_desc** %4, align 8
  %33 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %4, align 8
  %34 = icmp ne %struct.tx_ring_desc* %33, null
  br i1 %34, label %35, label %66

35:                                               ; preds = %26
  %36 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %4, align 8
  %37 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %42 = load i32, i32* @ifdown, align 4
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %4, align 8
  %47 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %4, align 8
  %51 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @netif_err(%struct.ql_adapter* %41, i32 %42, i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32* %48, i32 %49, i32 %52)
  %54 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %55 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %4, align 8
  %56 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %4, align 8
  %57 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ql_unmap_send(%struct.ql_adapter* %54, %struct.tx_ring_desc* %55, i32 %58)
  %60 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %4, align 8
  %61 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @dev_kfree_skb(i32* %62)
  %64 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %4, align 8
  %65 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %40, %35, %26
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %20

70:                                               ; preds = %20
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %7

74:                                               ; preds = %7
  ret void
}

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @ql_unmap_send(%struct.ql_adapter*, %struct.tx_ring_desc*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
